---
tags:
  - matemática
  - incompleto
---
## Definição

Em cálculo uma função multivaríavel (ou de várias variáveis) geralmente é uma função que possui varias variáveis ou no domínio ou no contradomínio, normalmente nos interessam mais funções do tipo $\large f: \mathbb R ^n \to \mathbb R$, que não podem ser [[Derivada|diferenciadas]] como funções de uma variável.

De forma geral, funções do tipo $\large f: \mathbb R \to \mathbb R^m$ podem ser definidas em um conjunto de subfunções e analisadas como funções de uma variável:
$$\large \begin{gather}
f: \mathbb R \to \mathbb R^m \\
f(x)= \langle f_1 (x) , \dots , f_m(x) \rangle
\end{gather}$$
Enquanto funções to dipo $\large f: \mathbb R^n \to \mathbb R^m$ podem ser decompostas em várias funções de tipo $\large f: \mathbb R ^n \to \mathbb R$:
$$\large \begin{gather}
f: \mathbb R^n \to \mathbb R^m \\
f(x_1, \dots,x_n)= \langle f_1 (x_1, \dots,x_n) ,\ \dots ,\ f_m(x_1, \dots,x_n) \rangle
\end{gather}$$
O que é particularmente útil para encontrar a [[jacobiana]] de uma matriz.

## Limite e Continuidade

Seja $\large f : U \subseteq \mathbb R^n \to \mathbb R$ uma função, o [[limite]] de $\large f$ em um determinado ponto $\large \mathbf x_0$ é para ondem tende qualquer caminho de pontos arbitrários em seu domínio, temos que
$$\begin{gather}\Large \lim_{\mathbf x \to \mathbf x_0 } f(\mathbf x ) = L  \\ {\Huge\Updownarrow} \\
 \large \forall \epsilon > 0\ \exists \delta > 0\ \forall \mathbf x \in U: 0\lt  ||\mathbf x - \mathbf x_0|| \lt \epsilon \implies f(\mathbf x) - L \lt \delta 
\end{gather}$$