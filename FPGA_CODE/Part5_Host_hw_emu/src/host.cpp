/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

/*******************************************************************************

Description:

    Vitis matrix multiply example which showcases how the host code works.

*******************************************************************************/
// OpenCL utility layer include
#include "xcl2.hpp"
#include "gauss.h"
#include "../common/my_timer.h"
#include <vector>

void gauss_sw(std::vector<float, aligned_allocator<float> >& A, // Input Matrix 1
                    std::vector<float, aligned_allocator<float> >& B, // Input Matrix 2
                    std::vector<float, aligned_allocator<float> >& X  // Output Matrix)
)
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

/* Initialize A and B (and X to 0.0s) */
void initialize_inputs(std::vector<float, aligned_allocator<float> >& A_sw, std::vector<float, aligned_allocator<float> >& B_sw, std::vector<float, aligned_allocator<float> >& X_sw, std::vector<p16x32f, aligned_allocator<p16x32f> >& A_hw, std::vector<float, aligned_allocator<float> >&B_hw, std::vector<float, aligned_allocator<float> >& X_hw)
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

/* Comparing hardware/software output values */
int check_sw_hw(std::vector<float, aligned_allocator<float> >& X_sw, std::vector<float, aligned_allocator<float> >& X_hw)
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
    }

    return 0;
}

/* Comparing hardware/software output sums */
int check_sw_hw_sum(std::vector<float, aligned_allocator<float> >& X_sw, std::vector<float, aligned_allocator<float> >& X_hw)
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

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }
    std::string binaryFile = argv[1];

    size_t matrix_size_bytes = sizeof(float) * SIZE * SIZE;
    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel krnl_gauss;

    std::vector<p16x32f, aligned_allocator<p16x32f> > A(SIZE * SIZE / PACK_COUNT * sizeof(p16x32f));
    // std::vector<float, aligned_allocator<float> > A(SIZE * SIZE * sizeof(float));
    std::vector<float, aligned_allocator<float> > B(SIZE * sizeof(float));
    std::vector<float, aligned_allocator<float> > X_hw(SIZE * sizeof(float));

    std::vector<float, aligned_allocator<float> > A_sw(SIZE * SIZE * sizeof(float));
    std::vector<float, aligned_allocator<float> > B_sw(SIZE * sizeof(float));
    std::vector<float, aligned_allocator<float> > X_sw(SIZE * sizeof(float));

    srand(RAND_SEED);

    /* Initialize A, B, and X */
    initialize_inputs(A_sw, B_sw, X_sw, A, B, X_hw);

    // OPENCL HOST CODE AREA START
    auto devices = xcl::get_xil_devices();
    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_gauss = cl::Kernel(program, "gauss", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    printf("Allocating buffers\n");

    // Allocate Buffer in Global Memory
    OCL_CHECK(err, cl::Buffer buffer_X(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, sizeof(float) * SIZE,
                                            X_hw.data(), &err));
                                            printf("buffer x allocated\n");

        OCL_CHECK(err, cl::Buffer buffer_A(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, sizeof(float) * SIZE * SIZE,
                                        A.data(), &err));
                                        printf("buffer a allocated\n");

        OCL_CHECK(err, cl::Buffer buffer_B(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, sizeof(float) * SIZE,
                                         B.data(), &err));
                                         printf("buffer b allocated\n");

    printf("Setting arguments\n");

    OCL_CHECK(err, err = krnl_gauss.setArg(0, buffer_A));
    OCL_CHECK(err, err = krnl_gauss.setArg(1, buffer_B));
    OCL_CHECK(err, err = krnl_gauss.setArg(2, buffer_X));

    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_A, buffer_B, buffer_X}, 0 /* 0 means from host*/));

    timespec timer = tic();

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_gauss));
    q.finish();

    toc(&timer, "Kernel execution");

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_X}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    // OPENCL HOST CODE AREA END

    // Compute Software Results
    gauss_sw(A_sw, B_sw, X_sw);

    int status; 
    status = check_sw_hw(X_sw, X_hw);
    status = check_sw_hw_sum(X_sw, X_hw);

    if (status == 0) {
      printf("TEST PASSED!\n");
      return EXIT_SUCCESS;
    }
    else{
        printf("TEST FAILED!\n");
      return EXIT_FAILURE;
    }

    return EXIT_FAILURE;
}
