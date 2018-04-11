#include <stdio.h>

__global__ void helloFromGPU(void){
    printf("Hello World.\n");
}

int main(void){
    printf("Hello World.\n");

    helloFromGPU <<<1 ,10>>> ();
    cudaDeviceReset();

    return 0;
}