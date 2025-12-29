---
tags:
  - computação
authors: Júlio César
aliases: []
---
## Definição

A alocação dinâmica de memória em C e línguas derivadas pode ser feita implicitamente a partir de declarações de variáveis ou arrays, mas também pode ser feita por meio da função `malloc`, que têm como parâmetro o tamanho, em bytes, do espaço a ser alocado. Junto com a função `free` é a forma convencional de ~~você dar um tiro no próprio pé~~ gerenciamento de memória em C.

O endereço retornado pela função `malloc` então deve ser castado para o tipo de variável a ser utilizado:

```c
#include<stdio.h>
#include<stdlib.h>

int main(){
	int* v = (int*) malloc(6 * sizeof(int));
	v[0] = 11;
	printf("%d",v[0]);
	return 0;
}
```

Nota-se que em C a distinção entre arrays e endereços de memória é praticamente nula, pois um array é um endereço de memória e cada elemento é uma transposição do endereço inicial, ao contrário de línguas de nível mais alto, onde arrays têm componentes length para evitar um overflow de acesso de memória.

A alocação dinâmica é utilizada principalmente para a distribuição de memória de [[vetor]] e [[structs|structs.]] [[Classe]] em geral são alocadas por alguma função de maior nível.
## Representação Matricial

Uma [[matriz]] (ou qualquer outra ordem de tensor) pode ser representada como um conjunto de vetores de mesmo comprimento, em C, esta pode ser representada como um [[Ponteiro & Referência|ponteiro]] que aponta para os endereços de cada vetor

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

void main(){
	float **M = genMatrix(10,10);
	M[0][0] = 1.0F;
	printf("%.2f\n",M[0][0]);
	return;
}
```