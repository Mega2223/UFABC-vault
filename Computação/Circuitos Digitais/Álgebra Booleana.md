---
tags:
  - algoritmo
  - computação
  - incompleto
  - circuitos-digitais
authors: Júlio César
---
## Definição

A álgebra booleana é um sistema algébrico que descreve relações entre valores verdade por meio de fórmulas, é uma forma de projetar e descrever o comportamento de circuitos digitais. Possui um funcionamento extremamente similar à [[Linguagem Proposicional|lógica proposicional]], todavia a álgebra booleana não estuda inferências e sim valorações.

## Componentes Algébricos

Formalmente, a álgebra booleana é uma tripla que segue 6 axiomas
$$\Large 
\begin{gather}
(\mathbb B,\land,\lor) \\\\
\mathbb B = \{a,b\}
\end{gather} 
$$
### Axiomas
#### Axioma de Fechamento
O resultado de uma expressão algébrica também é uma expressão algébrica.
$$\large \forall a,b \in \mathbb B: a \lor b \in \mathbb B, a \land b \in \mathbb B$$
#### Axioma de Identidade
Para cada operador algébrico existe um elemento identidade
$$\large
\begin{gather}
\exists 0 \in \mathbb B: \forall a \in \mathbb B, a \lor 0 = a \\
\exists 1 \in \mathbb B: \forall a \in \mathbb B, a \land 1 = a \\
\end{gather}
$$
#### Axioma de Complemento
Todo elemento booleano tem um complemento
$$\large
\begin{align}
\forall a \in \mathbb B: \exists (\lnot a), a \land \lnot a = 0 \\a \lor \lnot a = 1
\end{align}
$$

#### Axioma de Comutatividade
As operações são comutativas
$$
\large
\begin{align}
\forall a,b \in \mathbb B: a \land b = b \land a \\
a \lor b = b \lor a
\end{align}
$$
// todo faltam dois 
### Teoremas
