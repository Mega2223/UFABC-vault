---
authors: Júlio César
tags:
  - matemática
  - incompleto
  - computação
---
## Definição

A análise de sensibilidade é o estudo da mudança do comportamento de um [[Modelo Linear|modelo de otimização linear]] conforme mudanças no problema.

## Mudança em um coeficiente da função objetivo

A mudança posterior de um coeficiente da função objetivo não afeta de qualquer forma a viabilidade do problema, mas pode afetar a otimalidade.

Seja um valor $\Delta$ adicionado a algum coeficiente $c_k$, se $x_k$ estiver na base, a solução ótima do novo problema será a mesma do problema anterior se e somente se, para toda variável $\large x_j$ da base:
$$
\large \begin{cases}
\Delta \ge \Large \frac{c_j-z_j}{a_{kj}} && \text{se } a_{kj} \gt0 \\
\Delta \le \Large \frac{c_j-z_j}{a_{kj}} && \text{se } a_{kj} \lt0
\end{cases}$$
Caso $x_k$ não esteja na base, a solução é ótima se e somente se
$$\large
\Delta \le -(c_k - z_k)
$$
#### Exemplo
Podemos reorganizar um simplex resolvido de tal forma que
$$\begin{bmatrix}
&X_N& X_B \\
X_B & B^{-1} a_j & I &B^{-1}b\\
&c_B B^{-1} a_j -c & 0
\end{bmatrix}
$$
## Mudança de restrição existente

A mudança de um elemento de $b$ é um deslocamento de variável, que pode afetar tanto a viabilidade como a otimalidade.

Dado um problema resolvido com base $A_B$ e um elemento $b_k$ é deslocado por quantidade $\Delta$,

//todo coloca a fórmula, ela é enorme
## Adição de variável ao problema

A adição de uma variável $x_{n+1}$ sem mudança em $b$ ou $c$ implica a criação de uma nova coluna $a_{n+1}$ em $A$ e um novo elemento $c_{n+1}$ em $c$. Seguindo as regras de otimalidade, a nova solução será ótima se e somente se $c_{n+1} - z_{n+1} \le 0$, caso ela não seja, incluímos $a_{n+1}$ na base. 
### Calculando $a_{n+1}$

//todo
## Adição de restrição ao problema

A adição de uma nova restrição no problema pode implicar uma perda da viabilidade da solução, mas nunca uma perda da otimalidade, assim, caso inviável, deve-se usar o [[Método Simplex#Simplex Dual|Simplex Dual]] para encontrar uma solução ótima e viável.

A introdução da nova restrição resulta em uma nova variável de folga no tableau:
$$\begin{bmatrix}
A_B & A_N & 0 & b \\
R & 0 & 1 & b'
\end{bmatrix} \begin{matrix}\\ \leftarrow \text{nova restrição} \end{matrix}$$
O problema imediato dessa introdução é que se perde a propriedade de matriz identidade nas colunas das variáveis básicas, assim, por meio de operações elementares, é necessária a retomada dessa propriedade.
