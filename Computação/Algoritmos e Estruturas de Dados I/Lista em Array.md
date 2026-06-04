---
tags:
  - computação
authors: Júlio César
---
## Definição

A lista em array é o elemento computacional que simula uma sequência ordenada de elementos, a lista em array coloca elementos de tamanho fixo de forma contígua na memória, sabendo o tamanho $\large b$ em bytes do tipo de dado armazenado, o $\large i$-ésimo elemento em uma lista sempre ocupa o endereço $\large c + a * b$, onde $\large c$ é o primeiro elemento da lista, assim, a lista em array possui complexidade de consulta em $\large O(1)$ para todos os casos.
### Propriedades
Dado uma array dinâmica com $\large n$ elementos, temos que seu custo em função de tempo [[Complexidade Assintótica#Big-$O$|tempo]] é de
$$\large\begin{gather}
\text{Peek} & \text{Mutate (Começo)} & \text {Mutate(Meio)} & \text{Mutate (Fim)} &
\\
O(1) & O(n) &O(n)  & O(1) \lor O(n)
\end{gather}$$
Para operações de consulta, a continuidade dos elementos é sempre constante, para retirar elementos no meio da lista, é necessário mover todos os elementos seguintes uma posição para trás, que é uma operação linear, para colocar um elemento no final da lista, a complexidade depende da [[#Realocação Dinâmica|disponibilidade de espaço na lista]].
## Realocação Dinâmica

A arraylist tipicamente tem um limite superior dado pelo espaço alocado para a lista, uma vez que ela fura esse limite superior, é necessário reservar um espaço maior para capacitar a lista e mover todos os elementos para o novo espaço, de forma geral, se há espaço disponível na lista, a operação de inserção é $\large O(1)$, caso contrário é $\large O(n)$.

O tamanho da nova lista pode ser definido de várias formas, tipicamente se $\large c$ é a nossa capacidade inicial, a nossa capacidade final normalmente se dá por $\large c' = c * k$, onde $\large k$ é uma constante maior que 1, para $\large k=2$, a lista dobra de tamanho toda vez que ela supera sua capacidade. Realisticamente falando, uma lista não cresce para sempre, e esse $\large c$ vai convergir em um tamanho razoável eventualmente.