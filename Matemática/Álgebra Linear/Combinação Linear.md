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
## Dependência Linear

Se temos um conjunto de $v_i \in \mathbb V$ vetores, dizemos que eles são linearmente dependentes quando algum determinado vetor do conjunto puder ser escrito como uma [[Matemática/Álgebra Linear/Combinação Linear|combinação linear]] dos demais, caso o contrário os vetores são linearmente independentes.

Para um conjunto de vetores linearmente independentes temos que 
$$\large\begin{gather}
{\Large\sum_{i=1}^n a_iv_i} = 0 \implies a_i = 0\ \forall\ i \end{gather}$$

## Relacionado

- [[Matemática/Geometria Analítica/Combinação Linear|Combinação Linear]] de geometria analítica para combinações lineares no $\mathbb R ^ 2$ e $\mathbb R ^ 3$.

[^1]: Incluindo o $\mathbb R ^ 1$, ou seja, também se aplica o conceito de combinação linear menos relacionado com álgebra linear.
