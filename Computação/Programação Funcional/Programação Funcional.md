---
tags:
  - incompleto
  - algoritmo
  - computação
  - paradigma
---
## Definição

É um #paradigma de programação onde os algoritmos são construídos por um sistema de aplicação e composição de funções puras. Não admite a maioria das estruturas comuns em programação sequencial, e tem paradigma puramente declarativo. De forma geral podemos afirmar que a programação funcional gira em torno da evaluação de declarações, e não de uma sequência de instruções.
## Características

- **Imutabilidade**: Valores não podem ser re-atribuídos de forma que não existem variáveis, só constantes.
- **Funções de Primeira Classe**: Funções podem ser tratadas como objetos.
- **Funções de Ordem Superior**: Funções servem como parâmetro para outras funções.
- **Funções Puras**: Métodos devem agir de maneira puramente determinística e não gerar qualquer efeito colateral.
- **Recursividade**: O paradigma funcional não admite loops de estilo _for_ como a programação estruturada, assim usamos de funções recursivas para a repetição.
- **Composição**: Funções podem ser combinadas para gerar funções mais complexas.

## Lambdas

Baseadas no [[cálculo lambda]], as lambdas são funções anônimas (sem nome atribuído) definidas de forma concisa, muitas línguas funcionais e imperativas têm suporte para lambdas
#### Java
```java
public class Main{
	public static void main(String[] args){
		Runnable runnable = () -> {
			System.out.println("Ola mundo");
		};
		runnable.run();
	}
}
```
#### Scala
```scala
((x: Int, y: Int) => (x*x + 3*y + ((y: Int) => (y*y*y + y-3))(y)))(3,8)
```

## Algoritmos Dinamicamente Iterativos

O loop for tradicional da programação imperativa está em violação com o princípio funcional da imutabilidade. Assim, para fazer qualquer algoritmo dinâmico devemos utilizar de algoritmos [[Recursão|recursivos]] para realizar essas tarefas.