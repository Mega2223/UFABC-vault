---
tags:
  - matemática
  - incompleto
aliases:
cssclasses:
authors: Júlio César
---
## Definição

A Linguagem Proposicional é uma língua formal que define proposições que são ou verdadeiras ou falsas com base em outras proposições. É determinada com base em algumas operações atômicas e princípios de indutividade.

$$
\Huge\begin{gather}
\mathcal L_\text{LP} 
\end{gather}
$$

O sistema proposicional é altamente ligado com a [[Álgebra Booleana]], onde pode-se traduzir de forma relativamente trivial valores-verdade em preposições.
## Preposições

Preposições são afirmações que são falsas ou verdadeiras, são os operandos da linguagem proposicional.
$$\huge
\mathcal P = \{p_0,p_1,\cdots, p_n\},\ \ \mathcal P \subseteq \mathcal L_\text{LP} 
$$
## Fórmulas Atômicas

São as fórmulas atômicas da linguagem proposicional:
- $\lnot$ "Não", conectivo unário. Ex: $\lnot\ a$ 
- $\implies$ "Implica", conectivo binário. Ex: $a \implies b$
- $\land$ "E", conectivo binário. Ex: $a \land b$
- $\lor$ "Ou", conectivo binário. Ex: $a \lor b$
- $(\ )$ Parênteses, que são os únicos elementos de pontuação.[^1]

## Fórmulas

Fórmulas são aninhamentos de [[#Fórmulas Atômicas|operações proposicionais atômicas]] que formam expressões lógicas. São definidas de forma indutiva onde o caso base eventualmente converge em operações atômicas. O conjunto da linguagem proposicional é definido por todas as fórmulas que podem ser obtidas indutivamente a partir das expressões:
$$\Large\begin{gather}
\mathcal P \subseteq \mathcal L_\text{LP} \\ \\

A \in \mathcal L_\text{LP} \implies \lnot A \in \mathcal L_\text{LP} \\ \\
(A,B) \in \mathcal L_\text{LP} \implies 
\begin{cases}
A \land B &\in \mathcal L_\text{LP}\\
A \lor B &\in \mathcal L_\text{LP}\\
A \implies B &\in \mathcal L_\text{LP}
\end{cases}\\
\end{gather}$$

## Subfórmulas

As subfórmulas de uma determinada proposição é um conjunto com todas as expressões da proposição, definida de forma [[Recursão|recursiva]], temos que 

$$\large \text{subf}(A \in \mathcal L_\text{LP}) := 
\begin{cases}
\{A\} & A \in \mathcal P \\
\{\lnot A\} \cup \text{subf}(\lnot A) & A = \lnot B \\
\{B \land C\} \cup \text{subf(B)} \cup \text{subf(C)} & A = B \land C \\
\{B \lor C\} \cup \text{subf(B)} \cup \text{subf(C)} & A = B \lor C \\
\{B \implies C\} \cup \text{subf(B)} \cup \text{subf(C)} & A = (B \implies C)
\end{cases}
$$
## Tamanho

O tamanho de uma fórmula proposicional depende do número de operações primitivas na expressão
$$\large 
|A|= \begin{cases}
1 & A \in \mathcal P \\
1 + |B| & A = \lnot B \\
1 + |B| + |C| & A= |B \circ C| & \circ \in \{\land,\lor,\implies\}
\end{cases}
$$

## Valoração

A [[função]] de valoração é uma função que mapeia cada expressão proposicional para um valor verdade
$$\Large
\begin{gather}
V: \mathcal L_\text{LP} \to \{0,1\} \\ \\
V(A) = 1 \iff 
\begin{cases}
V(B) = 0 & A = \lnot B \\
V(B) =1 \land V(C) = 1 & A = B \land C \\
V(B) =1 \lor V(C) = 1 & A = B \lor C \\
V(B) =0 \lor V(C) = 1 & A = B \implies C
\end{cases}
\end{gather}
$$


[^1]: Eles não são operações mas não sei onde mais colocar os parênteses então deixei aí, a vida dá dessas.
