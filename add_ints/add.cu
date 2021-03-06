#include <iostream>

__global__ void add(int a, int b, int* c) {
    *c = a + b;
}


int main() {
    int a = 1;
    int b = 3;
    int c;
    int* dev_c;
  
    cudaMalloc((void**)&dev_c, sizeof(int));

    add<<<10,1>>>(a, b, dev_c);

    cudaMemcpy(&c, dev_c, sizeof(int), cudaMemcpyDeviceToHost);

    std::cout << "c is: " << c << std::endl;

    cudaFree(dev_c);
}

