---
tags:
  - matemática
  - incompleto
authors: Júlio César
aliases:
  - Autovalores
---
## Definição

Seja $\large T$ um [[Transformação Linear#Definição|operador linear]] em um espaço $\large V$, autovetores de $\large T$ são os vetores que são paralelos às suas formas transformadas
$$\large \textbf v \in V, \textbf v \ne \mathbf 0 , \exists \lambda \in \mathbb R:  T(\textbf v) = \lambda \textbf  v$$
Para cada autovetor, o $\large \lambda$ é denominado **autovalor**, que é o coeficiente que iguala o autovetor a sua versão transformada.

Cada autovalor possui um espaço associado, que é o espaço de todos os autovetores que o tem de autovalor. Todo autovalor gera um [[espaço vetorial]] associado a si, que são os vetores que o tem de autovalor. A dimensionalidade desse subespaço é denominada **multiplicidade geométrica** do autovalor, por exemplo, para a transformação linear

$$\large \begin{gather}
T: \mathbb R^3 \to \mathbb R^3 \\ \\
T(\textbf v):= \begin{bmatrix}
1 & -2 & 0\\
-2& 1  & 0 \\0 & 0 & 3
\end{bmatrix}\Huge \textbf v &
\begin{matrix}

\end{matrix}
\end{gather}$$

A transformação linear tem autovalores $\large 3$ e $\large -1$. Para o autovalor $\large -1$ qualquer vetor da forma $\large (0,0,\alpha)^T$ vale, logo temos que sua multiplicidade geométrica é $\large 1$. Para o autovalor $\large 3$, temos que qualquer vetor da forma $\large (\beta,-\beta,\alpha)^T$ é paralelo ao seu produto, logo esse autovalor tem multiplicidade geométrica $\large 3$.

## Polinômio Característico

Todo operador linear em um espaço vetorial de dimensão finita pode ser definido em termos de uma [[Transformação Linear#Matrizes Como Transformações Lineares|multiplicação matricial]] da forma
$$\large T(\textbf x) = A \textbf x$$
Onde $\large \textbf x$ é o coeficiente de cada vetor da base, $\large A$ uma matriz quadrada. Queremos encontrar autovalores $\large \lambda$ e autovetores $\large \textbf x$ onde $\large T(\textbf x) = \lambda \textbf x$. Ou seja, queremos achar soluções para a equação

$$\large A \textbf x = \lambda \textbf x $$

Transformando temos

$$\large \begin{gather}
A \textbf x = \lambda \textbf x \\
A \textbf x - \lambda \textbf x = \textbf 0 \\
A \textbf x - \lambda I \textbf x = \textbf 0 \\
(A-\lambda I)\textbf x= \textbf 0
\end{gather}$$
Como queremos todas as soluções não triviais ($\large \textbf x \ne \textbf 0$), a equação só tem soluções quando a matriz $\large (A-\lambda I)$ é [[Matriz#Matriz Inversa|invertível]], ou seja, $\large \det(A-\lambda I) = 0$.

Os autovalores da transformação são todos os $\large \lambda$ que satisfazem a equação
$$\large |A - \lambda I| = 0$$
A única incógnita real da equação é $\large \lambda$, o resultado dessa determinante é então um polinômio em termos de $\large\lambda$. Como $\large\lambda$ é um termo polinomial, podem existir várias soluções válidas para o polinômio característico. Os autovetores do autovalor são todos que, para qualquer $\large \lambda$ válido obedecem a igualdade
$$\large (A - \lambda I) \mathbf x = \mathbf 0$$
Esse sistema pode ser resolvido por meio de uma [[Sistema Linear#Resolução do Sistema Linear|redução gaussiana]].

