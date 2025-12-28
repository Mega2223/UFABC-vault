---
tags:
  - computação
  - incompleto
  - língua-de-programação
authors: Júlio César
---
## Definição

Scala é uma #língua-de-programação  [[programação funcional|funcional]] multiparadigma estaticamente tipada, é compilada em [[Java#JVM|bytecode JVM]] com uma ênfase forte em paradigmas funcionais de programação. Possui um esquema de tipagem forte com suporte à inferência implícita de variáveis.

Por ser multiparadigma ela têm suporte a esquemas de programação imperativa, como variáveis mutáveis, mas a língua tem enfoque no paradigma funcional

```scala
val x: Int = 0; // 'variável' funcional
var y: Int = 0; // variável imperativa (mutável)
```
## Funções de Ordem Superior

Como língua funcional, Scala implementa [[Programação Funcional#Características|funções de ordem superior]] e [[Programação Funcional#Características|funções de primeira classe]] para a manipulação de variáveis

```scala
def getAdder(x: Int) = {
	(x1: Int) => (x1 + x)
}

def performFunction(f: Int => Int, x1: Int) = {
	f(x1)
}

@main def main() = {
	def x = getAdder(3)(4) // 7
	def y = performFunction(getAdder(3),4) //7
	println(x)
	println(y)
}
```

```scala
def applyThenAdd(f: Int => Int, x: Int) = {
	f(x) + x
}
```
## Lambdas

Scala também têm implementação de [[Programação Funcional#Lambdas|funções anônimas / lambdas]] para a manipulação de funções

```scala
def getSum(x: Int, y: Int): Int = {
	( (x1: Int) => (y + x1) ) (x) // função anônima e chamada
}
```

## Programação Orientada a Objetos

Scala tem suporte ao paradigma de [[Programação Orientada a Objetos|programação orientada a objetos]], tanto de forma funcional (todas as variáveis da classe são constantes) quanto imperativa.

```scala
class Pessoa(val name: String,val age: Int){}

@main def main(): Unit = {
	val pessoaA = Pessoa("Marcos",16)
	val pessoaB = Pessoa("Luciana",32)
	printf("%s %s",pessoaA.name,pessoaB.name);
}
```
### Objetos
A keyword `object` pode ser usada como atalho para a elaboração de objetos singleton.

### Classes Internas
Ao contrário de [[Java]], Scala tem um mecanismo de classes internas diferenciais, onde cada instância de uma classe possui um tipo de classe interna.

```scala
class City {
	var buildings: List[this.Building] = List();
	class Building(val name: String){
		buildings = this :: buildings;
	}
}

@main def main(): Unit = {
	val cityA = City(); val cityB = City()
	val buildingA = cityA.Building("cA")
	val buildingB = cityB.Building("cB")

	println(buildingB :: cityB.buildings)
	println(buildingA :: cityB.buildings)
}
```
### Programação Genérica


### Traits
Traits ocupam o mesmo nicho que [[Java#interfaces|interfaces]] ocupam em Java, isso é, servem como molde para objetos herdeiros.

```scala
trait Iterator[A]{
	def hasNext: Boolean
	def next(): A
}
```

Dito isso, traits não são exatamente equivalentes a interfaces, enquanto interfaces expressam os métodos de um objeto, traits expressam a estrutura dos objetos, um trait é o análogo funcional do [[Tipos de Dados Algébricos#Tipo Soma|tipos soma]].
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
A lista em Scala é um objeto [[Mônada|monádico]] puramente funcional, muitos métodos são oferecidos nativamente para que se possa mapear ou iterar sobre a lista.

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

## Tipos e Literais

