---
tags:
  - geometria-analitica
  - matemática
authors: Júlio César
aliases:
  - matricial
---
## Definição

Uma matriz é um conjunto ordenado de números reais com  $m \in \mathbb{N}$ linhas $n \in \mathbb{N}$ colunas:

$$\large M=\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \cdots & a_{mn}
\end{bmatrix}$$

## Operações
### Multiplicação de matrizes
Sejam $\large A$, $\large B$ e $\large C$ matrizes, $\large C = AB$, para computar cada elemento de $C$ se usa a fórmula:
$$\large C_{ij} =\sum_{k=1}^{p}A_{ik}B_{kj}$$
 É necessário que o número de colunas de $\large A$ seja igual ao número de linhas em $\large B$.
### Multiplicação matriz vetor
Seja $\large A$ uma matriz e $\large \vec{v}$ um vetor, a convenção é considerar $\large \vec{v}$ como uma matriz de uma coluna:
$$\begin {align}\large \vec{v} \in \mathbb{V}^n = \begin{bmatrix}v_1 \\ \vdots \\ v_n \end{bmatrix} \end{align}$$
Assim, $\large M\vec{v}$ é calculável. O [[Vetor#Produto escalar|produto escalar]] de dois vetores pode ser escrito como $\large a^Tb$.
## Matriz Identidade

Uma matriz identidade $I$ é uma matriz de $\large m = n$ tal qual $\large MI = M\ \ \forall M$ válido. A matriz identidade possui valores $\large 1$ em toda sua diagonal e $\large 0$ nas demais posições.
$$\large I_{ij} = \begin{cases}
1,&i=j \\ 0,& i \ne j
\end{cases}$$
## Matriz Inversa

A matriz $\large M^{-1}$ é inversa de $\large M$ se e somente se 
$$\large M M^{-1} = I$$
A matriz inversa não existe caso o [[Matriz#Determinante|determinante]] de $\large M$ seja 0 ou caso $\large M$ não seja uma matriz quadrada.
### Propriedades da Inversão
Sejam $\large A, B$ quaisquer matrizes invertíveis:
- $\large (A^{-1})^{-1} = A$
- $\large (AB)^{-1} = B^{-1} A^{-1}$
- $\large (A^T)^{-1} = (A^{-1})^T$
## Transposição

A matriz $\large M^T$ é uma transposição de $\large M$ onde:
$$\large M_{ij} = M^T_{ji}$$
## Menor

Dada uma matriz $\large A$, o menor com respeito ao elemento $\large a_{ij}$ é a matriz decorrente da retirada da $\large i$-ésima linha e $\large j$-ésima coluna de $\large A$.
## Determinante

O determinante a variável que possibilita verificar se uma matriz possui matriz inversa, se o determinante de uma matriz é 0 ela não possui matriz inversa. O determinante dá pela notação
$$\large|M| = \text{det}(M)$$

Onde o determinante é definido recursivamente de acordo com uma soma do produto de cada elemento da matriz com seus respectivos [[#menor|menores]], ou simplesmente o único valor real da matriz quando ela converge ao caso base $\large M \in \mathbb R$. Seja $\large A_{ij}$ o menor de uma matriz $\large M \in \mathbb R^{n \times n}$ com respeito a $\large a_{ij} \in M$, o determinante se dá por:
$$\large
\det(M) :=
\Bigg \{
\begin{gather}
a_{11} &A_{ij} = \not \text O \\ 
\sum_{j=1}^n (-1)^{i+j} a_{ij} \det (A_{ij})


\end{gather}$$
Onde $\large i$ é o índice de alguma linha qualquer da matriz.
### Determinante $M^{2\times2}$
O determinante de uma matriz $2\times2$ se dá por:$$\large \text{det}\begin{pmatrix}a_{11} & a_{12}\\a_{21} & a_{22} \end{pmatrix} = a_{11}a_{22}-a_{12}a_{21}$$
### Determinante $M^{3\times 3}$
O determinante de uma matriz $3 \times 3$ se dá por:$$\text{det}
\begin{pmatrix}
a_{11} & a_{12} & a_{13}  \\
a_{21} & a_{22} & a_{23}  \\
a_{31} & a_{32} & a_{33}
\end{pmatrix} = (a_{11}a_{22}a_{33}+a_{12}a_{23}a_{31}+a_{13}a_{21}a_{32})-(a_{31}a_{22}a_{13}+a_{32}a_{23}a_{11}+a_{33}a_{21}a_{12})$$ 
## Matriz Triangular

Uma matriz triangular é uma matriz em que todo elemento acima ou abaixo da diagonal é igual a zero.
### Inverso
A matriz inversa de uma matriz triangular é uma matriz com cada elemento sendo o inverso real do elemento de $\large A$

$$\large A^{-1}_{ij} = \frac {1} {A_{ij}} \text{ sse } A \text{ é diagonal}$$ 