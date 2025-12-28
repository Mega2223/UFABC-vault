---
tags:
  - matemática
  - computação
  - algoritmo
authors: Júlio César
aliases:
  - Tupla
  - Trait
---
# Tipo Soma

É uma união discriminada de tipos, uma determinada variável pode assumir valores de diferentes tipos, mas nunca mais de um único tipo da união. Isso é, se $A, B, \cdots, Z$ são tipos com $n, m, \cdots, z$ possíveis valores, temos que o tipo soma $A + B + \cdots + Z$ terá $n + m _ \cdots + z$ valores possíveis.

O tipo soma é então uma união de tipos onde um determinado objeto do tipo soma só pertence a, no máximo, um dos tipos da união simultaneamente, de forma análoga a um _trait_ ou uma [[Conjunto#União e Intersecção|união]].
## Propriedades

### União Disjuntiva
O domínio do tipo soma representa uma [[Conjunto#União e Intersecção|união]] disjuntiva entre tipos, disjuntiva pois um elemento nunca pode pertencer a múltiplos conjuntos ao mesmo tempo, ou seja, não pode haver intersecção entre os seus tipos.
## Traits
Traits são um [[#Tipo Soma|tipo algébrico soma]], tem um comportamento extremamente análogo a uma [[Classes Abstratas e Interfaces#Interface|interface]], todavia traits estão preocupados em definir a estrutura de um objeto, não somente o comportamento, que é o caso de interfaces, onde a estrutura é omitida e só é feita na implementação da interface.
# Tipo Produto

O tipo produto representa uma agregação de tipos, de forma geral, se $A, B, \cdots, Z$ são tipos com $n, m, \cdots, z$ possíveis valores, temos que o tipo produto $A \times B \times \cdots \times Z$ terá $n\ .\ m\ .\ \cdots\ .\ z$ valores possíveis. Temos que o tipo produto é análogo ao [[Categoria#Produto|produto categórico]] (uma vez que é projetável em seus objetos) ou ainda ao [[Conjunto#Produto Cartesiano|produto cartesiano entre conjuntos]].

A implementação do tipo produto é feita por meio de uma Tupla. Como o tipo produto requer a presença de todos os tipos, um objeto de um tipo produto qualquer pode ser projetado em qualquer tipo da agregação.
## Propriedades

### Número Fixo de Componentes
Como o tipo produto é o produto categórico entre seus respectivos tipos, o número de componentes de um tipo produto é sempre fixo e é igual ao número de tipos que constituem o tipo produto.
### Ordem dos Componentes
Tipos produto são pares ordenados onde cada tipo tem sua posição específica, ou seja, o tipo produto entre tipos tem uma ordem e produtos de ordem diferentes são diferentes.
$$\large A \times B \ne B \times A$$
### Presença dos Componentes
Todo tipo produto teve conter um elemento de cada um de seus tipos, a construção de um tipo produto requer então um elemento de cada tipo constituinte, o que nos permite a fazer uma projeção do tipo produto para cada tipo que faz parte da união.
### Tupla
A tupla é um [[Tipos de Dados Algébricos|tipo algébrico]] [[#Tipo Produto|produto]], que tem uma estrutura definida em um conjunto ordenado de variáveis onde cada uma tem o seu tipo determinado, de forma geral, uma tupla uma lista ordenada de elementos onde cada um possui um tipo específico.

Tuplas todavia só são uma forma de organizar relações entre conjuntos de dados, para a implementação de padrões funcionais mais complexos, podemos usar [[Programação Orientada a Objetos#Classe|classes]], que também são tipos produtos mas com implementações funcionais mais elaboradas.