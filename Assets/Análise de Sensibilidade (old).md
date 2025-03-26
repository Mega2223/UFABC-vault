---
tags:
  - incompleto
  - matemática
  - computação
authors: Júlio César
---
## Definição

A análise de sensibilidade é o estudo da mudança do comportamento de um [[Modelo Linear|modelo de otimização linear]] conforme mudanças no problema.

## Mudança de Variável

//todo eu honestamente não entendi essa, e eu tb n entendi a explicação do Goldbarg ou as notas do Jerônimo, deus me ajude

Inserindo uma nova variável em $x_B$, ela não entra imediatamente para a base, sua coluna não reflete os seus coeficientes iniciais mas sim eles depois de suas transformações, assim deve-se inserir uma nova coluna em $A$ entre as variáveis do problema e as de folga
$$\large a'_{n+1} = A_B^{-1}a_{n+1}$$
Por exemplo, dado o tableau final
$$
\begin{gather}
\max x_1 + 2x_2 \\ x_1 + x_2 \le 10 \\ -3x_1 + 5x_2 \le 15 \\ x_2 \le 5 \\ x \ge 0 \\
\\
\large \begin{matrix}x_1\ &x_2\ &s_1\ &s_2\ &s_3\ \end{matrix}\\
\large \begin{bmatrix}
1 & 0 & 1 & 0 & -1 & | & 5 \\
0 & 0 & 3 & 1 & -8 & | & 5 \\
0 & 1 & 0 & 0 & 1 & | & 5 \\
0 & 0 & -1 & 0 & -1 & |
\end{bmatrix}
\end{gather}
$$

Podemos inserir variável $x_3$ tal qual 
$$
\begin{gather}
\max x_1 + 2x_2 + 3x_3 \\
x_1 + x_2 + x_3\le 10 \\ -3x_1 + 5x_2 + 2x_3 \le 15 \\ x_2 +x_3\le 5 \\ x \ge 0
\end{gather}
$$
$$\Large a_3' = A_B^{-1}a_3 = 
\begin{bmatrix} 1 & 0 & -1 \\ 3 & 1 & -8 \\ 0&0&1\end{bmatrix}
\begin{bmatrix}1\\2\\1\end{bmatrix} = 
\begin{bmatrix}0\\-3\\1\end{bmatrix}
$$
Para descobrir o custo reduzido da variável:
$$\begin{gather} 
z = c_B^T A_N \ \ \ \ \ \ \ \text{Cr}_3 = c_N^T - z \\ \\
c_B^T = (x_1,s_2,x_2) = (1,0,2) \text{  (da tabela inicial)}\\ \\
A_N = \begin{bmatrix}1&-1&0\\3&-8&-3\\0&1&1\end{bmatrix} \text{(da tabela final, vai entender)} \\ \\ c^T_N = (0,0,3) \\ \\ \text{Cr}_3 = 1
\end{gather}
$$
Caso esse coeficiente seja positivo, a solução não é mais ótima. Pode-se também tornar o problema ilimitado ou inviável.

## Mudança de Custos
// todo isso tá errado 
Uma mudança no vetor de custos $c$ afeta diretamente a condição de otimalidade da solução $x$, ao inserir essa variável no tableau, ela entra como variável básica, são necessárias modificações para cumprir com as  propriedades do tableau antes de avaliar o impacto da restrição, por exemplo, dado um tableau:

$$\begin{gather}
\max x_1 + 3x_2 \\ -x_1 + 4x_2 + x_3= 10 \\ x_1 + x_4 = 4 \\ \\
\begin{matrix}x_1 \\ x_2\end{matrix}
\begin{bmatrix}
0 & 1 & 1/4 & 1/4 & | & 7/2 \\ 1 & 0 & 0 & 1 & | & 4
\end{bmatrix}
\end{gather}$$

Inserindo a restrição $x_1 + 2x_2 \le 6 \rightarrow x_1 + 2x_2 + x_5 = 6$ temos

$$\begin{align}
\begin{matrix}x_1 & x_2 & x_3 & x_4 & x_5 & & b &\ \ \end{matrix}\\
\begin{matrix}x_1 \\ x_2\\x_5\end{matrix}
\begin{bmatrix}
0 & 1 & 1/4 & 1/4 & 0 & | & 7/2 \\ 1 & 0 & 0 & 1 & 0 & | & 4 \\ 1 & 2 & 0 & 0&1 & | & 6
\end{bmatrix}
\end{align}$$
Que viola a condição de matriz identidade das variáveis básicas, assim são feitas as mesmas operações de pivoteamento convencional para zerar a linha $x_5$ em $x_1$ e $x+2$
$$l_3 = l_3 - 2l_1 - l_2$$
$$\begin{align}
\begin{matrix}x_1 & x_2 & x_3 & x_4 & x_5 & & b &\ \ \end{matrix}\\
\begin{matrix}x_1 \\ x_2\\x_5\\\text{Cr}\end{matrix}
\begin{bmatrix}
0 & 1 & 1/4 & 1/4 & 0 & | & 7/2 \\ 1 & 0 & 0 & 1 & 0 & | & 4 \\0 & 0 & -1/2 & -3/2&1 & | & 6 \\ 0 & 0 & -3/4 & -7/4 & 0 & | &
\end{bmatrix}
\end{align}$$
Como a variável entra na base, seu $\text{Cr}$ inicial é 0, a entrada de uma restrição não gera mudança de recursos nem de custos reduzidos, mas gera uma mudança em $b$, assim, ela pode afetar a sua viabilidade não sua otimalidade. Caso a viabilidade seja violada com essa nova restrição deve-se aplicar o [[Método Simplex#Simplex Dual|simplex dual]] para restaurar a viabilidade da solução.
## Mudança de Restrições

A adição de uma restrição implica a adição de uma variável de folga no vetor $x$, esta não causa qualquer mudança na otimalidade do problema, mas pode afetar sua viabilidade, assim, caso tornado inviável o problema, deve-se aplicar o [[Método Simplex#Simplex Dual|simplex dual]] para retomar-se a viabilidade do problema.
$$\begin{bmatrix}
A_B & A_N & 0 & b \\
R & 0 & 1 & b'
\end{bmatrix} \begin{matrix}\\ \leftarrow \text{nova restrição} \end{matrix}$$
É necessário, assim como na mudança de custos, colocar uma matriz identidade em referência às colunas das variáveis básicas, como $R$ não respeita essa regra também deve-se fazer operações elementares para zerar o valor da nova fileira no tableau.
Depois que a nova fileira estiver de acordo com o tableau, se a solução é inviável, se aplica o simplex dual para resolver o problema de volta à viabilidade.