#include <stdio.h>

__global__ void helloFromGPU(void) {
    printf("Thread %d says: Hello World from GPU!\n",threadIdx.x);
}

int main(void) {
    printf("Hello World from CPU!\n");
    helloFromGPU <<<1,10>>>();
    cudaDeviceReset();
    // cudaDeviceSynchronize();
    return 0;
}