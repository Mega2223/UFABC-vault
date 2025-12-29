---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Avaliação Ansiosa

A avaliação ansiosa (_eager_) é a valoração de variável no momento que ela é inicializada, isso é, a expressão é valorada e memorizada instantaneamente. Um efeito colateral é que, para variáveis geradas por mapas, para cada variável no domínio é memorizada uma variável no contradomínio.

```scala
def sum(x: Int, y: Int): Int = {
	println("Valorando expressão")
	x + y
}
@main def main(): Unit = {
	val a = 10; val b = 12;
	val s = sum(a,b)
	println("s declarada")
	printf("%d + %d = %d\n",a,b,s)
}
```
## Avaliação Preguiçosa

Dada uma variável dada em termos de uma valoração, a variável preguiçosa é aquela que só é valorada quando seu valor seja necessário, implementações de avaliação preguiçosa podem ter de ser repetidas caso a variável precise ser usada mais de uma vez, é um _trade-off_ de uso de memória por tempo computacional.

```scala
def sum(x: Int, y: Int): Int = {
	println("Valorando expressão")
	x + y
}
@main def main(): Unit = {
	val a = 10; val b = 12;
	lazy val s = sum(a,b)
	println("s declarada")
	printf("%d + %d = %d\n",a,b,s)
}
```

## Memoização

Memoização é uma implementação de avaliação preguiçosa onde visamos reduzir o número de computações repetidas de um mesmo valor. Se um mapa é [[Estruturas Funcionais#Estrutura de dados puramente funcional|puramente funcional]], temos que para uma variável única só precisamos computar no máximo uma vez a expressão para sabermos o resultado. Uma função pode então salvar internamente seu resultado de computação para usos futuros.

De forma geral, uma memoização é uma expressão preguiçosa que, ao ser valorada, salva o valor da valoração e retorna esse valor memorizado para valorações futuras.

```scala
import scala.collection.mutable

val memory: mutable.Map[Int, Int] = mutable.Map()

def fib(n: Int): Int = {
	if(n <= 0){0}
	else if(n == 1){1}
	else{
		memory.getOrElseUpdate(n,
			{
				printf("Valorando fib(%d)\n",n)
				fib(n - 1) + fib(n - 2)
			}
		)
	}
}

@main def main(): Unit = {
	fib(10);
}
```

Uma estrutura memoizada não é puramente funcional (pois gera efeito colateral), mas como ela é idempotente então uma função memoizada pode ser tratada externamente como um método puramente funcional.
## Propriedades

### Estruturas de Dados Infinitas
A estrutura que define uma variável ansiosa implica que ela seja computada e memorizada antes de ser acessada, o que inviabiliza certas estruturas muito grandes. Agora para variáveis preguiçosamente valoradas, estas podem ser definidas em termos de um mapa de forma que podemos ter uma estrutura de dados essencialmente infinita.