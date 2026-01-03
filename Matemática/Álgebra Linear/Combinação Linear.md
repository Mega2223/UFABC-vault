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
U \subseteq  V, |U| = n \\
\\
\Large c = \sum_{i=1}^n a_i v_i\\ \\
a_i \in \mathbb R,v_i \in  V
\end{gather}
$$
## Bases Geradoras

Um conjunto de $\large v_n \in V$ vetores não nulos pode formar um [[Espaço Vetorial#Subespaço Vetorial|subespaço]] de acordo com todas as combinações lineares possíveis deste subconjunto. Se o conjunto é [[#Dependência Linear|linearmente dependente]] então o mesmo pode ser reduzido sem perda do conjunto final.

Seja $\large S \subseteq V$ um conjunto finito de vetores do espaço vetorial, temos que $[\ S \ ]$ é o subespaço vetorial gerado por $\large S$, que é o conjunto de todas as combinações lineares possíveis de elementos de $\large S$. Caso $\large S$ seja linearmente dependente, o conjunto pode ser reduzido sem que $\large [\ S\ ]$ sofra de alguma alteração.

$$\Large \big[S\big ] = \{s=\sum_{i=1}^n x_iv_i\ |\ x_i \in \mathbb R, v_i \in S, n = |S| \}$$

Se $\large \big[S\big] = V$ e todos os vetores de $S$ são linearmente independentes, dizemos que $\large S$ é uma base de $\large V$.
### Teoremas
Sejam $\large S, U$ quaisquer subconjuntos não vazios finitos de $\large V$:
- $\large S \subseteq [S]$
- $\large [[S]] = [S]$
- $\large S \subseteq U \implies [S] \subseteq [U]$
- $\large [V] = \large V$
## Sistema de Coordenadas

Seja  $\large S=(s_1,...,s_n)$ uma [[#Bases Geradoras|base geradora]] para um espaço $\large V$ (ou seja, $\large [S] = V$), claramente qualquer vetor em $\large V$ pode ser representado tanto como combinação de $\large S$.

Para qualquer base ordenada $\large S$, um vetor $\large \textbf x \in V$, pode ser descrito como uma combinação linear de membros de $\large S$, $\large \mathbf x = \alpha_1 \mathbf s_1 + ...+ \ \alpha_n \mathbf s_n$, usamos a notação

$$\Large [\mathbf x]_S = (s_1,...s_n)$$

para descrever os coeficientes lineares que formam $\large \mathbf x$ na base $\large S$.

## Transição Entre Sistemas de Coordenadas

Sejam $\large S = (\mathbf s_1 + \dots + \mathbf s_n)$ e $\large R = (\mathbf r_1 + \dots + \mathbf r_n)$ [[#Sistema de Coordenadas|sistemas de coordenadas]] diferentes para $\large V$, como $\large [S] = [R] = V$, temos que qualquer vetor $\large \mathbf v \in V$ que pode ser descrito em termos de uma combinação em $\large S$ também pode ser descrito em termos de uma combinação em $\large R$. Temos que existem dois conjuntos de incógnitas reais que constroem $\large \mathbf v$:

$$\large
\mathbf v = \begin{gather}
\alpha_1 \mathbf s_1 + \cdots + \alpha_n \mathbf s_n   \\
\beta_1 \mathbf r_1 + \cdots + \beta_n \mathbf r_n

\end{gather}
$$
Ou seja
$$\large {\mathbf v \Large=} \ \
\begin{bmatrix}
\alpha_1 \\ \vdots \\ \alpha_n
\end{bmatrix}_S
{\Large=}\ \
\begin{bmatrix}
\beta_1 \\ \vdots \\ \beta_n
\end{bmatrix}_R
$$
Temos que existe uma matriz $\large M = (a_{ij})$ tal que
$$\large \begin{bmatrix}
\alpha_1 \\ \vdots \\ \alpha_n
\end{bmatrix} = 
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{n1}  & \cdots & a_{nn}
\end{bmatrix}
\begin{bmatrix}
\beta_1 \\ \vdots \\ \beta_n
\end{bmatrix}
$$
Dizemos que $\large M$ é uma matriz de mudança de base de $\large R$ para $\large S$, cada coluna da matriz é um vetor da base $\large R$ escrito em termos da base $\large S$
$$\large {\Huge [M]_{R\to S}} := \begin{bmatrix}
(\mathbf r_1)_S,(\mathbf r_2)_S,\dots,(\mathbf r_n)_S
\end{bmatrix}$$
Para qualquer vetor $\large \mathbf v$, temos que
$$\large [\mathbf v]_S = [M]_{R\to S}[\mathbf v]_R$$
Essa operação é reversível
$$\large \large [\mathbf v]_R = ([M]_{R\to S})^{-1}[\mathbf v]_S$$
// TODO Exemplo 4.52. Jeronimo
// Exemplo 4.54. diz como vc encontra esses vetores (resolução de sistemas lineares duh)
## Dimensão

A dimensão $\large n$ é o número mínimo de vetores num espaço vetorial $\large V$ que [[#Bases Geradoras|geram]] $\large V$. Dado um subconjunto finito linearmente independente do espaço, se o mesmo não gera $\large V$, podemos incrementar elementos de $\large V$ que estão fora do espaço gerado até chegarmos em $\large V$. Dizemos que 

$$\large \text{dim}( V) = n$$
Um espaço é dito de dimensão finita se possui uma base finita de elementos que geram o espaço, caso contrário o espaço é dito infinito e a dimensão não é um número, por exemplo o espaço de todas as funções contínuas em um intervalo real não possui dimensão contável, logo também não possui base.

Seja $\large B$ um conjunto de $\large n$ vetores linearmente independentes gerando um espaço vetorial $\large V$, temos que o maior conjunto linearmente independente de vetores de $\large V$ tem tamanho $\large n$. Analogamente, todas as bases LI de $\large V$ tem o mesmo tamanho $\large n$, e qualquer conjunto LI de $\large n$ elementos gera o espaço $\large V$.
## Dependência Linear

Se temos um conjunto de $\large v_i \in V$ vetores, dizemos que eles são linearmente dependentes quando algum determinado vetor do conjunto puder ser escrito como uma [[Matemática/Álgebra Linear/Combinação Linear|combinação linear]] dos demais, caso o contrário os vetores são linearmente independentes.

Para qualquer conjunto de vetores temos que o conjunto é linearmente independente (**LI**) se e somente se um vetor não pode ser construído como combinação linear dos demais, ou seja, em um conjunto $\large S \subseteq V = \{\mathbf v_1,\dots,\mathbf v_n\}$, $\large S$ é LI se e somente o **único** grupo de coeficientes reais que satisfazem a equação

$$\large\begin{gather}
{\Large\sum_{i=1}^n a_i\mathbf v_i} =\textbf 0 \end{gather}$$
é o grupo $\large a_i = 0\ \forall i \in \{1,...,n \}$, caso exista algum outro grupo que também satisfaça essa equação, dizemos que $\large S$ é linearmente dependente (**LD**).
### Propriedade
- O vetor nulo pode ser construído com qualquer vetor, $\large \textbf 0 = 0\textbf v$, ou seja, todo conjunto com vetor nulo é LD.
- Se $\large S = \{\textbf v\}$ e $\large \textbf v \ne \textbf 0$ , então $\large S$ é LI
## Relacionado

- [[Matemática/Geometria Analítica/Combinação Linear|Combinação Linear]] de geometria analítica para combinações lineares no $\mathbb R ^ 2$ e $\mathbb R ^ 3$.

[^1]: Incluindo o $\mathbb R ^ 1$, ou seja, também se aplica o conceito de combinação linear menos relacionado com álgebra linear.
