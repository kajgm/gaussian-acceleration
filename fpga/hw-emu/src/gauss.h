#ifndef _H_GAUSS_H_
#define _H_GAUSS_H_

#define SIZE 32
#define RAND_SEED 123

#define TILE_SIZE 16
#define PACK_COUNT 8

struct p16x32f
{
    float f[PACK_COUNT];
};

extern "C" {
    void gauss(p16x32f A[SIZE * SIZE / PACK_COUNT], float B[SIZE], float X[SIZE]);
}

#endif // _H_GAUSS_H_
