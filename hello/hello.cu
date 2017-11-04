#include <iostream>
#include <stdio.h>

const int NUM_BLOCKS = 10;
const int BLOCK_WIDTH = 1024;



__global__ void hello() {
    printf("Hello world! I'm thread %d, in block %d, \n", threadIdx.x, blockIdx.x);
}


int main(int argc,char *argv[]) {
    // launch the kernel
    hello<<<NUM_BLOCKS, BLOCK_WIDTH>>>();

    // force the printf()s to flush
    cudaDeviceSynchronize();

    printf("That's all!\n");
}