#ifndef _H_GAUSS_H_
#define _H_GAUSS_H_

#define SIZE 1024
#define RAND_SEED 123

#define TILE_SIZE 64
#define PACK_COUNT 16

struct p16x32f
{
    float f[PACK_COUNT];
};

void gauss(p16x32f A[SIZE * SIZE / PACK_COUNT], float B[SIZE], float X[SIZE]);

#endif // _H_GAUSS_H_
