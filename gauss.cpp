/* Gaussian elimination without pivoting.
 */

#include "gauss.h"
#include "stdio.h"

float min(float a, float b) {
    return (a < b) ? a : b;
}

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

void store(float A[SIZE * SIZE], \
  float B[SIZE], \
  float bufA[TILE_SIZE][TILE_SIZE], 
  float bufB[TILE_SIZE], \
  float norm, \

  int row, \
  int col) 
{
  #pragma HLS inline off
  int row_inner, col_inner;
  int current_row, current_col;

  store_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++) {
    current_row = row + row_inner;
    store_col_inner:
    for (col_inner = 0; col_inner < TILE_SIZE; col_inner++) {
      #pragma HLS pipeline II=1
      current_col = col + col_inner;
      if (current_row >= norm + 1 && current_col >= norm){
        A[current_row * SIZE + current_col] = bufA[row_inner][col_inner];
      }
    }
    if (col == 0){
      B[current_row] = bufB[row_inner];
    }
  }
}

void compute(float bufA[TILE_SIZE][TILE_SIZE], 
  float bufB[TILE_SIZE], \
  float bufNormLine[TILE_SIZE], \
  int norm, \
  float a_norm_element, \
  float b_norm_element, \
  int row, \
  int col) 
{
  #pragma HLS inline off
  int row_inner, col_inner;
  int current_row, current_col;
  float multiplier;

  compute_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++) {
    current_row = row + row_inner;
    if (current_row >= norm + 1) {
      if (col == 0){
        multiplier = bufA[row_inner][norm] / a_norm_element;  
      }
      compute_col_inner:
      for (col_inner = 0; col_inner < TILE_SIZE; col_inner++) {
        #pragma HLS pipeline II=1
        current_col = col + col_inner;
        if (current_col >= norm) {
          bufA[row_inner][col_inner] -= bufNormLine[col_inner] * multiplier;
        }
      }
      if (col == 0){
        bufB[row_inner] -= b_norm_element * multiplier;
      }
    }       
  }
}

void load(float A[SIZE * SIZE], float B[SIZE * SIZE], float bufA[TILE_SIZE][TILE_SIZE], 
  float bufB[TILE_SIZE], \
  float norm_line[SIZE], \
  float bufNormLine[TILE_SIZE], \
  int row, \
  int col) 
{
  #pragma HLS inline off
  int row_inner, col_inner;
  int current_row, current_col;

  load_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++) {
    current_row = row + row_inner;
    load_col_inner:
    for (col_inner = 0; col_inner < TILE_SIZE; col_inner++) {
      #pragma HLS pipeline II=1
      current_col = col + col_inner;
      bufA[row_inner][col_inner] = A[current_row * SIZE + current_col];
    }
    if (col == 0){
      bufB[row_inner] = B[current_row];
    }
    bufNormLine[row_inner] = norm_line[current_row];
  }
}

void sub_gauss(float A[SIZE * SIZE], float B[SIZE], int norm, \
            float a_norm_element, float b_norm_element, float norm_line[SIZE]) 
{  
  int row, col;
  float bufferA[TILE_SIZE][TILE_SIZE];
  float bufferB[TILE_SIZE];
  float bufferNormLine[TILE_SIZE];

  #pragma HLS array_partition variable=bufferA cyclic factor=16 dim=2
  #pragma HLS array_partition variable=bufferB cyclic factor=16


  row_tile:
  for (row = 0; row < SIZE; row += TILE_SIZE) {
    col_tile:
    for (col = 0; col < SIZE; col += TILE_SIZE) {
      load(A, B, bufferA, bufferB, norm_line, bufferNormLine, \
        row, col);

      compute(bufferA, bufferB, bufferNormLine, \
        norm, a_norm_element, b_norm_element, \
        row, col);


      store(A, B, bufferA, bufferB, \
        norm, row, col);
    }
  }

}

void gauss(float A[SIZE * SIZE], float B[SIZE], float X[SIZE]) {
  // float bufferA[TILE_SIZE * TILE_SIZE];
  // float bufferB[TILE_SIZE];
  // float bufferX[TILE_SIZE];

  int norm, row, col; /* Normalization row, and zeroing
                       * element row and col */
  float multiplier;
  float norm_line[SIZE];
  float a_norm_element;
  float b_norm_element;

  /* Gaussian elimination */
  norm:
  for (norm = 0; norm < SIZE - 1; norm++) {
    norm_line:
    for (int i = 0; i < SIZE; i++) {
      norm_line[i] = A[norm * SIZE + i];
    }
    a_norm_element = A[norm * SIZE + norm];
    b_norm_element = B[norm];
    sub_gauss(A, B, norm, a_norm_element, b_norm_element, norm_line);
  }
  /* (Diagonal elements are not normalized to 1.  This is treated in back
   * substitution.)
   */

  /* Back substitution */
  back_row:
  for (row = SIZE - 1; row >= 0; row--) {
    X[row] = B[row];
    back_col:
    for (col = SIZE - 1; col >= 0; col--) {
      if (col > row){
        X[row] -= A[row * SIZE + col] * X[col];
      }
    }
    X[row] /= A[row * SIZE + row];
  }
}
