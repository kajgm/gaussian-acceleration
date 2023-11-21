all: gauss

# PASCAL GT1080 and Volta
CUDA_ARCH=-gencode arch=compute_61,code=sm_61 -gencode arch=compute_70,code=sm_70 -gencode arch=compute_80,code=sm_80 

gauss: gauss.o
	/usr/local/cuda-11.0/bin/nvcc -ccbin g++ -m64 ${CUDA_ARCH} -o gauss gauss.o libwb/libwb.so -std=c++11

gauss.o: gauss.cu my_timer.h
	/usr/local/cuda-11.0/bin/nvcc -ccbin g++ -m64 ${CUDA_ARCH} -o gauss.o -c gauss.cu -std=c++11

run: gauss
	./gauss

clean:
	rm -rf *.o gauss *~
