---
tags:
  - matemática
  - incompleto
  - lógica
aliases:
  - Sistema Axiomático
authors: Júlio César
---
## Definição

O sistema axiomático é um [[sistema dedutivo]] que visa inferir conclusões a partir de um determinado grupo de axiomas.
### O Axioma
O axioma é uma [[Linguagem Proposicional|proposição]] autoevidente, que são dados como base de um sistema dedutivo.
### A substituição
A [[Linguagem Proposicional#Substituição|substituição]] é o processo de trocar um átomo proposicional por uma fórmula proposicional, o sistema axiomático funciona devido ao fato de que átomos podem ser substituídos por fórmulas sem perda de sentido.
### Axiomas do Sistema Axiomático
- $(\to_1) = p \rightarrow (q \rightarrow p)$
- $(\to_2) = (p \rightarrow(q\rightarrow r))\rightarrow((p\rightarrow q) \rightarrow(p \rightarrow r))$
- $(\land_1)= p \rightarrow (q \rightarrow (p \land q))$
- $(\land_2)=(p \land q)  \rightarrow p$
- $(\land_3)=(p \land q) \rightarrow q$
- $(\lor_1)= p \rightarrow (p \lor q)$
- $(\lor_2)= q \rightarrow (p \lor q)$
- $(\lor_3)= (p \rightarrow r) \rightarrow ((q \rightarrow r) \rightarrow ((p \lor q)\rightarrow r)))$ 
- $(\lnot_1)= (p\rightarrow q) \rightarrow ((p \rightarrow \lnot q) \rightarrow \lnot p$
- $(\lnot_2)=$ $\lnot \lnot p = p$
### Modus Ponens
Regra de substituição, diz que, dado $\large (H,G) \in \mathcal L_\text{LP}$, se temos $\large H \rightarrow G$ e $H$, logo temos $G$.
$$\large \text{MP} := \frac{H,(H\to G)}{G}$$
### Deduções e Consequência Lógica
Uma dedução é uma sequência de fórmulas $A_1,\dots,A_n$ onde cada fórmula é ou uma [[Linguagem Proposicional#Substituição|instância]] de um axioma, ou é obtida por fórmulas anteriores via [[#Modus Ponens]].
### Teorema
