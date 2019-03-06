#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <cstdio>

__global__ void printHelloGPU()
{
	printf("Hello World from the GPU\n");
}

int main()
{
	printHelloGPU<<<5,5>>>();
	cudaDeviceSynchronize();
	
	getchar();
	return 0;
}