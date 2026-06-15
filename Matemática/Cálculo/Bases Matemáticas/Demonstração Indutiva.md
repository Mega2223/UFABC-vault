---
tags:
  - matemática
  - incompleto
  - matemática-discreta
authors: Júlio César
---
## Definição

A demonstração indutiva é uma forma de demonstrar que alguma propriedade é válida para todos os elementos de $\large \mathbb N$.

Seja $\large P: \mathbb N \to (\text t|\text f)$ uma preposição, temos que
$$\large (P(1)\land \forall k \in \mathbb N P(k) \to P(k+1)) \to \forall n \in \mathbb N P(n)$$

De forma geral, queremos demonstrar que a propriedade é válida para algum caso específico (denominado caso base) e fazer com que para cada caso a validade deste tenha como consequência lógica a validade do próximo (caso indutivo).

$$\large
\begin{gather}
\text{provar}&P(0) \\
\text{provar}&\forall n \in \mathbb N(P(n) \implies P(n+1))
\end{gather}$$

