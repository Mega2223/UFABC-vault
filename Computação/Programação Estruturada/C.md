---
tags:
  - língua-de-programação
  - computação
  - incompleto
authors: Júlio César
---
## Definição

É uma língua imperativa, compilada, fortemente tipada e multiparadigma de [[programação estruturada]] (procedural) de baixo nível. Executáveis em C compilam para código assembly e são consequentemente montados como binários.

É extremamente rápida pois não possui um grau muito alto de abstração, dá acesso direto a [[Chamada de Sistema|chamadas de sistema]] o que permite, por exemplo, uma alocação rápida de recursos (mas mais complexa).

Possui pouca limitação de acesso, fora limitadores de escopo, toda variável e função em C tem acesso global. Para evitar conflito de nomes, a convenção para funções e tipos é colocar o nome da API no começo de cada função ou tipo (`glDrawArrays`, por exemplo).
## Gerenciamento de Memória

A C dá acesso direto a [[Ponteiro & Referência|referências de memória ]]na heap e na stack, o que viabiliza que uma função possa retornar mais de um tipo de dados por meio de manipulação de ponteiros. A implementação de C dita que variáveis na stack são desalocadas após a finalização de seu escopo, enquanto as variáveis da heap (alocadas com chamada de sistema) devem ser desalocadas pela aplicação.

```C
#include <stdlib.h>

int* getArrayStack(){ // Incorreto
	int array[] = {1,2,3,4};
	return array;
}
// O escopo da variável "array" se encerra aqui e provavelmente será alocado por
// algum outro futuro elemento da pilha, fazendo com que o comportamento
// do ponteiro seja errático.

int* getArrayHeap(){
	int* array = malloc(4*sizeof(int));
	for(int i = 0; i < 4; ++i){
		array[i] = i+1;
	}
	return array;
}
// Variável na heap não perderá seu espaço reservado de memória a até que
// haja uma chamada free na aplicação
```

O alocamento explícito por meio da chamada de sistema `malloc` requer que aplicações desaloquem espaço de memória que não estão usando manualmente por meio da chamada `free`, uma alocação de memória que nunca é liberada é tido um vazamento de memória (_memory leak_), uma aplicação com vazamento de memória pode ficar mais lenta ou até falhar conforme seu tempo de execução aumenta.

## Headers e Arquivos

Tipicamente projetos em C e C++ são divididos em arquivos `.h` (headers) e `.c` (implementação). Os headers só declaram as funções e estruturas a serem implementadas enquanto os arquivos `.c` fazem a implementação. Arquivos que usam de alguma implementação devem incluir somente o header enquanto a implementação deve ser referenciada como parâmetro de compilação.

## Structs e Uniões

São tipos primitivos de dados, [[structs]] são espaços contínuos de memória que representam estruturas relacionais de dados que visam representar a estrutura de um objeto, enquanto uniões tipicamente visam representar o mesmo dado de formas diferentes (um [[Internet Protocol Version 4|endereço IPv4]] pode ser representado como um único número ou uma sequência de números menores).