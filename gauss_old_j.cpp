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


void sub_gauss(float A[SIZE * SIZE], float B[SIZE], int norm) {
  int row, col;
  int row_inner, col_inner;
  int row_inner_load, col_inner_load;
  int row_inner_store, col_inner_store;
  int current_row, current_col;
  float multiplier;
  float norm_line_buffer[SIZE];
  float b_norm_buffer;
  float bufferA[TILE_SIZE][TILE_SIZE];
  float bufferB[TILE_SIZE];

  #pragma HLS array_partition variable=bufferA cyclic factor=16 dim=2
  #pragma HLS array_partition variable=bufferB cyclic factor=16

  b_norm_buffer = B[norm];

  norm_line:
  for (col = 0; col < SIZE; col++) {
    norm_line_buffer[col] = A[norm * SIZE + col];
  }

  row_tile:
  for (row = 0; row < SIZE; row += TILE_SIZE) {
    col_tile:
    for (col = 0; col < SIZE; col += TILE_SIZE) {
      
      //load
      row_inner_load:
      for (row_inner_load = 0; row_inner_load < TILE_SIZE; row_inner_load++) {
        current_row = row + row_inner_load;
        col_inner_load:
        for (col_inner_load = 0; col_inner_load < TILE_SIZE; col_inner_load++) {
          #pragma HLS pipeline II=1
          current_col = col + col_inner_load;
          bufferA[row_inner_load][col_inner_load] = A[current_row * SIZE + current_col];
        }
        if (col == 0){
          bufferB[row_inner_load] = B[current_row];
        }
      }

      //compute
      row_inner:
      for (row_inner = 0; row_inner < TILE_SIZE; row_inner++) {
        current_row = row + row_inner;
        if (current_row >= norm + 1) {
          if (col == 0){
            multiplier = bufferA[row_inner][norm] / norm_line_buffer[norm];  
          }
          col_inner:
          for (col_inner = 0; col_inner < TILE_SIZE; col_inner++) {
            #pragma HLS pipeline II=1
            current_col = col + col_inner;
            if (current_col >= norm) {
              bufferA[row_inner][col_inner] -= norm_line_buffer[current_col] * multiplier;
            }
          }
          if (col == 0){
            bufferB[row_inner] -= b_norm_buffer * multiplier;
          }
        }       
      }

      //store
      row_inner_store:
      for (row_inner_store = 0; row_inner_store < TILE_SIZE; row_inner_store++) {
        current_row = row + row_inner_store;
        col_inner_store:
        for (col_inner_store = 0; col_inner_store < TILE_SIZE; col_inner_store++) {
          #pragma HLS pipeline II=1
          current_col = col + col_inner_store;
          if (current_row >= norm + 1 && current_col >= norm){
            //A[current_row * SIZE + current_col] = 1;
            A[current_row * SIZE + current_col] = bufferA[row_inner_store][col_inner_store];
          }
        }
        if (col == 0){
          B[current_row] = bufferB[row_inner_store];
        }
      }
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

  /* Gaussian elimination */
  norm:
  for (norm = 0; norm < SIZE - 1; norm++) {
    sub_gauss(A, B, norm);
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
