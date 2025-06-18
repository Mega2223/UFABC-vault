---
tags:
  - computação
  - incompleto
  - língua-de-programação
authors: Júlio César
---
## Definição

Scala é uma língua de [[programação funcional]] multiparadigma estaticamente tipada, é compilada em [[Java#JVM|bytecode JVM]] com uma ênfase forte em paradigmas funcionais de programação. Possui um esquema de tipagem forte com suporte à inferência implícita de variáveis.

Por ser multiparadigma ela têm suporte a esquemas de programação imperativa, como variáveis mutáveis, mas a língua tem enfoque no paradigma funcional

```scala
val x: Int = 0; // 'variável' funcional
var y: Int = 0; // variável imperativa
```
## Funções de Ordem Superior

Como língua funcional, Scala implementa [[Programação Funcional#Características|funções de ordem superior]] e [[Programação Funcional#Características|funções de primeira classe]] para a manipulação de variáveis

```scala
def getAdder(x: Int) = {
	(x1: Int) => (x1 + x)
}

getAdder(3)(4) // 7
```

```scala
def applyThenAdd(f: Int => Int, x: Int) = {
	f(x) + x
}
```
## Lambdas

Scala também têm implementação de [[Programação Funcional#Lambdas|funções anônimas / lambdas]] para a manipulação de funções

```scala
def getSum(x: Int, y: Int) = {
	( (x1: Int) => (y + x1) ) (x) // função anônima
}
```
## Monadas

## Programação Orientada a Objetos

Scala tem suporte ao paradigma de [[Programação Orientada a Objetos|programação orientada a objetos]], tanto de forma funcional (todas as variáveis da classe são constantes) quanto imperativa. A keyword `object` pode ser usada como atalho para a elaboração de objetos singleton.

## Recursão / Tail Call Optimization

A programação funcional não dá suporte para loops de tipo `for` por querer preservar a imutabilidade, assim algoritmos iterativos devem rodar de forma [[Recursão|recursiva]]

```scala
def getListSum(ls: List[Int], index: Integer = 0): Integer = {
	if (index == ls.length - 1){
		ls(index)
	} else {
		ls(index) + getListSum(ls, index + 1)
	}
}
```

Todavia esse tipo de recursão é suscetível a erros stack overflow para operações muito intensivas, para podemos reestruturar o código com um acumulador de forma que a função não necessita de manter seu espaço na pilha após a chamada da próxima função, o compilador de Scala vai automaticamente otimizar o uso da pilha.

```scala
def getListSumB(ls: List[Int], index: Integer = 0, sum: Integer = 0): Integer = {
	if (index == ls.length - 1){
		sum + ls(index)
	} else {
		getListSumB(ls, index + 1, sum + ls(index))
		// não há operação pendente após a chamada da função, ela
		// pode ser descartada da pilha de execução
	}
}
```
## Implementação

### Função Print
A função print produz [[Programação Funcional#Características|efeito colateral]], logo não é funcional, mas é implementada em Scala por conta da natureza multiparadigma da língua

```scala
println("Ola mundo")
```

```scala
val v = ((add: Int, mult: Int) => add + ( (mult: Int) => 2 * mult )(mult))(3,4)
println(v)
```
### Listas
A língua têm uma implementação nativa de listas que obedecem o paradigma funcional

```scala
val data: List[Int] = List(1, 2, 3, 4, 5)

val sum = data.reduce((carry: Int, x: Int) => (x+carry)) // 15
```

### Método Main
O ponto de entrada do programa é uma função main, esta pode ser uma função nomeada `main` dentro de um singleton ou uma determinada função anotada como main

```scala
@main def main() = {
	println("Cavalo")
}
```

```scala
object Hello:
	def main(args: Array[String]) = {
		println("Cavalo")
	}
```

## Literais

## Tipos
