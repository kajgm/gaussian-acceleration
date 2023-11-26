/* Gaussian elimination without pivoting.
 */
#include "gauss.h"
#include "stdio.h"

void gauss(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
{
  int norm, row, col; /* Normalization row, and zeroing
                       * element row and col */
  float multiplier;
  /* Gaussian elimination */
  for (norm = 0; norm < SIZE - 1; norm++)
  {
    for (row = norm + 1; row < SIZE; row++)
    {
      multiplier = A[row * SIZE + norm] / A[norm * SIZE + norm];
      for (col = norm; col < SIZE; col++)
      {
        A[row * SIZE + col] -= A[norm * SIZE + col] * multiplier;
      }
      B[row] -= B[norm] * multiplier;
    }
  }
  /* (Diagonal elements are not normalized to 1.  This is treated in back
   * substitution.)
   */
  /* Back substitution */
  for (row = SIZE - 1; row >= 0; row--)
  {
    X[row] = B[row];
    for (col = SIZE - 1; col > row; col--)
    {
      X[row] -= A[row * SIZE + col] * X[col];
    }
    X[row] /= A[row * SIZE + row];
  }
}
