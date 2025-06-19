---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

A recursão é a prática de fazer programas com funções de auto-referência, normalmente a fim de resolver problemas via divisão e conquista.

Ela segue propriedades indutivas de uma função matemática recursiva, onde temos tipicamente um caso base e casos que derivam desse caso base. O algoritmo recursivo tipicamente começa no caso o qual a função foi chamada e vai chamando a si mesmo até alcançar um determinado caso base.
$$\large n! = \begin{cases} 
1 &x=0 \\(x-1)!\cdot x & x>0
\end{cases}$$

```c
#include <stdio.h>

unsigned int factorial(unsigned int n){
	if(n == 0){return 1;}
	return n*factorial(n-1);
}

void main(){
	printf("%3d", factorial(5));
}
```

## Desempenho

Em geral algoritmos recursivos são menos ótimos que algoritmos iterativos, por conta do custo de manter as funções na pilha e o fato da mesma ter um tamanho máximo e a possibilidade de atingir um erro stackoverflow. A implementação recursiva tende a ser mais legível que a iterativa, mas isso vem a um custo computacional significante.

### Implementação da Série de Fibonacci

```c
// Recursão
#include <stdio.h>

unsigned int fibonacci(unsigned int n){
	if(n == 0){return 0;}
	if(n == 1){return 1;}
	return fibonacci(n-1) + fibonacci(n-2);
}

void main(){
	printf("%3d",fibonacci(12));
}
```

```c
// Iterativa
#include <stdio.h>

unsigned int fibonacci(unsigned int n){
	unsigned int a = 0, b = 1, c = 0;
	for(int i = 0; i < n - 1; ++i){
		c = a + b;
		a = b; b = c;
	}
	return c;
}

void main(){
	printf("%3d",fibonacci(12));
}
```

Temos que, embora o número de operações seja parecido, o uso de memória da nossa implementação recursiva é da ordem de $O(n)$ enquanto a implementação iterativa é da ordem de $O(1)$.
## Backtracking

É o ato de retornar a recursão a um estado anterior e tentar outra alternativa a partir daquele estado.