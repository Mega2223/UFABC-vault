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

Um conjunto de $v_n \in \mathbb V$ vetores não nulos pode formar um [[Espaço Vetorial#Subespaço Vetorial|subespaço]] de acordo com todas as combinações lineares possíveis deste subconjunto. Se o conjunto é [[#Dependência Linear|linearmente dependente]] então o mesmo pode ser reduzido sem perda do conjunto final.

Seja $S \subseteq \mathbb V$ um conjunto finito de vetores do espaço vetorial, temos que $[\ S \ ]$ é o subespaço vetorial gerado por $S$, que é o conjunto de todas as combinações lineares possíveis de elementos de $S$. Caso $S$ seja linearmente dependente, o conjunto pode ser reduzido sem que $[\ S\ ]$ sofra de alguma alteração.

$$\Large [S] = \{s=\sum_{i=1}^n x_iv_i\ |\ x_i \in \mathbb R, v_i \in S, n = |S| \}$$

Se $[S] = \mathbb V$ e todos os vetores de $S$ são linearmente independentes, dizemos que $S$ é uma base de $\mathbb V$.
### Teoremas
Sejam $S, U$ quaisquer subconjuntos não vazios finitos de $\mathbb V$:
- $S \subseteq [S]$
- $[[S]] = [S]$
- $S \subseteq U \implies [S] \subseteq [U]$
- $[\mathbb V] = \mathbb V$

Seja $B$ um conjunto de $n$ vetores linearmente independentes gerando um espaço vetorial $V$, temos que o maior conjunto linearmente independente de vetores de $V$ tem tamanho $n$. Analogamente, todas as bases LI de $V$ tem o mesmo tamanho $n$, e qualquer conjunto LI de $n$ elementos gera o espaço
## Dimensão

A dimensão $n$ é o número mínimo de vetores num espaço vetorial $\mathbb V$ que [[#Geração de Subespaço|geram]] $\mathbb V$. Dado um subconjunto finito linearmente independente do espaço, se o mesmo não gera $\mathbb V$, podemos incrementar elementos de $\mathbb V$ que estão fora do espaço gerado até chegarmos em $\mathbb V$. Dizemos que 

$$\large \text{dim}(\mathbb V) = n$$
Um espaço é dito de dimensão finita se possui uma base finita de elementos que geram o espaço, caso contrário o espaço é dito infinito e a dimensão não é um número, por exemplo o espaço de todas as funções contínuas em um intervalo real não possui dimensão contável.
## Dependência Linear

Se temos um conjunto de $v_i \in \mathbb V$ vetores, dizemos que eles são linearmente dependentes quando algum determinado vetor do conjunto puder ser escrito como uma [[Matemática/Álgebra Linear/Combinação Linear|combinação linear]] dos demais, caso o contrário os vetores são linearmente independentes.

Para um conjunto de vetores linearmente independentes temos que 
$$\large\begin{gather}
{\Large\sum_{i=1}^n a_iv_i} = 0 \implies a_i = 0\ \forall\ i \end{gather}$$

## Relacionado

- [[Matemática/Geometria Analítica/Combinação Linear|Combinação Linear]] de geometria analítica para combinações lineares no $\mathbb R ^ 2$ e $\mathbb R ^ 3$.

[^1]: Incluindo o $\mathbb R ^ 1$, ou seja, também se aplica o conceito de combinação linear menos relacionado com álgebra linear.
