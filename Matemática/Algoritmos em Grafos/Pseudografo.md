---
tags:
  - matemática
  - algoritmo
  - incompleto
  - teoria-de-grafos
authors: Júlio César
aliases:
  - multigrafo
---
## Definição

O pseudografo, ou multigrafo, é uma estrutura relacional de dados finitos similar ao [[grafo]], o pseudografo difere do grafo em permitir múltiplas relações entre dois vértices e até mesmo que uma aresta comece e acabe no mesmo vértice. Formalmente, temos

$$\Large \text{G} =\{\text{V},\text{E},\phi\}$$

- $\large \text{V}$ é o conjunto de vértices
- $\large \text{E}$ é o conjunto de arestas
- $\large \phi$ é uma função que mapeia cada aresta a um par de vértices, podendo haver repetições de pares

Como $\large \phi$ não é [[Função#Injetividade e Sobretividade|injetora]], temos que $\large E$ não pode ser simplesmente um conjunto de pares de $V$. É necessária alguma distinção entre membros de $\large E$ que resultam no mesmo par de vértices. 