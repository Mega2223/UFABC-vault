---
tags:
  - computação
  - incompleto
  - algoritmo
authors: Júlio César
aliases:
  - Tail Call Recursion
---
## Definição

O [[programação funcional|paradigma funcional]] não tolera o fluxo `for` por querer preservar a imutabilidade, assim algoritmos iterativos devem rodar de forma [[Recursão|recursiva]], similar a definição de recursividade matemática, por exemplo, na função da sequência de Fibonacci temos:

$$\large
\begin{gather}
f:\mathbb N \to \mathbb N \\\\
f(x)
\begin {cases}
0 & x = 0 \\
1 & x = 1 \\
f(x-1) + f(x-2) & x > 1
\end{cases}
\end{gather}
$$

```scala
def fibonacci(x: Int): Int = {
	if (x == 0){0}
	else if (x == 1){1}
	else{fibonacci(x-1) + fibonacci(x-2)}
}

@main def main() = {
	printf("f(10) = %d",fibonacci(10))
}
```

Todavia esse tipo de recursão é suscetível a erros stack overflow para operações muito intensivas, para podemos reestruturar o código com um acumulador de forma que a função não necessita de manter seu espaço na pilha após a chamada da próxima função, o compilador de Scala vai automaticamente otimizar o uso da pilha.

```scala
def fibonacci(x: Int, i: Int = 0, a: Int = 0, b: Int = 1): Int = {
	if(i < x){
		fibonacci(x, i + 1, b, a + b)
		// não há operação pendente após a chamada da função, ela
		// pode ser descartada da pilha de execução
	} else {
		a
	}
}

@main def main() = {
	printf("f(10) = %d",fibonacci(10))
}
```
