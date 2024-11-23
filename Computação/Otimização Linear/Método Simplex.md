---
tags:
  - incompleto
  - computação
  - matemática
authors: Júlio César
---
## Definição

O Método Simplex é um método de otimização de um [[modelo]] que visa encontrar os vértices nas extremidades da área viável do problema e gradualmente melhorar a solução até a obtenção da solução $X$.
## Variáveis do problema
$$\large(\min |\max)\ \ Z =\bigg(\sum_{i=0}^n x_i a_i\bigg)$$
- $Z$ é resultado da função objetivo.
- $(\min |\max)$ minimização ou maximização dos coeficientes.
- As demais variáveis são variáveis do [[modelo]] linear.

## Resolução Matricial

### Problema
Para a resolução em Simplex em geral é utilizada a [[Modelo#Forma padrão|forma padrão do modelo]], por exemplo: 
$$\begin{gather} \large \min z = -3x_1 -5x_2 \\\\ x_1 + x_3 = 4 \\ x_2 + x_4 = 6 \\ 3x_1 + 2x_2 + x_5 = 18 \end{gather}$$

### Variáveis
São as variáveis do problema
- $n$ : Número de variáveis da função objetivo incluindo variáveis de folga.
- $m$: Número de restrições \\ variáveis de folga.
- $x$: Vetor de todas as variáveis do problema.
- $C$: Conjunto de todas as soluções viáveis do problema

A matriz $A$ é a matriz dos coeficientes lineares de todas as igualdades do problema:
$${\Huge A} \large =\begin{bmatrix}
1 && 0 && 1 && 0 && 0 \\
0 && 1 && 0 && 1 && 0 \\
3 && 2 && 0 && 0 && 1
\end{bmatrix}$$
O vetor $x_B$ é o vetor de todas as variáveis básicas do problema, o número de variáveis básicas é o número de linhas em $A$, por exemplo:
$$\large x_B = \begin{bmatrix}x_1, x_2 ,x_3\end{bmatrix}$$
O vetor $x_R$ é o vetor de todas as variáveis não-básicas do problema, por exemplo:
$$\large x_R = \begin{bmatrix}x_4, x_5 \end{bmatrix}$$
A matriz $B$ é a matriz de somente os coeficientes básicos enquanto a matriz $R$ é a matriz dos coeficientes não-básicos, por exemplo:
$$\large \begin {align}
B =\begin{bmatrix}
1 && 0 && 1 \\ 0 && 1 && 0 \\ 3 && 2 && 0
\end{bmatrix} &&
R =\begin{bmatrix}
0 && 0\\ 1 && 0\\ 0 && 1
\end{bmatrix}
\end{align}$$
Note como todas as variáveis de folga não tem relações lineares umas com as outras, assim, o lado direito da matriz $A$ *geralmente* tem forma de uma [[Matriz#Matriz Identidade|matriz de identidade.]] Se $x$ cumpre com a condição de não-negatividade, temos então como uma solução básica qualquer
$$\large \begin{gather}
Ax = b \\
B\ x_B + R x_R = b
\end{gather}
$$

### Solução
Encontrar a solução ótima envolve encontrar uma solução viável e trocar as variáveis básicas e não básicas afim de melhorar esta solução até achar um vértice no polígono de viabilidade que é ótimo ao problema.


## Resolução por Tableau
### Tableau Simplex
Após dada a forma padrão do problema, podemos o plotar em uma tabela as igualdades resultantes e sua relação com as constantes

<table align="center">
<tr><th></th><th>x1</th><th>x2</th><th>x3</th><th>x4</th><th>x5</th><th>b</th>  </tr>
<tr> <th>x3</th> <th>1</th> <th>0</th> <th>1</th> <th>0</th> <th>0</th>  </tr>
<tr> <th>x4</th> <th>0</th> <th>1</th> <th>0</th> <th>1</th> <th>0</th>  </tr>
<tr> <th>x5</th> <th>3</th> <th>2</th> <th>0</th> <th>0</th> <th>1</th>  </tr>

</table>

Onde as variáveis na coluna direita são as [[Modelo#Variáveis básicas e não básicas|variáveis básicas]] do problema.

## Propriedades

### Solução degenerada
