---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

A lista é o elemento computacional que simula uma sequência ordenada de elementos, é uma estrutura de dados que alinha os dados de forma ordenada sem repetições, cada um tendo um único índice, a lista é uma estrutura que provém uma ordenação intrínseca aos dados.
### Propriedades
Dado uma array dinâmica com $n$ elementos, temos que seu [[Complexidade Assintótica#Big-$O$|tempo]] é de
$$\begin{gather}
\text{Peek} & \text{Mutate (Começo)} & \text {Mutate(Meio)} & \text{Mutate (Fim)} &
\\
O(1) & O(n) &O(n)  & O(1) \lor O(n)
\end{gather}$$
## Lista Ligada

É uma estrutura de dados dinâmica em que temos um pointer para algum elemento inicial da lista, e cada elemento possui um outro pointer para o seguinte elemento, geralmente o último elemento da lista aponta para `NULL`.
### Propriedades
Dado uma lista ligada com $n$ elementos, temos que seu [[Complexidade Assintótica#Big-$O$|tempo]] é de
$$\begin{gather}
\text{Peek} & \text{Mutate (Começo)} & \text {Mutate(Meio)} & \text{Mutate (Fim)} &
\\
O(n) & O(1) & O(n)& \begin{cases} O(n) &\text{n conhecido} \\ O(1)& O(n) \text{caso contrário}\end{cases} 
\end{gather}$$
//TODO faz isso verticalmente
### Lista Duplamente Ligada
É uma lista ligada onde cada elemento também têm conhecimento do elemento anterior da lista, assim pode-se andar a lista em 2 sentidos.
### Lista Ligada Circular
É uma lista ligada cujo o último elemento aponta para o primeiro, e vice-versa caso ela também seja duplamente ligada, pode-se usar qualquer elemento da lista como elemento inicial.

## Lista em Array
