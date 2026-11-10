---
tags:
  - computação
  - incompleto
---
## Definição

// TODO
## Domínio

O domínio de um modelo é o universo de um determinado contexto que é representado em um ou mais modelos de banco de dados. Um recorte do domínio é denominado contexto. O domínio representa o corte de realidade é que modelado em um determinado banco.

Um modelo é um conjunto de estruturas que capturam alguma face da realidade, um modelo é um conjunto de conceitos que podem representar uma base de dados.

## Entidades e Atributos

Uma entidade representa uma estrutura de dados que são similares entre si, representando alguma estrutura comum. Cada entidade possui valores distintos, mas entidades de um mesmo tipo fazem parte de um mesmo conjunto-entidade, que define a estrutura do universo de entidades para um determinado tipo. Essa estrutura é definida de acordo com o universo de seus atributos, cada atributo deve possuir um determinado universo de possíveis atributos.

Tipicamente, um conjunto-entidade é um [[Conjunto#Produto Cartesiano|produto cartesiano]] do universo de seus atributos, por exemplo, uma companhia pode ter dois conjuntos, um para funcionários e um para produtos, seja $\large S$ o conjunto de frases [[Grupo Livre|geradas]] no alfabeto alfanumérico, podemos descrever ambos conjuntos por meio de produtos cartesianos entre atributos, um funcionário por exemplo pode ser descrito por meio dos atributos `nome`, `idade`, `cargo`, `salário`, o domínio de todos os funcionários pode se dar pelo conjunto de quádruplas de tipo:
$$
\begin{gather}
\Large
F := S \times \mathbb N \times S \times \mathbb Q
\end{gather}
$$
Todo funcionário registrado na base de dados pertence a esse universo, de forma geral, se $\large F^*$ é o conjunto de todos os funcionários, $\large F^* \in F$. Um tipo de entidade descreve a estrutura do domínio dessas entidades.

### Atributo-Chave
Um atributo chave é um atributo que unicamente identifica um determinado objeto (por exemplo, uma placa de carro ou um CPF), ou seja, segue uma regra de exclusividade. Uma entidade pode possuir diversos atributos-chave.