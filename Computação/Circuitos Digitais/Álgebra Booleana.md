---
tags:
  - algoritmo
  - computação
  - circuitos-digitais
authors: Júlio César
---
## Definição

A álgebra booleana é um sistema algébrico que descreve relações entre valores verdade por meio de fórmulas, é uma forma de projetar e descrever o comportamento de circuitos digitais. Possui um funcionamento extremamente similar à [[Linguagem Proposicional|lógica proposicional]], todavia a álgebra booleana não estuda inferências e sim valorações.

## Componentes Algébricos

Formalmente, a álgebra booleana é uma 6-upla
$$\Large 
\begin{gather}
(\mathbb B,\land,\lor,\lnot,0,1) \\\\
\mathbb B = \{a,b\}
\end{gather} 
$$
Que segue os axiomas
### Axiomas de Identidade
$$\large
\begin{gather}
\forall a \in \mathbb B, a \lor 0 = a \\
\forall a \in \mathbb B, a \land 1 = a \\
\end{gather}
$$
### Axiomas de Complemento
$$\large
\begin{align}
\forall a \in \mathbb B: \exists (\lnot a), a \land \lnot a = 0 \\a \lor \lnot a = 1
\end{align}
$$

### Axiomas de Comutatividade
$$
\large
\begin{align}
\forall a,b \in \mathbb B: a \land b = b \land a \\
a \lor b = b \lor a
\end{align}
$$
### Axiomas de Associatividade
$$
\large
\begin{align}
\forall a,b,c \in \mathbb B:
a \land (b \land c) = (a \land b) \land c \\
a \lor (b \lor c) = (a \lor b) \lor c \\
\end{align}
$$
### Axiomas de Absorção
$$\large
\begin{align}
\forall a,b \in \mathbb B: a \lor (a \land b) = a \\
a \land (a \lor b) = a
\end{align}$$
### Axiomas de Distributividade
$$\large
\begin{align}
\forall a,b,c \in \mathbb B:
a \land (b \lor c) = (a \land b) \lor (a \land c) \\
a \lor (b \land c) = (a \lor b) \land (a \lor c)
\end{align}$$
## Teoremas de De Morgan

São teoremas [[Linguagem Proposicional|proposicionais]] que são utilizados na álgebra booleana.
$$
\begin{gather}
\lnot (P \land Q) \iff \lnot (\lnot P \lor \lnot Q) \\
\lnot (P \lor Q) \iff \lnot (\lnot P \land \lnot Q)
\end{gather}$$
Traduzidos para sua forma algébrica, ficam
$$
\begin{gather}
\overline {(P \land Q)} = \overline {(\overline P \lor \overline Q)} \\
\overline {(P \lor Q)} = \overline {(\overline P \land \overline Q)}
\end{gather}$$