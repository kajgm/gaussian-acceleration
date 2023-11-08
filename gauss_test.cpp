#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <math.h>
#include <sys/types.h>

#include "gauss.h"
#include "my_timer.h"

/* Print input matrices */
void print_inputs(float *A, float *B, float *X)
{
    int row, col;

    if (SIZE < 10)
    {
        printf("\nA =\n\t");
        for (row = 0; row < SIZE; row++)
        {
            for (col = 0; col < SIZE; col++)
            {
                printf("%5.2f%s", A[row * SIZE + col], (col < SIZE - 1) ? ", " : ";\n\t");
            }
        }
        printf("\nB = [");
        for (col = 0; col < SIZE; col++)
        {
            printf("%5.2f%s", B[col], (col < SIZE - 1) ? "; " : "]\n");
        }
    }
}

void print_X(float *X)
{
    int row;

    if (SIZE < 100)
    {
        printf("\nX = [");
        for (row = 0; row < SIZE; row++)
        {
            printf("%5.2f%s", X[row], (row < SIZE - 1) ? "; " : "]\n");
        }
    }
}

/* Initialize A and B (and X to 0.0s) */
void initialize_inputs(float *A, float *B, float *X)
{
    int row, col;

    for (col = 0; col < SIZE; col++)
    {
        for (row = 0; row < SIZE; row++)
        {
            A[col * SIZE + row] = (2 * row) + (3 * col) + 1;
        }
        B[col] = (2 * col) + 1;
        X[col] = 1;
    }
}

static void gauss_sw(float *A, float *B, float *X)
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

int check_sw_hw(float *X_sw, float *X_hw)
{
    int i, j;

    for (i = 0; i < SIZE; i++)
    {

        // if (X_sw[i] != X_hw[i])
        {
            printf("TEST FAILED, results not matching, C_sw[%d] = %f, C_hw[%d] = %f.\n",
                   i, X_sw[i], i, X_hw[i]);
            return -1;
        }
    }

    return 0;
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
int check_sw_hw_sum(float *X_sw, float *X_hw)
{
    int i, j;

    float sum_sw = 0.0;
    float sum_hw = 0.0;

    for (i = 0; i < SIZE; i++)
    {

        sum_sw += X_sw[i];
        sum_hw += X_hw[i];
    }

    if (sum_sw != sum_hw)
    {
        printf("TEST FAILED, results not matching, C_sw sum = %f, C_hw sum = %f.\n",
               sum_sw, sum_hw);
        return -1;
    }

    return 0;
}

int main(int argc, char **argv)
{
    /* Variable declaration/allocation. */
    float *A_hw = (float *)malloc(SIZE * SIZE * sizeof(float));
    float *B_hw = (float *)malloc(SIZE * sizeof(float));
    float *X_hw = (float *)malloc(SIZE * sizeof(float));

    float *A_sw = (float *)malloc(SIZE * SIZE * sizeof(float));
    float *B_sw = (float *)malloc(SIZE * sizeof(float));
    float *X_sw = (float *)malloc(SIZE * sizeof(float));

    /* Initialize A and B */
    initialize_inputs(A_hw, B_hw, X_hw);
    initialize_inputs(A_sw, B_sw, X_sw);

    gauss_sw(A_sw, B_sw, X_sw);

    /* Start timer. */
    timespec timer = tic();

    /* Gaussian Elimination */
    gauss(A_hw, B_hw, X_hw);

    /* Stop and print timer. */
    toc(&timer, "kernel execution");

    check_sw_hw(X_sw, X_hw);
    check_sw_hw_sum(X_sw, X_hw);

    return 0;
}