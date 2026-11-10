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

## Relacionamento

Um relacionamento é uma referência entre entidades, que podem ser de tipos distintos, um relacionamento é similar a um tipo de forma que cada relacionamento pertence a um tipo-relacionamento que descreve relacionamentos de estruturas comuns entre si. De forma geral, um tipo-relacionamento $\large R$ entre $\large n$ tipos-entidade é um conjunto de instâncias de relacionamento, onde cada instância pertence ao produto cartesiano dos conjuntos de entidade que participam do relacionamento.

$$\begin{gather}
\Large R := E_1 \times E_2 \times \dots \times E_n \\\\
\Large r \in R = (e_1,e_2, \dots, e_n)
\end{gather}$$
Cada entidade $\large e \in E_i$ é dita uma participante de $\large R$.
### Grau de Relação
O grau de relação é o número de entidades que participam de um determinado relacionamento, se $\large r = (e_1,\dots,e_n)$, o grau de relação do relacionamento é $\large n$.
### Relacionamentos Como Atributos
Para relacionamentos binários, um determinado relacionamento pode ser descrito como um atributo de um determinado objeto, onde o atributo guarda uma [[#Atributo-Chave|chave primária]] que aponta para outro objeto.
### Cardinalidade
A cardinalidade representa um determinado limite de instâncias de cada participante em uma determinada relação, por exemplo, um relacionamento EMPREGADO/DEPARTAMENTO teria cardinalidade máxima $\large (\infty,1)$, pois cada empregado só trabalha para um único departamento, enquanto um relacionamento EMPREGADO/PROJETO possui cardinalidade $\large (\infty, \infty)$.
### Atributos
Relacionamentos também podem ter atributos, por exemplo um relacionamento EMPREGADO/PROJETO pode ter um atributo `horas_trabalhadas` para cada projeto.

## Entidades Fracas e Chaves Parciais

Entidades fracas são entidades que são unicamente identificadas a partir de da combinação de uma entidade relacionada e uma chave, que pode não ser única no universo da entidade. A entidade fraca que é definida por outra entidade é dita a entidade dependente da entidade forte. Duas entidades fracas devem ser unicamente identificáveis se elas pertencem a uma mesma entidade forte, esse identificador é dito uma chave parcial.