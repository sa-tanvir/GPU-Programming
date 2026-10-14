#include <stdio.h>

__global__ void cude_hello_tanvir(){
	printf("hi tanvir, how are you doing? hello from GPU");
}

int main(){
	cude_hello_tanvir<<<1,1>>>();
	cudaDeviceSynchronize();
	return 0;
}
