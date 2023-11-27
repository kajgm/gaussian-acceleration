/* Gaussian elimination without pivoting.
 */

#include "gauss.h"
#include "stdio.h"

// void gauss(p16x32f A[SIZE * SIZE / PACK_COUNT], float B[SIZE], float X[SIZE])
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
  packed_loop:
  for (int i = 0; i < PACK_COUNT; i++){
    #pragma HLS unroll
     if ((col + col_inner) * PACK_COUNT + i >= norm)
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
  packed_loop:
  for (int i = 0; i < PACK_COUNT; i++){
    #pragma HLS unroll
      if ((col + col_inner) * PACK_COUNT + i >= norm)
      {
    	  c.f[i] = a.f[i] - b.f[i];
      }
  }
  return c;
}


void store_A(p16x32f A[SIZE * SIZE / PACK_COUNT],
             p16x32f bufA[TILE_SIZE][TILE_SIZE / PACK_COUNT],
             int row,
             int col, int flag)
{
  if (flag) {
      #pragma HLS inline off
    int row_inner, col_inner;
    int current_row, current_col;

  store_row_inner:
    for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
    {
      current_row = row + row_inner;
    store_col_inner:
      for (col_inner = 0; col_inner < TILE_SIZE / PACK_COUNT; col_inner++)
      {
  #pragma HLS pipeline II = 1
    	  current_col = col + col_inner;
        // p16x32f packed = bufA[row_inner][col_inner];
        // packed_loop:
        // for (int i = 0; i < PACK_COUNT; i++) {
        //   #pragma HLS unroll factor = 2
        //   A[current_row * SIZE + col + col_inner * PACK_COUNT + i] = packed.f[i];
        // }
        A[current_row * SIZE / PACK_COUNT  + current_col] = bufA[row_inner][col_inner];
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
               int col, int flag)
{
  if (flag) {
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

              x = pmul(multiplier, bufNormLine[col_inner], col, col_inner, norm);
              temp = bufA[row_inner][col_inner];

              bufA[row_inner][col_inner] = psub(temp, x, col, col_inner, norm);

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
    current_row = row + row_inner;
    if (current_row >= norm + 1)
    {
      bufB[row_inner] -= b_norm_element * bufMultipliers[row_inner];
    }
  }
}

void load_bufferA(p16x32f A[SIZE * SIZE / PACK_COUNT], p16x32f bufA[TILE_SIZE][TILE_SIZE / PACK_COUNT],
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
      for (col_inner = 0; col_inner < TILE_SIZE / PACK_COUNT; col_inner++)
      {
  #pragma HLS pipeline II = 1
    	  current_col = col + col_inner;

        // p16x32f packed{};
        // packed_loop:
        // for (int i = 0; i < PACK_COUNT; i++) {
        //   #pragma HLS unroll
        //   packed.f[i] = A[current_row * SIZE + col + col_inner * PACK_COUNT + i];
        // }

        // bufA[row_inner][col_inner] = packed;
        bufA[row_inner][col_inner] = A[current_row * SIZE / PACK_COUNT + current_col];
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

void load_norm_line(p16x32f norm_line[SIZE / PACK_COUNT],
                    p16x32f bufNormLine[TILE_SIZE / PACK_COUNT],
                    int col)
{
    #pragma HLS inline off
      int col_inner;

    load_col_inner:
      for (col_inner = 0; col_inner < TILE_SIZE / PACK_COUNT; col_inner++)
      {
    #pragma HLS pipeline II = 1
        // p16x32f packed{};
        // packed_loop:
        // for (int i = 0; i < PACK_COUNT; i++) {
        //   #pragma HLS unroll
        //   packed.f[i] = norm_line[col + col_inner * PACK_COUNT + i];
        // }

        bufNormLine[col_inner] = norm_line[col + col_inner];    
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

void load_A(p16x32f A[SIZE * SIZE / PACK_COUNT], \
    p16x32f bufferA[TILE_SIZE][TILE_SIZE / PACK_COUNT], \
    p16x32f norm_line[SIZE / PACK_COUNT], \
    p16x32f bufferNormLine[TILE_SIZE / PACK_COUNT], \
    int row, int col, int flag)
{
  // #pragma HLS dataflow
  if(flag) {
    load_bufferA(A, bufferA, row, col);
    load_norm_line(norm_line, bufferNormLine, col);
  }
}


void sub_gauss(p16x32f A[SIZE * SIZE / PACK_COUNT], float B[SIZE], int norm,
               float b_norm_element, p16x32f norm_line[SIZE / PACK_COUNT],
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
    for (col = 0; col < SIZE / PACK_COUNT; col += TILE_SIZE / PACK_COUNT)
    {
      load_A(A, bufferA, norm_line, bufferNormLine, row, col, 1);

      compute_A(bufferA, bufferNormLine,
                bufferMultipliers,
                norm, row, col, 1);

      store_A(A, bufferA,
              row, col, 1);
    }
  }
}

void back_load_A_row(p16x32f A[SIZE * SIZE / PACK_COUNT], float bufferA_row[TILE_SIZE], int row, int col){
#pragma HLS inline off
  int col_inner;
  int current_col;

  load_A_row:
  for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
  {
    #pragma HLS pipeline II=1
    current_col = col - col_inner;

    bufferA_row[col_inner] = A[row * SIZE / PACK_COUNT + current_col / PACK_COUNT].f[current_col % PACK_COUNT];
  }
}
void back_load_X(float X[SIZE], float bufferX[SIZE], int col){
#pragma HLS inline off
  int col_inner;
  int current_col;

  load_X:
  for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
  {
    #pragma HLS pipeline II=1
    current_col = col - col_inner;
    bufferX[col_inner] = X[current_col];
  }
}

void compute_X(float x_row_value[1], float bufferA_row[TILE_SIZE], float bufferX[TILE_SIZE], int row, int col){
#pragma HLS inline off
  int col_inner;
  int current_col;


  compute_X:
  for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
  {
    #pragma HLS pipeline II=8
    // #pragma HLS unroll
    current_col = col - col_inner;

    if (current_col > row)
    {
      x_row_value[0] -= bufferA_row[col_inner] * bufferX[col_inner];
    }
  }

}

void store_X(float X[SIZE], float x_row_value[1], float diagonal_element, int row){
#pragma HLS inline off
  X[row] = x_row_value[0] / diagonal_element; // Divide by diagonal element because the diagonal of A was not normalized
}

void back_substitution(p16x32f A[SIZE * SIZE / PACK_COUNT], float X[SIZE], float X_row_value[1], float diagonal_element, int row)
{
#pragma HLS inline off
  int col;
  
  float bufferA[TILE_SIZE];
  float bufferX[TILE_SIZE];

#pragma HLS array_partition variable = bufferA complete
#pragma HLS array_partition variable = bufferX complete

  back_col_tiled:
    for (col = SIZE - 1; col >= 0; col -= TILE_SIZE)
    {
      back_load_A_row(A, bufferA, row, col);
      back_load_X(X, bufferX, col);

      compute_X(X_row_value, bufferA, bufferX, row, col);
    }

  store_X(X, X_row_value, diagonal_element, row);

}

void gauss(p16x32f A[SIZE * SIZE / PACK_COUNT], float B[SIZE], float X[SIZE])
{
  int norm, row, col; /* Normalization row, and zeroing
                       * element row and col */
  float multiplier;
  p16x32f norm_line[SIZE / PACK_COUNT];
  float multipliers[SIZE];
  float a_norm_element;
  float b_norm_element;
  float diagonal_element;
  float X_row_element[1];

  int corrected_norm;
  int packed_idx;
  int pack_offset;
  p16x32f packed_element;
  float float_element;

/* Gaussian elimination */
norm:
  for (norm = 0; norm < SIZE - 1; norm++)
  {
    // a_norm_element = A[norm * SIZE + norm];
	// Calculate the index of the packed element in A
	packed_idx = norm * SIZE / PACK_COUNT + norm / PACK_COUNT;
	// Calculate the offset within the packed element
	corrected_norm = norm;
	while (corrected_norm > PACK_COUNT){
		corrected_norm = corrected_norm - PACK_COUNT;
	}
	pack_offset = corrected_norm % PACK_COUNT;
	// Access the packed array
	packed_element = A[packed_idx];
	// Access the float within the packed array
	float_element = packed_element.f[pack_offset];
	// Assign the value to a_norm_element
	a_norm_element = float_element;

    b_norm_element = B[norm];

    norm_line:
      for (int i = 0; i < SIZE / PACK_COUNT; i++)
      {
#pragma HLS pipeline II = 1
        norm_line[i] = A[norm * SIZE / PACK_COUNT + i];
      }

    multipliers:
      for (int i = 0; i < SIZE; i++)
      {
#pragma HLS pipeline II = 1
        // multipliers[i] = A[i * SIZE + norm] / a_norm_element;
		packed_idx = i * SIZE / PACK_COUNT + norm / PACK_COUNT;

		corrected_norm = norm;
//		while (corrected_norm > PACK_COUNT){
//			corrected_norm = corrected_norm - PACK_COUNT;
//		}
		pack_offset = corrected_norm % PACK_COUNT;

		// Access the packed array
		packed_element = A[packed_idx];

		// Access the float within the packed array
		float_element = packed_element.f[pack_offset];

		// Divide by the normalization element
		multipliers[i] = float_element / a_norm_element;
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
    X_row_element[0] = B[row];
    // diagonal_element = A[row * SIZE + row];
//    diagonal_element = A[row * SIZE / PACK_COUNT + row / PACK_COUNT].f[row % PACK_COUNT];
    // Calculate the index of the packed element in A
    int packed_idx = row * SIZE / PACK_COUNT + row / PACK_COUNT;

    // Correct the row value if it's greater than PACK_COUNT
    int corrected_row = row;
    while (corrected_row > PACK_COUNT){
        corrected_row = corrected_row - PACK_COUNT;
    }

    // Calculate the offset within the packed element
    int pack_offset = corrected_row % PACK_COUNT;

    // Access the packed array
    p16x32f packed_element = A[packed_idx];

    // Access the float within the packed array
    float float_element = packed_element.f[pack_offset];

    // Assign the value to diagonal_element
    diagonal_element = float_element;


    back_substitution(A, X, X_row_element, diagonal_element, row);
  }
}
