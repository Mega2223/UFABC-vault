---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Um struct é um conjunto de dados em um determinado objeto, que geralmente não atribui padrões funcionais mais complexos de classe relacionados à [[Programação Orientada a Objetos|POO]], como polimorfismo. Um struct, como diz o nome, é um padrão  baseado em estrutura, onde todo struct de determinado tipo tem a mesma estrutura, enquanto classes são baseadas em estrutura e implementação.

Como todo struct tem o mesmo tamanho em bytes dos seus semelhantes, o acesso a variáveis de um struct é sempre de tempo constante.

```c
#include <stdio.h>
#include <stdlib.h>

int main(){
    typedef struct Person {
		unsigned int age;
		const char* name;
	} Person;
	
	Person A = {10,"Lucas\0"};
	Person B = {.name = "Gabriel\0", .age = 22};
	Person C = *((Person*)malloc(sizeof(Person)));
	C.name = "Maria\0"; C.age = 12;
	
	Person P[] = {A,B,C};
	
	for(int i = 0; i < 3; ++i){
	    printf(P[i].name);
	    printf(" %2d \n",P[i].age);
	}
	
	free(C);
	return 0;
}
```