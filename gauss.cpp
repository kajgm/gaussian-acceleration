/* Gaussian elimination without pivoting.
 */

#include "gauss.h"
#include "stdio.h"

// void gauss(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
// {
//   int norm, row, col; /* Normalization row, and zeroing
//                        * element row and col */
//   float multiplier;

//   /* Gaussian elimination */
//   for (norm = 0; norm < SIZE - 1; norm++)
//   {
//     for (row = norm + 1; row < SIZE; row++)
//     {
//       multiplier = A[row * SIZE + norm] / A[norm * SIZE + norm];
//       for (col = norm; col < SIZE; col++)
//       {
//         A[row * SIZE + col] -= A[norm * SIZE + col] * multiplier;
//       }
//       B[row] -= B[norm] * multiplier;
//     }
//   }
//   /* (Diagonal elements are not normalized to 1.  This is treated in back
//    * substitution.)
//    */

//   /* Back substitution */
//   for (row = SIZE - 1; row >= 0; row--)
//   {
//     X[row] = B[row];
//     for (col = SIZE - 1; col > row; col--)
//     {
//       X[row] -= A[row * SIZE + col] * X[col];
//     }
//     X[row] /= A[row * SIZE + row];
//   }
// }

// packed float type: used to help maximize BRAM Utilization by increasing data-width
p16x32f pmul(float a, p16x32f b, int col, int col_inner, int norm)
{
  #pragma HLS inline
  p16x32f c{};
  for (int i = 0; i < PACK_COUNT; i++){
    #pragma HLS unroll
     if (col + col_inner * PACK_COUNT + i >= norm)
     {
		float t = a * b.f[i]; // temporary variable is used so that impl type can be specified
		#pragma HLS bind_op variable=t op=fmul impl=fulldsp // allow tradeoff of DSP units to stay within 60% utilization
		c.f[i] = t;
     }
  }
  return c;
}

p16x32f psub(p16x32f a, p16x32f b, int col, int col_inner, int norm)
{
  #pragma HLS inline
  p16x32f c{};
  for (int i = 0; i < PACK_COUNT; i++){
    #pragma HLS unroll
      if (col + col_inner * PACK_COUNT + i >= norm)
      {
    	  c.f[i] = a.f[i] - b.f[i];
      }
  }
  return c;
}


void store_A(float A[SIZE * SIZE],
             p16x32f bufA[TILE_SIZE][TILE_SIZE / PACK_COUNT],
             int row,
             int col)
{
#pragma HLS inline off
  int row_inner, col_inner;
  int current_row;

store_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
    current_row = row + row_inner;
  store_col_inner:
    for (col_inner = 0; col_inner < TILE_SIZE / PACK_COUNT; col_inner++)
    {
#pragma HLS pipeline II = 1
      p16x32f packed = bufA[row_inner][col_inner];
      for (int i = 0; i < PACK_COUNT; i++) {
        #pragma HLS unroll
        A[current_row * SIZE + col + col_inner * PACK_COUNT + i] = packed.f[i];
      }
    }
  }
}

void store_B(float B[SIZE],
             float bufB[TILE_SIZE],
             int row)
{
#pragma HLS inline off
  int row_inner;
  int current_row;
store_b_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
    {
#pragma HLS pipeline II = 1
      current_row = row + row_inner;
      B[current_row] = bufB[row_inner];
    }
}

void compute_A(p16x32f bufA[TILE_SIZE][TILE_SIZE / PACK_COUNT],
               p16x32f bufNormLine[TILE_SIZE / PACK_COUNT],
               float bufMultipliers[TILE_SIZE],
               int norm,
               int row,
               int col)
{
#pragma HLS inline off
  int row_inner, col_inner;
  int current_row;
  float multiplier;
  float tempA;

compute_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
#pragma HLS pipeline II = 1
    current_row = row + row_inner;
    if (current_row >= norm + 1)
    {
      multiplier = bufMultipliers[row_inner];
      compute_col_inner:
        for (col_inner = 0; col_inner < TILE_SIZE / PACK_COUNT; col_inner++)
        {
          #pragma HLS unroll
          p16x32f x{};
          p16x32f temp{};

//          if (current_col >= norm)
//          {
            x = pmul(multiplier, bufNormLine[col_inner], col, col_inner, norm);
            temp = bufA[row_inner][col_inner];

            bufA[row_inner][col_inner] = psub(temp, x, col, col_inner, norm);
//          }
        }
      }
  }
}

void compute_B(float bufB[TILE_SIZE],
               float bufMultipliers[TILE_SIZE],
               int norm,
               float b_norm_element,
               int row)
{
#pragma HLS inline off
  int row_inner, col_inner;
  int current_row, current_col;
  float multiplier;

compute_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
    current_row = row + row_inner;
    if (current_row >= norm + 1)
    {
      bufB[row_inner] -= b_norm_element * bufMultipliers[row_inner];
    }
  }
}

void load_bufferA(float A[SIZE * SIZE], p16x32f bufA[TILE_SIZE][TILE_SIZE / PACK_COUNT],
            int row,
            int col)
{
#pragma HLS inline off
  int row_inner, col_inner;
  int current_row;

load_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
    current_row = row + row_inner;
  load_col_inner:
    for (col_inner = 0; col_inner < TILE_SIZE / PACK_COUNT; col_inner++)
    {
#pragma HLS pipeline II = 1

      p16x32f packed{};
      for (int i = 0; i < PACK_COUNT; i++) {
        #pragma HLS unroll
        packed.f[i] = A[current_row * SIZE + col + col_inner * PACK_COUNT + i];
      }

      bufA[row_inner][col_inner] = packed;
    }
  }
}

void load_bufferB(float B[SIZE],
            float bufB[TILE_SIZE],
            int row)
{
#pragma HLS inline off
  int row_inner;
  int current_row;

load_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
#pragma HLS pipeline II = 1
    current_row = row + row_inner;
    bufB[row_inner] = B[current_row];
  }
}

void load_norm_line(float norm_line[SIZE],
                    p16x32f bufNormLine[TILE_SIZE / PACK_COUNT],
                    int col)
{
#pragma HLS inline off
  int col_inner;

load_col_inner:
  for (col_inner = 0; col_inner < TILE_SIZE / PACK_COUNT; col_inner++)
  {
#pragma HLS pipeline II = 1
    p16x32f packed{};
    for (int i = 0; i < PACK_COUNT; i++) {
      #pragma HLS unroll
      packed.f[i] = norm_line[col + col_inner * PACK_COUNT + i];
    }

    bufNormLine[col_inner] = packed;    
  }
}

void load_multipliers(float multipliers[SIZE], float bufferMultipliers[TILE_SIZE], int row)
{
#pragma HLS inline off
  int row_inner;
  int current_row;

load_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
#pragma HLS pipeline II = 1
    current_row = row + row_inner;
    bufferMultipliers[row_inner] = multipliers[current_row];
  }
}

void load_B(float B[SIZE], \
    float bufferB[TILE_SIZE], \
    float multipliers[SIZE], \
    float bufferMultipliers[TILE_SIZE], \
    int row)
{
  // #pragma HLS dataflow

  load_bufferB(B, bufferB, row);
  load_multipliers(multipliers, bufferMultipliers, row);
}

void load_A(float A[SIZE * SIZE], \
    p16x32f bufferA[TILE_SIZE][TILE_SIZE / PACK_COUNT], \
    float norm_line[SIZE], \
    p16x32f bufferNormLine[TILE_SIZE / PACK_COUNT], \
    int row, int col)
{
  // #pragma HLS dataflow

  load_bufferA(A, bufferA, row, col);
  load_norm_line(norm_line, bufferNormLine, col);
}

void sub_gauss(float A[SIZE * SIZE], float B[SIZE], int norm,
               float b_norm_element, float norm_line[SIZE],
               float multipliers[SIZE])
{
#pragma HLS inline off
  int row, col;
  p16x32f bufferA[TILE_SIZE][TILE_SIZE / PACK_COUNT];
  float bufferB[TILE_SIZE];
  p16x32f bufferNormLine[TILE_SIZE / PACK_COUNT];
  float bufferMultipliers[TILE_SIZE];

      // aggregate is used to ensure vitis treats the packed types as simply one large data type
#pragma HLS aggregate variable=bufferA
#pragma HLS aggregate variable=bufferNormLine

#pragma HLS array_partition variable = bufferA complete dim = 2
#pragma HLS array_partition variable = bufferB complete
#pragma HLS array_partition variable = bufferNormLine complete
#pragma HLS array_partition variable = bufferMultipliers complete

row_tile:
  for (row = 0; row < SIZE; row += TILE_SIZE)
  {
    load_B(B, bufferB, multipliers, bufferMultipliers, row);

    compute_B(bufferB, bufferMultipliers,
              norm, b_norm_element,
              row);
    
    store_B(B, bufferB, row);

  col_tile:
    for (col = 0; col < SIZE; col += TILE_SIZE)
    {
      load_A(A, bufferA, norm_line, bufferNormLine, row, col);

      compute_A(bufferA, bufferNormLine,
                bufferMultipliers,
                norm, row, col);

      store_A(A, bufferA,
              row, col);
    }
  }
}

void back_substitution(float A[SIZE * SIZE], float B[SIZE], float X[SIZE], int row)
{
#pragma HLS inline off
  int col, col_inner;
  int current_col;
  X[row] = B[row];

  back_col_tiled:
    for (col = SIZE - 1; col >= 0; col -= TILE_SIZE)
    {
      back_col_inner:
        for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
        {
          current_col = col - col_inner;
          if (current_col > row)
          {
            X[row] -= A[row * SIZE + current_col] * X[current_col];
          }
        }
    }

  X[row] /= A[row * SIZE + row];

}

void gauss(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
{
  int norm, row, col; /* Normalization row, and zeroing
                       * element row and col */
  float multiplier;
  float norm_line[SIZE];
  float multipliers[SIZE];
  float a_norm_element;
  float b_norm_element;

/* Gaussian elimination */
norm:
  for (norm = 0; norm < SIZE - 1; norm++)
  {
    a_norm_element = A[norm * SIZE + norm];
    b_norm_element = B[norm];

    norm_line:
      for (int i = 0; i < SIZE; i++)
      {
#pragma HLS pipeline II = 1
        norm_line[i] = A[norm * SIZE + i];
      }

    multipliers:
      for (int i = 0; i < SIZE; i++)
      {
#pragma HLS pipeline II = 1
        multipliers[i] = A[i * SIZE + norm] / a_norm_element;
      }

    sub_gauss(A, B, norm, b_norm_element, norm_line, multipliers);
  }
/* (Diagonal elements are not normalized to 1.  This is treated in back
 * substitution.)
 */

/* Back substitution */
back_row:
  for (row = SIZE - 1; row >= 0; row--)
  {
    back_substitution(A, B, X, row);
  }
}
