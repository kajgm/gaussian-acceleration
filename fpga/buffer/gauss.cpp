/* Gaussian elimination without pivoting.
 */
#include "gauss.h"

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
#pragma HLS pipeline off
  int row_inner, col_inner;
  int current_row, current_col;
  float multiplier;
  float tempA;
compute_row_inner:
  for (row_inner = 0; row_inner < TILE_SIZE; row_inner++)
  {
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
#pragma HLS pipeline off
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
#pragma HLS pipeline II=1
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
#pragma HLS array_partition variable = bufferA complete dim = 2
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

void back_load_A_row(float A[SIZE * SIZE], float bufferA_row[TILE_SIZE], int row, int col){
#pragma HLS inline off
  int col_inner;
  int current_col;

  load_A_row:
  for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
  {
    #pragma HLS pipeline II = 1
    current_col = col - col_inner;
    bufferA_row[col_inner] = A[row * SIZE + current_col];
  }
}
void back_load_X(float X[SIZE], float bufferX[SIZE], int col){
#pragma HLS inline off
  int col_inner;
  int current_col;

  load_X:
  for (col_inner = 0; col_inner < TILE_SIZE; col_inner++)
  {
    #pragma HLS pipeline II = 1
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

void back_substitution(float A[SIZE * SIZE], float X[SIZE], float X_row_value[1], float diagonal_element, int row)
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

void gauss(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
{
  int norm, row, col; /* Normalization row, and zeroing
                       * element row and col */
  float multiplier;
  float norm_line[SIZE];
  float multipliers[SIZE];
  float a_norm_element;
  float b_norm_element;
  float diagonal_element;
  float X_row_element[1];

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
    X_row_element[0] = B[row];
    diagonal_element = A[row * SIZE + row];
    back_substitution(A, X, X_row_element, diagonal_element, row);
  }
}