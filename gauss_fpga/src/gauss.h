#ifndef _H_GAUSS_H_
#define _H_GAUSS_H_

#define SIZE 64
#define RAND_SEED 123

#define TILE_SIZE 16
#define PACK_COUNT 16

// packed float type: used to help maximize BRAM Utilization by increasing data-width
struct p16x32f
{
    float f[PACK_COUNT];
};

extern "C" {
   void gauss(float A[SIZE * SIZE], float B[SIZE], float X[SIZE]); 
}


#endif // _H_GAUSS_H_
