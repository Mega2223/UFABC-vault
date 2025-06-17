---
tags:
  - computação
  - incompleto
  - línguas-de-programação
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

Scala também têm implementação de funções anônimas / lambdas para a manipulação de funções

```scala
def getSum(x: Int, y: Int) = {
	( (x1: Int) => (y + x1) ) (x) // função anônima
}
```
## Monadas



## Implementação

```scala
println("Ola mundo")
```

```scala
println("Olá mundo")

val x:Int = 1 + 1

println({
	val y = x + 3
	y
})
```

```scala
val exponentiate = (x: Int) => x * x

println(exponentiate(9))
```

```scala
val v = ( (x: Int, y: Int) => x*y + y - x + x*x + 4*y*y*y )(3,4)
println(v)
```

```scala
val v = ((add: Int, mult: Int) => add + ( (mult: Int) => 2 * mult )(mult))(3,4)
println(v)
```