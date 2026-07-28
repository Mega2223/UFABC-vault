---
tags:
  - algoritmo
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Uma gramática é uma quádrupla do tipo
$$\large G := \langle N, \Sigma, P, S \rangle$$
Onde
- $\large N$ é o [[alfabeto]] de símbolos não terminais da gramática.
- $\large \Sigma$ é o [[alfabeto]] de símbolos terminais da gramática.
- $\large P$ é o conjunto de regras de produção da gramática.
- $\large S$ é o símbolo inicial da gramática.

Toda gramática produz um conjunto de sentenças válidas, que é denominada uma [[#linguagem]], os símbolos válidos da linguagem só podem ser símbolos terminais da gramática, enquanto. Enquanto $\large N, \large \Sigma$ e $\large S$ são conjuntos de símbolos arbitrários (alfabetos), $\large P$ é um conjunto de [[Função|mapas]].
### Denominador Comum
Se várias regras de derivação tem o mesmo lado esquerdo, é comum condensar essas regras em uma única notação com o operador de expressão _or_, por exemplo, as regras
$$\large \begin{gather}
A \to x & A \to y & A \to Az
\end{gather}$$
podem ser descritas da forma
$$\large A \to x|y|Az$$
## Linguagem

A linguagem é o conjunto de todas as cadeias alcançáveis a partir de uma determinada gramática, uma linguagem pode possuir somente símbolos terminais de sua gramática geradora.

Por exemplo, a gramática para as operações binárias aditivas
$$\large \begin{gather}
\large G := \langle N, \Sigma, P, S \rangle \\
N = \{ S,E \}, \Sigma = \{ +, 1,0 \} \\
S \to E \\
E \to E + E|0|1
\end{gather}
$$
Compõe todas as expressões binárias aditivas, por exemplo $\large 0 + 1 + 0 + 0$
### Comprimento
O comprimento de uma cadeia de símbolos é o número total de símbolos que a compõem.
$$\large ||aaa|| = 3$$
## Derivação de Sentenças

Uma cadeia de derivação é uma sequência de passos para chegar em uma sentença da gramática a partir do caractere inicial, citando todas as ocorrências de regras de reprodução utilizadas, por exemplo, na gramática
$$\large S \to E, E\to E+E | 1$$
a sentença
$$\large 1 + 1 + 1$$
possui uma cadeia de derivação
$$\large S \to E \to E + E \to 1+ E\to 1 + E + E \to 1 + 1+1$$

Uma sentença pode ser derivada por um [[Análise Sintática|analisador sintático]], que visa encontrar uma cadeia de derivação para uma determinada sentença, ou determinar de forma definitiva se existe ou não uma cadeia de derivação para uma sentença.

Dizemos que, se uma sentença $\large B$ pode ser formada a partir da aplicação de regras de produção em uma outra sentença $\large A$, que $\large A$ _produz_ $\large B$, em notação:
$$\large A \Rightarrow B$$

// TODO: Introduction to Compilers and Language Design p.37 p.40
### Ambiguidade
Uma gramática é diga ambígua quando sua linguagem produzida possui uma única sequência que pode ser derivada de formas diferentes, por exemplo, a gramática
$$\large\begin{gather}
E \to E.E | e
\end{gather}$$
Pode produzir a sentença $\large e.e.e.e$ da de várias formas:
$$\large\begin{gather}
E & E \\
E.E & E.E \\
E .E.e & E.E.E.E \\
e .  E.E.e & e.e.e.e \\
e.e.e.e
\end{gather}$$
## Cabeça e Cauda

Seja $\large A \in N$ um determinado caractere não-terminal, a cabeça de $\large A$, $\large \text{head}(A)$, é o conjunto de todos os caracteres iniciais das regras de produção que iniciam em $\large A$:
$$\large \text{head}(A) := \{\beta\ |\  (A \to\beta \gamma) \in P , \beta \in (N \cup \Sigma),  \gamma \in (N \cup \Sigma)^*\}$$
De forma análoga, a cauda de $\large A$ é o conjunto de todos os últimos caracteres em regras de produção que vem de $\large A$
$$\large \text{tail}(A) := \{\beta\ |\  (A \to \gamma \beta) \in P , \beta \in (N \cup \Sigma),  \gamma \in (N \cup \Sigma)^*\}$$
## Conjuntos $\textbf{FIRST}$ e $\textbf{FOLLOW}$

Seja $\large A \in N$ qualquer caractere não terminal, o conjunto $\large \textbf{FIRST}(A)$ é o conjunto de todos os caracteres terminais $\large \alpha \in \Sigma$ tais que $\large$$\large \alpha$ é [[#Cabeça e Cauda|cabeça]] de uma sentença [[#Derivação de Sentenças|produzida]] por $\large A$:
$$\large \textbf{FIRST}(A) := \{ \alpha\ |\ A \Rightarrow  \alpha \gamma, \alpha \in \Sigma ,\gamma \in (N \cup \Sigma)^* \}$$

O conjunto $\large \textbf{FOLLOW}(A)$ é o conjunto de símbolos que podem seguir $\large A$ em qualquer sentença produzida pela língua

$$\large\textbf{FOLLOW}(A) := \{ \alpha\ |\alpha \in \Sigma, \exists (x,y \in (N \cup \Sigma)^*): S \Rightarrow xA\alpha y \}$$