---
tags:
  - matemática
  - algoritmo
  - teoria-de-grafos
authors: Júlio César
aliases:
  - multigrafo
  - pseudodigrafo
cssclasses:
---
## Pseudografo

O pseudografo, ou multigrafo, é uma estrutura relacional de dados similar ao [[grafo]], o pseudografo difere do grafo em permitir múltiplas relações entre dois vértices e até mesmo que uma aresta comece e acabe no mesmo vértice. Formalmente, temos

$$\Large \text{G} =\{\text{V},\text{E},\phi\}$$

- $\large \text{V}$ é o conjunto de vértices
- $\large \text{E}$ é o conjunto de arestas
- $\large \phi: E \to V^2$ é uma função que mapeia cada aresta a um par de vértices, podendo haver repetições de pares

Como $\large \phi$ não é [[Função#Injetividade e Sobrejetividade|injetora]], temos que $\large E$ não pode ser simplesmente um conjunto de pares de $V$. É necessária alguma distinção entre membros de $\large E$ que resultam no mesmo par de vértices. 

## Pseudodigrafo 
O pseudigrafo, multidigrafo ou _quiver_, é uma estrutura relacional de dados similar ao [[grafo]], de forma análoga ao [[#pseudografo]], o multidigrafo difere do digrafo em permitir que mais de um arco comece e termine no mesmo par de vértices:

$$\Large \text{G} =\{\text{V},\text{E},\phi\}$$

- $\large \text{V}$ é o conjunto de vértices
- $\large \text{E}$ é o conjunto de arestas
- $\large s: E \to V$ é uma função que mapeia cada aresta a um vértice onde começa o arco
- $\large t: E \to V$ é uma função que mapeia cada aresta a um vértice onde termina o arco

Ainda, $\large \phi$ não é [[Função#Injetividade e Sobrejetividade|injetora]], ou seja, temos que para membros diferentes de $\large E$ podemos ter o mesmo par ordenado $\large \langle v,w \rangle$ de vértices.