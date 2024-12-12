---
tags:
  - computação
authors: Júlio César
---
## Definição

A alocação dinâmica de memória em C e línguas derivadas pode ser feita implicitamente a partir de declarações de variáveis ou arrays, mas também pode ser feita por meio da função `malloc`, que têm como parâmetro o tamanho, em bytes, do espaço a ser alocado.

O endereço retornado então deve ser castado para o tipo de variável a ser utilizado:

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