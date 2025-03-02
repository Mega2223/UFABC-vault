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

$$\Large M=\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \cdots & a_{mn}
\end{bmatrix}$$

## Operações

São operações matriciais:
### Multiplicação de matrizes
Sejam $A$, $B$ e $C$ matrizes, $C = AB$, para definir cada elemento de $C$ se usa a fórmula:
$$\large C_{ij} =\sum_{k=1}^{p}A_{ik}B_{kj}$$
 É necessário que o número de colunas de $A$ seja igual ao número de linhas em $B$
### Multiplicação matriz vetor
Seja $A$ uma matriz e $\vec{v}$ um vetor, podemos considerar $\vec{v}$ como uma matriz de uma coluna:
$$\begin {align}\large \vec{v} \in \mathbb{V}^n = \begin{bmatrix}v_1 \\ \vdots \\ v_n \end{bmatrix} \end{align}$$
Assim, $M\vec{v}$ é calculável. O [[Vetor#Produto escalar|produto escalar]] de dois vetores é ocasionalmente escrito como $a^Tb$.
## Matriz Identidade

Uma matriz identidade $I$ é uma matriz de $m = n$ tal qual $MI = M\ \ \forall M$ válido.
$$\large I_{ij} = \begin{cases}
1,&i=j \\ 0,& i \ne j
\end{cases}$$
## Matriz Inversa

A matriz $M^{-1}$ é inversa de $M$ se e somente se
$$M M^{-1} = I$$
A matriz inversa não existe caso o [[Matriz#Determinante|determinante]] de $M$ seja 0 ou caso $M$ não seja uma matriz quadrada.

## Transposição

A transposição $M^T$ é uma transposição de $M$ se e somente se:
$$\large M_{ij} = M^T_{ji}$$
## Determinante

O determinante a variável que possibilita verificar se uma matriz possui matriz inversa. Se dá pela notação:
$$|M| = \text{det}(M)$$
Se o determinante de uma matriz é 0 ela não possui matriz inversa.
### Determinante $M^2$
O determinante de uma matriz 2x2 se dá por:$$\text{det}\begin{pmatrix}a_{11} & a_{12}\\a_{21} & a_{22} \end{pmatrix} = a_{11}a_{22}-a_{12}a_{21}$$
### Determinante $M^3$
O determinante de uma matriz 3x3 se dá por:$$\text{det}
\begin{pmatrix}
a_{11} & a_{12} & a_{13}  \\
a_{21} & a_{22} & a_{23}  \\
a_{31} & a_{32} & a_{33}
\end{pmatrix} = (a_{11}a_{22}a_{33}+a_{12}a_{23}a_{31}+a_{13}a_{21}a_{32})-(a_{31}a_{22}a_{13}+a_{32}a_{23}a_{11}+a_{33}a_{21}a_{12})$$ 
