#include <stdio.h>

#define N 100000

__global__ void vector_add(float *out, float *a, float *b, int n){
	for (int i = 0; i < n; i++){
		out[i] = a[i] + b[i];
	}
}

int main(){
	float *a, *b, *c;

	a = (float*)malloc(sizeof(float) * N);
	b = (float*)malloc(sizeof(float) * N);
	c = (float*)malloc(sizeof(float) * N);

	for(int i = 0; i < N; i++){
		a[i] = 1.0f;
		b[i] = 2.0f;
	}

	vector_add<<<1,1>>>(c, a, b, N);
}
