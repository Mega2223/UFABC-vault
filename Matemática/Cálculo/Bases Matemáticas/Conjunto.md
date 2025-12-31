---
tags:
  - matemática
  - incompleto
aliases:
authors: Júlio César
---
## Definição

Um conjunto é uma coleção de objetos. Um objeto, de forma geral, ou pertence ou não pertence ao conjunto, não pode estar presente no conjunto mais de uma vez. Conjuntos não precisam ser ordenados.

## Subconjunto e Superconjunto

Sejam $A$ e $B$ conjuntos, dizemos que $B \subseteq A$ se todos os elementos de $B$ estiverem presentes em $A$, de forma análoga, $A$ é superconjunto de $B$.
$$\large A \subseteq B \iff (x \in A \implies x \in B)$$
## Igualdade

Temos que dois conjuntos $A$ e $B$ são iguais (por consequência, o mesmo conjunto) se e somente se todos os elementos de $A$ estiverem presentes em $B$ e vice-versa.
$$\large A = B \iff A \subseteq B\ \land B \subseteq A $$
## Conjunto Vazio

Só existe um conjunto com nenhum elemento, o conjunto vazio
$$\large \emptyset = \{\}$$
Por definição, o conjunto vazio é um [[#Subconjunto e Superconjunto|subconjunto]] de todo e qualquer conjunto.
## União e Intersecção

A união de dois conjuntos $A$ e $B$ é um conjunto que possui tanto os elementos de $A$ quanto os de $B$.
$$\large A \cup B := \{x \in A\ \lor\ x \in B \} $$
A intersecção entre $A$ e $B$ é todo elemento de $A$ que também pertence a $B$.
$$\large A \cap B := \{x \in A\ \land\ x \in B \} $$
- $A \cap (B \cup C) = (A\cap B) \cup (A\cap C)$
- $A \cup (B \cap C) = (A\cup B) \cap (A\cup C)$
## Cardinalidade
//TODO

## Par Ordenado e Sequência Ordenada

Um par ordenado é um conjunto que dá uma relação de ordem entre dois elementos de forma que $\large \langle a,b \rangle \ne \langle b,a \rangle$, um par ordenado pode ser definido em termos de um conjunto, onde
$$\large \langle a,b \rangle = \{ a, \{a,b\} \}$$

Uma sequência ordenada é um conjunto que define uma relação de ordem entre todos os seus elementos, qualquer sequência ordenada pode ser definida como um par ordenado de forma recursiva

$$\large \langle a,b,c \rangle := \langle a,\langle b,c \rangle \rangle$$

## Produto Cartesiano

O produto cartesiano entre dois conjuntos $\large A$ e $\large B$ se dá pelo conjunto de todos os [[#Par Ordenado e Sequência Ordenada|pares ordenados]] com um elemento de $\large A$ e um elemento de $\large B$
$$\large A \times B := \{\langle x,y \rangle | x \in A, y \in B\} $$
Essa definição pode ser estendida para cobrir uma sequência ordenada qualquer
$$\large A \times B \times C := \{ \langle x,y,z \rangle | x \in A, y \in B, z \in C \}$$
A convenção é que o produto de $\large n$ vezes o mesmo conjunto $\large A$, dada por $\large A \times A$ se abrevia como $\large A^n$.

## Conjunto das Partes
//TODO