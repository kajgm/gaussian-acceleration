#include "libwb/wb.h"
#include "my_timer.h"
#include <stdio.h>

#define wbCheck(stmt)                                                \
  do                                                                 \
  {                                                                  \
    cudaError_t err = stmt;                                          \
    if (err != cudaSuccess)                                          \
    {                                                                \
      wbLog(ERROR, "Failed to run stmt ", #stmt);                    \
      wbLog(ERROR, "Got CUDA error ...  ", cudaGetErrorString(err)); \
      return -1;                                                     \
    }                                                                \
  } while (0)

#define SIZE 1024
#define RAND_SEED 123

#define TILE_SIZE 32

///////////////////////////////////////////////////////
//@@ INSERT YOUR CODE HERE
__global__ void gaussKernel(float *A, float *B, float *X)
{
}

int main(int argc, char *argv[])
{

  float *A_hw_host;
  float *B_hw_host;
  float *X_hw_host;

  float *A_hw_device;
  float *B_hw_device;
  float *X_hw_device;

  float *A_sw;
  float *B_sw;
  float *X_sw;

  srand(RAND_SEED);

  /* Initialize A, B, and X */
  initialize_inputs(A_sw, B_sw, X_sw, A_hw_host, B_hw_host, X_hw_host);

  gauss_sw(A_sw, B_sw, X_sw);

  // Allocate cuda memory for device input and ouput image data
  cudaHostAlloc((void **)&A_hw_device,
                SIZE * SIZE * sizeof(float), cudaHostAllocDefault);
  cudaHostAlloc((void **)&B_hw_device,
                SIZE * sizeof(float), cudaHostAllocDefault);
  cudaHostAlloc((void **)&X_hw_device,
                SIZE * sizeof(float), cudaHostAllocDefault);

  // Start timer
  timespec timer = tic();

  ////////////////////////////////////////////////
  //@@ INSERT AND UPDATE YOUR CODE HERE
  cudaMalloc((void **)&A_hw_device,
             SIZE * SIZE * sizeof(float));
  cudaMalloc((void **)&B_hw_device,
             SIZE * sizeof(float));
  cudaMalloc((void **)&X_hw_device,
             SIZE * sizeof(float));

  // Transfer data from CPU to GPU
  cudaMemcpy(A_hw_device, A_hw_host,
             SIZE * SIZE * sizeof(float),
             cudaMemcpyHostToDevice);
  cudaMemcpy(B_hw_device, B_hw_host,
             SIZE * sizeof(float),
             cudaMemcpyHostToDevice);
  cudaMemcpy(X_hw_device, X_hw_host,
             SIZE * sizeof(float),
             cudaMemcpyHostToDevice);

  dim3 DimGrid((SIZE + TILE_SIZE - 1) / TILE_SIZE, (SIZE + TILE_SIZE - 1) / TILE_SIZE);
  dim3 DimBlock(TILE_SIZE, TILE_SIZE);

  // Call your GPU kernel 10 times
  for (int i = 0; i < 10; i++)
    gaussKernel<<<DimGrid, DimBlock>>>(A_hw_device, B_hw_device, X_hw_device);

  // Transfer data from GPU to CPU
  cudaMemcpy(A_hw_host, A_hw_device,
             SIZE * SIZE * sizeof(float),
             cudaMemcpyDeviceToHost);
  cudaMemcpy(B_hw_host, B_hw_device,
             SIZE * sizeof(float),
             cudaMemcpyDeviceToHost);
  cudaMemcpy(X_hw_host, X_hw_device,
             SIZE * sizeof(float),
             cudaMemcpyDeviceToHost);
  ///////////////////////////////////////////////////////

  // Stop and print timer
  toc(&timer, "GPU execution time (including data transfer) in seconds");

  // Check the correctness of your solution
  // wbSolution(args, outputImage);

  for (int i = 0; i < SIZE; i++)
  {
    for (int j = 0; j < SIZE; j++)
    {
      if (abs(A_hw_host[i * SIZE + j] - A_sw[i * SIZE + j]) / A_sw[i * SIZE + j] > 0.01)
      {
        printf("Incorrect A value at (%d, %d): A_sw = %f, A_hw = %f\n", i, j, A_sw[i * SIZE + j], A_hw_host[i * SIZE + j]);
        return -1;
      }
    }

    if (abs(B_hw_host[i] - B_sw[i]) / B_sw[i] > 0.01)
    {
      printf("Incorrect B value at (%d, %d): B_sw = %f, B_hw = %f\n", i, j, B_sw[i], B_hw_host[i]);
      return -1;
    }
    if (abs(X_hw_host[i] - X_sw[i]) / X_sw[i] > 0.01)
    {
      printf("Incorrect X value at (%d, %d): X_sw = %f, X_hw = %f\n", i, j, X_sw[i], X_hw_host[i]);
      return -1;
    }
  }
  printf("Correct output Matrix!\n");

  cudaFreeHost(A_hw_device);
  cudaFreeHost(B_hw_device);
  cudaFreeHost(X_hw_device);

  cudaFree(A_hw_device);
  cudaFree(B_hw_device);
  cudaFree(X_hw_device);

  return 0;
}
