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

/* Print output matrix */
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
void initialize_inputs(float *A_sw, float *B_sw, float *X_sw, p16x32f *A_hw, float *B_hw, float *X_hw)
{
    int row, col;
    float aConst, bConst;

    for (col = 0; col < SIZE; col++)
    {
        for (row = 0; row < SIZE / PACK_COUNT; row++){
           for (int i = 0; i < PACK_COUNT; i++){
		     aConst = (float)rand() / 32768.0;
             A_hw[col * SIZE / PACK_COUNT + row].f[i] = aConst;
           }

        }
        bConst = (float)rand() / 32768.0;
        B_sw[col] = bConst;
        B_hw[col] = bConst;
        X_sw[col] = 0;
        X_hw[col] = 0;
    }
    for (col = 0; col < SIZE; col++){
    	for (row = 0; row < SIZE / PACK_COUNT; row++){

    		for (int i = 0; i < PACK_COUNT; i++){
    			A_sw[col * SIZE + row * PACK_COUNT + i] = A_hw[col * SIZE / PACK_COUNT + row].f[i];
    		}
    	}
    }
}

/* Static software code */
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

/* Comparing hardware/software output values */
int check_sw_hw(float *X_sw, float *X_hw)
{
    int i, j;

    for (i = 0; i < SIZE; i++)
    {
        // Floating point error
        if (abs(X_sw[i] - X_hw[i]) > 0.01)
        {
            printf("TEST FAILED, results not matching, C_sw[%d] = %f, C_hw[%d] = %f.\n",
                   i, X_sw[i], i, X_hw[i]);
            return -1;
        }
                    printf("TEST FAILED, results not matching, C_sw[%d] = %f, C_hw[%d] = %f.\n",
                   i, X_sw[i], i, X_hw[i]);
    }

    return 0;
}

/* Comparing hardware/software output sums */
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

    // Floating point error
    if (abs(sum_sw - sum_hw) > 0.01)
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
    int status;

    // float *A_hw = (float *)malloc(SIZE * SIZE * sizeof(float));
    p16x32f *A_hw = (p16x32f *)malloc((SIZE * SIZE / PACK_COUNT) * sizeof(p16x32f));
    float *B_hw = (float *)malloc(SIZE * sizeof(float));
    float *X_hw = (float *)malloc(SIZE * sizeof(float));

    float *A_sw = (float *)malloc(SIZE * SIZE * sizeof(float));
    float *B_sw = (float *)malloc(SIZE * sizeof(float));
    float *X_sw = (float *)malloc(SIZE * sizeof(float));

    srand(RAND_SEED);

    /* Initialize A, B, and X */
    initialize_inputs(A_sw, B_sw, X_sw, A_hw, B_hw, X_hw);

    gauss_sw(A_sw, B_sw, X_sw);

    /* Start timer. */
    timespec timer = tic();

    /* Gaussian Elimination */
    gauss(A_hw, B_hw, X_hw);

    /* Stop and print timer. */
    toc(&timer, "kernel execution");

    status = check_sw_hw(X_sw, X_hw);
    status = check_sw_hw_sum(X_sw, X_hw);

    if (status == 0)
        printf("TEST PASSED!\n");
    else
        printf("TEST FAILED!\n");

    return 0;
}
