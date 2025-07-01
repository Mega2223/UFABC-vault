---
tags:
  - incompleto
  - computação
  - matemática
  - algoritmo
authors: Júlio César
aliases:
  - simplex
  - método simplex
---
## Definição

O Método Simplex é um método de otimização de um [[Modelo Linear]] que visa encontrar os vértices nas extremidades da área viável do problema e gradualmente melhorar a solução até a obtenção da solução $X$.
A complexidade teórica do método é exponencial pois o número de vértices do politopo se dá pelo [[Análise Combinatória#Combinação simples#Coeficiente Binomial|coeficiente binomial]] $\large \binom{n}{m}$ do número de variáveis $n$ e o número de restrições $m$. Todavia o caso o qual o algoritmo deve visitar todos os vértices do politopo é extremamente raro.
## Variáveis do problema
//todo move isso pra [[Modelo Linear]]
$$\large(\min |\max)\ \ Z =\bigg(\sum_{i=1}^n x_i a_i\bigg)$$
- $Z$ é a função objetivo.
- $(\min |\max)$ minimização ou maximização dos coeficientes.
- As demais variáveis são variáveis do [[Modelo Linear]] linear.

## Resolução Matricial

### Problema
Para a resolução em Simplex em geral é utilizada a [[Modelo Linear#Forma padrão|forma padrão do modelo]], por exemplo: 
$$\begin{gather} \large \min z = -3x_1 -5x_2 \\\\ x_1 + x_3 = 4 \\ x_2 + x_4 = 6 \\ 3x_1 + 2x_2 + x_5 = 18 \end{gather}$$

### Variáveis
São as variáveis do problema
- $n$ : Número de variáveis.
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
$$\large x_B = \begin{bmatrix}x_3, x_4 ,x_5\end{bmatrix}$$
O vetor $x_R$ é o vetor de todas as variáveis não-básicas do problema, por exemplo:
$$\large x_R = \begin{bmatrix}x_1, x_2 \end{bmatrix}$$
A matriz $B$ é a matriz de somente os coeficientes básicos enquanto a matriz $R$ é a matriz dos coeficientes não-básicos, por exemplo:
$$\large \begin {align}
R =\begin{bmatrix}
1 && 0 \\ 0 && 1\\ 3 && 2
\end{bmatrix} &&
B =\begin{bmatrix}
1 && 0 && 0\\ 0 && 1 && 0\\0&& 0 && 1
\end{bmatrix}
\end{align}$$
Note como todas as variáveis de folga não tem relações lineares umas com as outras, assim, o lado direito da matriz $A$ *geralmente* tem forma de uma [[Matriz#Matriz Identidade|matriz de identidade.]] Se $x$ cumpre com a condição de não-negatividade, temos então como uma solução básica qualquer
$$\large \begin{gather}
Ax = b \\
B\ x_B + R\ x_R = b
\end{gather}
$$
O vetor $c$ é o coeficiente linear das variáveis na função objetivo:
$$\large c =\begin{bmatrix}-3,- 5,0,0,0\end{bmatrix}$$
O vetor $c_j$ é o vetor de custos reduzidos na função objetivo, inicialmente ele é igual a $c$ mas ele muda conforme operações de pivoteamento são feitas.
### Solução
Encontrar a solução ótima envolve encontrar uma solução viável e trocar as variáveis básicas e não básicas afim de melhorar esta solução até achar um vértice no polígono de viabilidade que é ótimo ao problema. Deve-se lembrar que todas as variáveis não-básicas são 0, logo
$$\large z =  c_B^T x_B$$
Em qualquer $z$ válido.

Para encontrar a solução ótima, pivoteamos algumas variáveis básicas para as não-básicas por meio de seu $\text{Cr}$, como $B = I$ **sempre**, são necessárias operações normalizadoras para cumprir com esta propriedade, podemos montar o nosso problema da seguinte forma:

$$\Large
\begin{bmatrix}
A & b\\ -c^T
\end{bmatrix}
$$
Como por exemplo
$$\large
\begin{gather}
\begin{bmatrix}
1 & 0 & 1 & 0 & 0 & |&4\\
0 & 1 & 0 & 1 & 0 & |& 6 \\
3 & 2 & 0 & 0 & 1 & |& 18 \\
3 & 5 & 0 & 0 & 0 & |& 
\end{bmatrix}
\end{gather}
$$
É necessário selecionar uma variável de pivoteamento, em problemas de minimização selecionamos a coluna com o maior elemento de $c_j$, enquanto em maximização selecionamos a coluna com menor elemento de $c_j$, as variáveis em $c_j$ então são denominadas como variáveis de custos reduzidos.
Para encontrar a linha de pivoteamento, dividimos todas as variáveis em $b$ pelos seus respectivos elementos na coluna que selecionamos de $A$, selecionamos a coluna com menor resultado **maior que 0**.

$$\large
\begin{flalign}
%\begin{matrix}
%x_1 & x_2 & x_3 & x_4 & x_5
%\end{matrix}\\
\begin{bmatrix}
1 & 0 & 1 & 0 & 0 & |&4\\
0 & 1 & 0 & 1 & 0 & |& 6 \\
3 & 2 & 0 & 0 & 1 & |& 18 \\
3 & 5 & 0 & 0 & 0 & |& 
\end{bmatrix}  &
\begin{matrix}
4/0 = \infty \\\ \ \ 6/1 = 6 \leftarrow \\18/3=9 \\ \ \end{matrix}
\\ \begin{matrix}\ &\ &\uparrow&\ &\ &\ \ &\ \ &\ \ &\ \ \end{matrix} &
\end{flalign}
$$

Para pivotear a variável, precisamos reduzir suas propriedades para as propriedades de uma variável básica, isso é, manter a propriedade de $B = I$, primeiramente, deve-se dividir toda sua linha pelo valor da variável de pivoteamento, afim de normalizar a linha e tornar a variável $1$, como neste caso a variável já é 1, podemos pular esse passo.
Em seguida, precisamos que todas as demais variáveis na coluna sejam 0, incluindo as variáveis do vetor $c$, podemos subtrair as qualquer linha pela linha sendo pivoteada multiplicada por um escalar, como a linha pivoteada já foi normalizada em torno do nosso pivô, é fácil achar um escalar que se encaixe nessa propriedade.
Na terceira linha, subtraímos cada elemento por $2A_2$, na quarta linha fazemos a subtração por $5A_2$
$$\large\begin{bmatrix}
1 & 0 & 1 & 0 & 0 & |&4\\
0 & 1 & 0 & 1 & 0 & |& 6 \\
3 & 0 & 0 & -2 & 1 & |& 6 \\
3 & 0 & 0 & -5 & 0 & |& 
\end{bmatrix}$$
Agora temos uma nova solução válida para o problema, note que as colunas 3, 2, 5 formam uma matriz identidade, logo $x_3, x_2, x_5$ são as variáveis básicas dessa solução, enquanto $x_1,x_4$ são as não-básicas. Como esta solução não confere com o [[Método Simplex#Propriedades#Otimalidade|critério de otimalidade]], precisamos repetir o processo de novo com outra variável.
$$\begin{gather}
\begin{bmatrix}
1 & 0 & 1 & 0 & 0 & |&4\\
0 & 1 & 0 & 1 & 0 & |& 6 \\
3 & 0 & 0 & -2 & 1 & |& 6 \\
3 & 0 & 0 & -5 & 0 & |& 
\end{bmatrix}
& \longrightarrow &
\begin{bmatrix}
0 & 0 & 1 & \frac{2}{3} & -\frac{1}{3} & |&2\\
0 & 1 & 0 & 1 & 0 & |& 6 \\
1 & 0 & 0 & -\frac{2}{3} & \frac{1}{3} & |& 2 \\
0 & 0 & 0 & -3 &-1 & |& 
\end{bmatrix}
\end{gather}
$$
Como ambos os $\text{Cr}$ são negativos, a solução é ótima. Temos então $x_1 = 2, x_2 = 6, x_3 = 2$ como solução ótima.
## Propriedades
### Otimalidade
A solução é considerada ótima se:
- $\min$: todos custos reduzidos são não-negativos
- $\max$: todos custos reduzidos são não-positivos
$$c_j - z_j \le 0$$
### Degeneração
A solução é considerada degenerada se a troca de uma restrição da base por outra mantém a otimalidade da solução sem mudar o valor das variáveis da solução, ou seja, existe alguma restrição desnecessária no problema. Quando uma variável básica no problema é zero, pode-se dizer que a solução é degenerada.
### Crescimento Ilimitado
Caso não haja variável positiva na coluna do ponto de pivoteamento, essa variável têm um crescimento ilimitado, ou seja, não há solução ótima para o problema.
### Variável Artificial
//todo
## Simplex Dual

O simplex dual é um método para soluções ótimas mas não viáveis, em vez de pivotear variáveis a fim de alcançar a otimalidade, se pivoteiam elas para alcançar a viabilidade sem perca da otimalidade, no caso são encontradas variáveis com coeficientes negativos em $b_i$ e estas são pivoteadas pra fora, em seu lugar entra a variável cujo o $\text{Cr}/a_p$ é **menor**.