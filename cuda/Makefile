include make.config

CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = gaussian.cu
EXE = gaussian

release: $(SRC)
	$(CC) $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean:
	rm -rf *.o gaussian *~


# PASCAL GT1080 and Volta
CUDA_ARCH=-gencode arch=compute_61,code=sm_61 -gencode arch=compute_70,code=sm_70 -gencode arch=compute_80,code=sm_80 

gaussian: gaussian.o
	/usr/local/cuda-11.0/bin/nvcc -ccbin g++ -m64 ${CUDA_ARCH} -o gaussian gaussian.o -std=c++11 -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

gaussian.o: gaussian.cu
	/usr/local/cuda-11.0/bin/nvcc -ccbin g++ -m64 ${CUDA_ARCH} -o gaussian.o -c gaussian.cu -std=c++11 -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

run: gaussian
	./gaussian