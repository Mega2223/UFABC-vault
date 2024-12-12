---
tags:
  - matemática
  - computação
authors: Júlio César
---
## Definição

Uma [[matriz]] pode ser representada como um conjunto de vetores de mesmo comprimento, em C, esta pode ser representada como um [[Alocação Dinâmica de Memória|pointer]] que aponta para os endereços de cada vetor

```c
#include<stdio.h>
#include<stdlib.h>

float** genMatrix(int n, int m){
	float** ret = (float**) malloc(n * sizeof(float*));
	for(int i = 0; i < m; i++){
		ret[i] = (float*) malloc(m * sizeof(float));
	}
	return ret;
}

int main(){
	float **M = genMatrix(10,10);
	M[0][0] = 1.0F;
	printf(".2%f"M[0][0]);
	return 0;
}
```