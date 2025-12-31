---
tags:
  - matemática
  - incompleto
  - computação
authors: Júlio César
---
## Preambulo

Na [[programação funcional]], a mônada é uma estrutura [[Programação Funcional|funcional]] que visa [[Encapsulamento|encapsular]] valores com o intuito de sequenciar computações em um determinado contexto. É composta de um valor, que é encapsulado, um contexto e as regras de como manipular o valor encapsulado.

O principal propósito da mônada em programação funcional é encapsular efeitos colaterais em procedimentos a fim de evitar estruturas de fluxo comuns na programação imperativa, como statements _try_/_catch_, de tal forma que um código puramente funcional ainda possa funcionar de forma similar ao seu correspondente imperativo.
## Definição

Em [[Categoria|teoria das categorias]], a mônada é uma tripla $\large (T,\eta,\mu)$ que consiste de um [[Functor#Endofunctor|endofunctor]] $\large T: \textbf C\to \textbf C$ e duas [[Functor#Transformações Naturais|transformações naturais]] $\large \eta: 1_\textbf C \to T,\mu: T^2 \to T$ tal que
- $\large \mu \circ T \mu = \mu \circ \mu T$ (onde ambas são transformações do tipo $\large T^3\to T$)
- $\large \mu \circ T \eta = \mu \circ \eta T = 1_T$ . 

A mônada é um [[monoide]] da categoria dos [[Functor#Endofunctor|endofunctores]]. 

## Tipos Monâdicos

### Tipo Option

Uma variável que pode ser `None` ou do tipo especificado.

```scala
@main def main() = {
	val v1: Option[Int] = Some(2223);
	val v2: Option[Int] = None;
	print(v1,v2);
}
```

### Tipo Either

Encapsula uma escolha binária entre dois objetos de tipos diferentes

```scala
@main def main() = {
	val v1: Either[String,Int] = Right(2223);
	val v2: Either[String,Int] = Left("Oi");
	print(v1,v2);
}
```
### Tipo Future

Um valor que deve ser computado futuramente

```scala
import scala.concurrent.Future;

@main def main() = {
	val n = 1;
	val v1: Future[Int] = Future.successful(n+1);
	print(v1);
}
```
### Tipo List

Uma lista de objetos.

```scala
@main def main() = {
	val l: List[Int] = List(1,2,3,4,5,6,7);
	print(l);
}
```