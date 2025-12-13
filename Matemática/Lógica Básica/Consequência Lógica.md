---
tags:
  - matemática
  - lógica
authors: Júlio César
---
## Definição

A consequência lógica é uma relação de garantia de valoração entre duas formulas [[Linguagem Proposicional|proposicionais]]. Pode-se dizer que $B$ é uma consequência lógica de $A$ quando cada valoração que satisfaz $A$ também satisfaz $B$
$$\large
A\vDash B
$$
Dizemos que $A$ implica tautologicamente $B$. Isso não implica necessariamente que $A$ seja consequência lógica de $B$, por exemplo, a fórmula $\large p \to q$ é uma consequência lógica de $\large p \lor r \to q$, mas o inverso não é necessariamente verdade.

A consequência lógica é transitiva, se $\large A \vDash B$ e $\large B \vDash C$, então $\large A \vDash C$.

Uma fórmula cujo $\large \emptyset \vDash A$ é válida, essa implicação normalmente é abreviada para $\large \vDash A$.