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

void store_A(float A[SIZE * SIZE],
             float bufA[TILE_SIZE][TILE_SIZE],
             float norm,
             int row,
             int col)
{
#pragma HLS inline off
  int row_inner, col_inner;
  int current_row, current_col;

store_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
    current_row = row + row_inner;
  store_col_inner:
    for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
    {
#pragma HLS pipeline II = 1
      current_col = col + col_inner;
      if (current_row >= norm + 1 && current_col >= norm)
      {
        A[current_row * SIZE + current_col] = bufA[row_inner][col_inner];
      }
    }
  }
}

void store_B(float B[SIZE],
             float bufB[TILE_SIZE],
             float norm,
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

void compute_A(float bufA[TILE_SIZE][TILE_SIZE],
               float bufNormLine[TILE_SIZE],
               float bufMultipliers[TILE_SIZE],
               int norm,
               int row,
               int col)
{
#pragma HLS inline off
  int row_inner, col_inner;
  int current_row, current_col;
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
      for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
      {
        current_col = col + col_inner;
        if (current_col >= norm)
        {
          bufA[row_inner][col_inner] -= bufNormLine[col_inner] * multiplier;
        }
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
#pragma HLS unroll
    current_row = row + row_inner;
    if (current_row >= norm + 1)
    {
      bufB[row_inner] -= b_norm_element * bufMultipliers[row_inner];
    }
  }
}

void load_A(float A[SIZE * SIZE], float bufA[TILE_SIZE][TILE_SIZE],
            int row,
            int col)
{
#pragma HLS inline off
  int row_inner, col_inner;
  int current_row, current_col;

load_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
    current_row = row + row_inner;
  load_col_inner:
    for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
    {
#pragma HLS pipeline II = 1
      current_col = col + col_inner;
      bufA[row_inner][col_inner] = A[current_row * SIZE + current_col];
    }
  }
}

void load_B(float B[SIZE * SIZE],
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
                    float bufNormLine[TILE_SIZE],
                    int col)
{
#pragma HLS inline off
  int col_inner;
  int current_col;

load_col_inner:
  for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
  {
#pragma HLS pipeline II = 1
    current_col = col + col_inner;
    bufNormLine[col_inner] = norm_line[current_col];
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

void sub_gauss(float A[SIZE * SIZE], float B[SIZE], int norm,
               float b_norm_element, float norm_line[SIZE],
               float multipliers[SIZE])
{
#pragma HLS inline off
  int row, col;
  float bufferA[TILE_SIZE][TILE_SIZE];
  float bufferB[TILE_SIZE];
  float bufferNormLine[TILE_SIZE];
  float bufferMultipliers[TILE_SIZE];

#pragma HLS array_partition variable = bufferA cyclic factor = 32 dim = 2
#pragma HLS array_partition variable = bufferB complete
#pragma HLS array_partition variable = bufferNormLine complete
#pragma HLS array_partition variable = bufferMultipliers complete

row_tile:
  for (row = 0; row < SIZE; row += TILE_SIZE)
  {
    load_B(B, bufferB, row);
    load_multipliers(multipliers, bufferMultipliers, row);

    compute_B(bufferB, bufferMultipliers,
              norm, b_norm_element,
              row);
    store_B(B, bufferB, norm, row);

  col_tile:
    for (col = 0; col < SIZE; col += TILE_SIZE)
    {
      load_norm_line(norm_line, bufferNormLine, col);
      load_A(A, bufferA, row, col);

      compute_A(bufferA, bufferNormLine,
                bufferMultipliers,
                norm, row, col);

      store_A(A, bufferA,
              norm, row, col);
    }
  }
}

void gauss(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
{
  // float bufferA[TILE_SIZE * TILE_SIZE];
  // float bufferB[TILE_SIZE];
  // float bufferX[TILE_SIZE];

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
      if (i > norm)
      {
        multipliers[i] = A[i * SIZE + norm] / a_norm_element;
      }
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
    X[row] = B[row];
  back_col:
    for (col = SIZE - 1; col >= 0; col--)
    {
      if (col > row)
      {
        X[row] -= A[row * SIZE + col] * X[col];
      }
    }
    X[row] /= A[row * SIZE + row];
  }
}
