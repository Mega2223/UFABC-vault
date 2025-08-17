---
tags:
  - matemática
  - incompleto
  - computação
authors: Júlio César
---
## Preposição

A Mônada é uma estrutura [[Programação Funcional|funcional]] que visa [[Encapsulamento|encapsular]] valores com o intuito de sequenciar computações em um determinado contexto. É composta de um valor, que é encapsulado, um contexto e as regras de como manipular o valor encapsulado.
## Definição


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