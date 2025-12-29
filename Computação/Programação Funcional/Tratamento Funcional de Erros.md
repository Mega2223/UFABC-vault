---
authors: Júlio César
tags:
  - computação
  - incompleto
---
## Preâmbulo

Tipicamente em métodos de [[Programação Estruturada|programação estruturada]] ou imperativa no geral, caso a aplicação tenha algum comportamento irregular, usamos o objeto exceção para reportar o comportamento irregular. Ainda, por meio de do controle de fluxo _try/catch_ podemos tratar dessa exceção ainda no escopo da aplicação.

Todavia esse tipo de quebra de fluxo é contrário ao [[Programação Funcional|paradigma funcional]], pois uma exceção de execução é um efeito colateral, para remediar esse problema, línguas funcionais usam de [[Mônada|estruturas monádicas]] para fazer o tratamento de erros.

## Tipo Option

Em uma função onde certos casos não podem ser computados, usamos o [[Mônada#Tipo Option|tipo monádico option]] para encapsular o valor, o option é um [[Tipos de Dados Algébricos|tipo soma]] entre o nosso tipo e um valor adicional para caso a computação não seja possível.

```scala
def integerDivision(a: Int,b: Int): Option[Int] = {
	if(b == 0){
		None
	} else {
		Some(a / b)
	}
}

@main def main(): Unit = {
	println(integerDivision(4,2))
	println(integerDivision(20,5))
	println(integerDivision(3,0))
}
```

## Tipo Either

O [[Mônada#Tipo Either|tipo either]] pode ser utilizado para o tratamento de erros, de forma que o primeiro tipo é o resultado esperado e o outro tipo representa um erro na nossa computação.

```scala
class IsNegativeErr{
	override def toString = "IsNegativeErr"
}

def positiveSum(a: Int, b:Int): Either[Int,IsNegativeErr] = {
	if(a > 0 && b > 0){
		Left(a + b)
	} else {
		Right(IsNegativeErr())
	}
}

@main def main: Unit = {
	val numbers: List[Int] = List(-1,3,-4,2,12,9,1)
	val sums = numbers.map(x => positiveSum(x,3))
	println(sums)
}
```
## Tipo Try

