
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <math.h>
#include <sys/types.h>

#include "gauss.h"
#include "my_timer.h"

/* Initialize A and B (and X to 0.0s) */
void initialize_inputs(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
{
    int row, col;

    printf("\nInitializing...\n");
    for (col = 0; col < SIZE; col++)
    {
        for (row = 0; row < SIZE; row++)
        {
            A[row * SIZE + col] = 1 / row;
        }
        B[col] = 1 / col;
        X[col] = 0.0;
    }
}

/* Print input matrices */
void print_inputs(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
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

void print_X(float A[SIZE * SIZE], float B[SIZE], float X[SIZE])
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

int main(int argc, char **argv)
{
    printf("test0");
    /* Variable declaration/allocation. */
    float *A_hw = (float *)malloc(SIZE * SIZE * sizeof(float));
    float *B_hw = (float *)malloc(SIZE * sizeof(float));
    float *X_hw = (float *)malloc(SIZE * sizeof(float));

    float *A_sw = (float *)malloc(SIZE * SIZE * sizeof(float));
    float *B_sw = (float *)malloc(SIZE * sizeof(float));
    float *X_sw = (float *)malloc(SIZE * sizeof(float));

    printf("test1");
    /* Initialize A and B */
    initialize_inputs(A_hw, B_hw, X_hw);
    initialize_inputs(A_sw, B_sw, X_sw);

    printf("test2");
    /* Start timer. */
    timespec timer = tic();

    /* Gaussian Elimination */
    gauss(A_sw, B_sw, X_sw);

    printf("test3");
    /* Stop and print timer. */
    toc(&timer, "kernel execution");

    exit(0);
}

/* ------------------ Above Was Provided --------------------- */