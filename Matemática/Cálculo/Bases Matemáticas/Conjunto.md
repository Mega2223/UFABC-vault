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
$$\large A \subseteq B : (x \in A \implies x \in B)$$
## Igualdade

Temos que dois conjuntos $A$ e $B$ são iguais (por consequência, o mesmo conjunto) se e somente se todos os elementos de $A$ estiverem presentes em $B$ e vice-versa.
$$\large A = B : (A \subseteq B\ \land B \subseteq A )$$
## Conjunto Vazio

Só existe um conjunto com nenhum elemento, o conjunto vazio
$$\large \not \text O = \{\}$$
Por definição, o conjunto vazio é um [[#Subconjunto e Superconjunto|subconjunto]] de todo e qualquer conjunto.
## União e Intersecção

A união de dois conjuntos $A$ e $B$ é um conjunto que possui tanto os elementos de $A$ quanto os de $B$.
$$\large A \cup B := \{x \in A\ \lor\ x \in B \} $$
A intersecção entre $A$ e $B$ é todo elemento de $A$ que também pertence a $B$.
$$\large A \cap B := \{x \in A\ \land\ x \in B \} $$
Logicamente essas operações são comutativas e associativas, também seguem as propriedades distributivas:
- $\large A \cap (B \cup C) = (A\cap B) \cup (A\cap C)$
- $\large A \cup (B \cap C) = (A\cup B) \cap (A\cup C)$
## Cardinalidade

A cardinalidade de um determinado conjunto $\large A$, dito $\large |A|$, e a propriedade referente ao tamanho do conjunto, se um conjunto possui $\large n$ elementos, sua cardinalidade é $\large n$ e ele é dito finito. Caso o conjunto não possua um número finito de elementos, ele é dito infinito. Sejam $\large A,B$ conjuntos finitos, $\large |A \cup B| = |A| + |B| - |A \cap B|$.

Dois conjuntos $\large A,B$ possuem a mesma cardinalidade quando existe uma [[Função#Injetividade e Sobrejetividade|bijeção]] $\large f: A \to B$ entre eles, caso só exista uma injeção de $\large A \to B$, é dito que a cardinalidade de $\large A$ é superior a de $\large B$. 

Sabe-se que emora $\large \mathbb N \subseteq \mathbb Z$, temos que $\large |\mathbb N| = |\mathbb Z|$ pela existência da função bijetora $\large f: \mathbb N \to \mathbb Z$ onde

$$\large f(x) := \begin{cases}
x / 2  & x \text{ é par} \\
-(x+1)/2 & x\text{ é ímpar}
\end{cases}$$

Todo conjunto que possui cardinalidade com $\large \mathbb N$ é dito um conjunto enumerável, dito da ordem de $\large \aleph _0$, são contáveis os conjuntos $\large \mathbb Z$ e $\large \mathbb Q$[^1]. Não existe bijeção entre $\large \mathbb R$ e $\large \mathbb N$, fazendo com que os números reais sejam infinitos e inumeráveis.
## Par Ordenado e Sequência Ordenada

Um par ordenado é um conjunto que dá uma relação de ordem entre dois elementos de forma que $\large \langle a,b \rangle \ne \langle b,a \rangle$, um par ordenado pode ser definido em termos de um conjunto, onde
$$\large \langle a,b \rangle = \{ a, \{a,b\} \}$$

Uma sequência ordenada é um conjunto que define uma relação de ordem entre todos os seus elementos, qualquer sequência ordenada pode ser definida como um par ordenado de forma recursiva

$$\large \langle a,b,c \rangle := \langle a,\langle b,c \rangle \rangle$$

Um membro do [[#produto cartesiano]] entre $\large n$ conjuntos é dito uma $\large n$-tupla ordenada.
## Produto Cartesiano

O produto cartesiano entre dois conjuntos $\large A$ e $\large B$ se dá pelo conjunto de todos os [[#Par Ordenado e Sequência Ordenada|pares ordenados]] com um elemento de $\large A$ e um elemento de $\large B$
$$\large A \times B := \{\langle x,y \rangle | x \in A, y \in B\} $$
Essa definição pode ser estendida para cobrir uma sequência ordenada de qualquer tamanho
$$\large A \times B \times C := \{ \langle x,y,z \rangle | x \in A, y \in B, z \in C \}$$
A convenção é que o produto de $\large n$ vezes o mesmo conjunto $\large A$, dada por $\large A \times A$ se abrevia como $\large A^n$.

## Conjunto das Partes

Seja $\large A$ um conjunto qualquer, o conjunto das partes de $\large A$ é o conjunto de todos os [[#Subconjunto e Superconjunto|subconjuntos]] de $\large A$
$$\large \mathcal P(A) := \{B\ |\ B \subseteq A\}$$

## Conjunto Universo e Conjunto Complementar

O conjunto universo $\large U$ é o conjunto de todos os possíveis elementos em um determinado contexto, a presença de um conjunto universo permite poder presumir membros que estão fora de algum outro determinado conjunto. Seja $\large A$ um conjunto, seu conjunto complementar é definido como

$$\large A^c := \{x\ |\ x\in U, x \not\in A \}$$

Pelas [[Álgebra Booleana#Teoremas de De Morgan|leis de De Morgan]]:
- $\large (S \cup T)^c= S^c \cap T^c$
- $\large (S \cap T)^c= S^c \cup T^c$

[^1]: Pela famosa bijeção das setinhas.
