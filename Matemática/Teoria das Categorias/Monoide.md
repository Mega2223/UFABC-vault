---
tags:
  - matemática
  - incompleto
  - cat
authors: Júlio César
---
## Definição

Um monoide é um [[conjunto]] $\large M$ com uma única operação binária $\large \cdot : M \times M \to M$ e algum determinado elemento 'unitário' $\large u \in M$ tal que

$$\large\begin{gather}
\forall [x,y,z] \in M: (x \cdot y) \cdot z = x \cdot (y \cdot z) \\ \\
\forall x \in M : x \cdot u = u \cdot x = x
\end{gather}$$

Como todas as operações são feitas dentro do conjunto $\large M$, temos que o monoide é uma [[categoria]] de um único elemento. Monoides podem ser formados de boa parte das categorias numéricas com a adição ou o produto algébrico ($\large\mathbb N$, $\large\mathbb Q$, $\large\mathbb R$). Todos os morfismos de um monoide são [[Categoria#Morfismo|endomorfismos]].

Se todo elemento $\large x \in M$ tem um inverso $\large x^{-1} \in M$ tal que $\large x \cdot x^{-1} = u$, temos que o monoide forma um [[grupo]].