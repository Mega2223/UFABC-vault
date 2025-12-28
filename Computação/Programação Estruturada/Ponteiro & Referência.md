---
tags:
  - computação
  - incompleto
authors: Júlio César
aliases:
  - ponteiro
  - referência
---
## Definição

O ponteiro[^1] é uma variável que serve como referência para uma determinada variável de um determinado programa, é extensivamente usado em línguas de baixo nível para passar variáveis mais complexas como parâmetros de funções, ao invés de enviar toda a estrutura de dados como parâmetro, o ponteiro (que tem comportamento de primitiva) é enviado.

```c
#include<stdio.h>

void mut(int* loc){
	*loc = 4;
}

int main(){
	int g = 0;
	mut(&g);
	printf("%2d",g);
	return 0;
}
```

Em línguas de baixo nível como C, arrays são tipicamente ponteiros para o [[Alocação Dinâmica de Memória|primeiro elemento da array]], e ela é armazenada de forma sequencial na memória. Sabendo o tipo podemos [[Lista#Array Dinâmica|inferir com rapidez a posição de cada elemento]].

[^1]: ou referência se você é um Rusthead
