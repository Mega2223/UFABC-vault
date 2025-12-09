---
tags:
  - matemática
  - cálculo
  - geometria-analitica
  - incompleto
aliases:
authors: Júlio César
---
## Definição

Em qualquer [[espaço vetorial]][^1], uma combinação linear é um vetor resultante do somatório de produtos lineares de vetores do espaço, ou seja

$$\large
\begin{gather}
U \subseteq \mathbb V, |U| = n \\
\\
\Large c = \sum_{i=1}^n a_i v_i\\ \\
a_i \in \mathbb R,v_i \in \mathbb V
\end{gather}
$$
## Geração de Subespaço

Um conjunto de $\large v_n \in \mathbb V$ vetores não nulos pode formar um [[Espaço Vetorial#Subespaço Vetorial|subespaço]] de acordo com todas as combinações lineares possíveis deste subconjunto. Se o conjunto é [[#Dependência Linear|linearmente dependente]] então o mesmo pode ser reduzido sem perda do conjunto final.

Seja $\large S \subseteq \mathbb V$ um conjunto finito de vetores do espaço vetorial, temos que $[\ S \ ]$ é o subespaço vetorial gerado por $\large S$, que é o conjunto de todas as combinações lineares possíveis de elementos de $\large S$. Caso $\large S$ seja linearmente dependente, o conjunto pode ser reduzido sem que $\large [\ S\ ]$ sofra de alguma alteração.

$$\Large \big[S\big ] = \{s=\sum_{i=1}^n x_iv_i\ |\ x_i \in \mathbb R, v_i \in S, n = |S| \}$$

Se $\large \big[S\big] = V$ e todos os vetores de $S$ são linearmente independentes, dizemos que $\large S$ é uma base de $\large V$.

## Sistema de Coordenadas e Mudança de Base

Sejam $\large R$ e $\large S$ ambos [[#Geração de Subespaço|bases]] para $\large V$ (ou seja, $[R] = [S] = V$), claramente qualquer vetor em $\large V$ pode ser representado tanto como combinação de $\large R$ como de $\large S$.
### Teoremas
Sejam $\large S, U$ quaisquer subconjuntos não vazios finitos de $\large V$:
- $\large S \subseteq [S]$
- $\large [[S]] = [S]$
- $\large S \subseteq U \implies [S] \subseteq [U]$
- $\large [V] = \large V$

Seja $B$ um conjunto de $\large n$ vetores linearmente independentes gerando um espaço vetorial $V$, temos que o maior conjunto linearmente independente de vetores de $\large V$ tem tamanho $n$. Analogamente, todas as bases LI de $\large V$ tem o mesmo tamanho $\large n$, e qualquer conjunto LI de $\large n$ elementos gera o espaço $\large V$.
## Dimensão

A dimensão $\large n$ é o número mínimo de vetores num espaço vetorial $\large V$ que [[#Geração de Subespaço|geram]] $\large V$. Dado um subconjunto finito linearmente independente do espaço, se o mesmo não gera $\large V$, podemos incrementar elementos de $\large V$ que estão fora do espaço gerado até chegarmos em $\large V$. Dizemos que 

$$\large \text{dim}( V) = n$$
Um espaço é dito de dimensão finita se possui uma base finita de elementos que geram o espaço, caso contrário o espaço é dito infinito e a dimensão não é um número, por exemplo o espaço de todas as funções contínuas em um intervalo real não possui dimensão contável, logo também não possui base.
## Dependência Linear

Se temos um conjunto de $\large v_i \in V$ vetores, dizemos que eles são linearmente dependentes quando algum determinado vetor do conjunto puder ser escrito como uma [[Matemática/Álgebra Linear/Combinação Linear|combinação linear]] dos demais, caso o contrário os vetores são linearmente independentes.

Para qualquer conjunto de vetores linearmente independentes temos que
$$\large\begin{gather}
{\Large\sum_{i=1}^n a_iv_i} = 0 \iff a_i = 0\ \forall i \in \{1,...,n \} \end{gather}$$

## Relacionado

- [[Matemática/Geometria Analítica/Combinação Linear|Combinação Linear]] de geometria analítica para combinações lineares no $\mathbb R ^ 2$ e $\mathbb R ^ 3$.

[^1]: Incluindo o $\mathbb R ^ 1$, ou seja, também se aplica o conceito de combinação linear menos relacionado com álgebra linear.
