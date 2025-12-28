---
tags:
  - incompleto
  - algoritmo
  - computação
authors: Júlio César
---
## Preâmbulo

A computação por estados normalmente define-se em um modelo computacional onde o resultado da operação depende não só nos parâmetros da operação mas sim também no estado da máquina que realiza a operação, a [[programação funcional]] todavia exige [[Programação Funcional#Características|total imutabilidade]] e [[Programação Funcional#Características|ausência de efeitos colaterais]] em todas as operações, ou seja, implementar um modelo de estados que seja complacente com o modelo funcional não é uma tarefa trivial.
## Manutenção Declarativa do Estado

O modelo mais simples de implementação de estados em programação funcional é similar ao tratamento de [[estruturas funcionais]], simplesmente criar um novo objeto a cada alteração de estados

### Encadeamento de Estado

//todo

## Funções de Dobra

### Fold
A partir de um estado inicial aplica todas as variáveis de uma lista a um objeto inicial dado uma função acumuladora.
```scala
@main def main = {
	val l: List[Int] = List(1,2,3,4,5,6)
	println(l)
	print(l.foldLeft(0)(_+_))
}
```
### Reduce
Similar ao fold, mas ela presume que nossa lista não está vazia, o primeiro estado fornecido será então considerado o estado de inicialização
```scala
@main def main = {
	val l: List[Int] = List(1,2,3,4,5,6)
	println(l)
	print(l.reduce(_+_))
}
```