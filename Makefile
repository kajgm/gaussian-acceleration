CC:=gcc

program: openmp_gauss.c

	 $(CC) openmp_gauss.c -fopenmp -o openmp.out



clean:
	rm -rf *.out
