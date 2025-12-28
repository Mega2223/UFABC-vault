---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Um struct é um conjunto de dados em um determinado objeto, que geralmente não atribui padrões funcionais de classe relacionados à [[Programação Orientada a Objetos|POO]], por padrão todos os elementos de um struct são de acesso global, ao contrário de classes que por padrão têm todos os objetos com acesso restrito.

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