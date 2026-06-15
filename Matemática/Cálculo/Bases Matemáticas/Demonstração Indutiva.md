---
tags:
  - matemática
  - matemática-discreta
authors: Júlio César
---
## Definição

A demonstração indutiva é uma forma de demonstrar que alguma propriedade é válida para todos os elementos de $\large \mathbb N$.

Seja $\large P: \mathbb N \to \{\text t,\text f\}$ uma preposição, temos que
$$\large (P(1)\land \forall k \in \mathbb N P(k) \to P(k+1)) \to \forall n \in \mathbb N P(n)$$
Queremos demonstrar que a propriedade é válida para algum caso específico (denominado caso base) e fazer com que para cada caso a validade deste tenha como consequência lógica a validade do próximo (caso indutivo).

$$\large
\begin{gather}
\text{provar}&P(0) \\
\text{provar}&\forall n \in \mathbb N(P(n) \implies P(n+1))
\end{gather}$$

Essas duas provas implicam que $\large P$ vale para todos os naturais. Por exemplo, para provar a propriedade
$$\large 1 + 2 + 2^2 + \cdots + 2^n = 2^{n+1}-1$$
Primeiro verifica-se o caso base
$$\large
\begin{gather}
2^0 = 2^1 - 1 \\
1 = 2 - 1
\end{gather}$$
Depois verifica-se se para qualquer $\large k \in \mathbb N$, ela vale também para $\large k + 1$
$$\large \begin{align}
\text{se }: 1 + \dots + 2^k &= 2^{k+1}-1\\ \text{ então}:
1+ \cdots + 2^{k+1}&= 2^{k+2}-1\\
&= (1 + \cdots + 2^{k}) + 2^{k+1} \\
& = (2^{k+1}-1) + 2^{k+1} \\
& =2 \cdot 2^{k+1} - 1 \\
& =2 ^{k+2}-1
\end{align}$$
Essa propriedade é muito importante pois ela garante que a altura de uma [[Árvore Binária de Busca|ABB]] é logarítmica.