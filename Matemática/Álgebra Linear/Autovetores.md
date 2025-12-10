---
tags:
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

Seja $\large T$ um [[Transformação Linear#Definição|operador linear]] em um espaço $\large V$, autovetores de $\large T$ são os vetores que são paralelos às suas formas transformadas
$$\large  v \in V, v \ne 0 , \exists \lambda \in \mathbb R:  T(v) = \lambda v$$
Para cada autovetor, o $\large \lambda$ é denominado **autovalor**, que é o coeficiente que iguala o autovetor a sua versão transformada.

Cada autovalor possui um espaço associado, que é o espaço de todos os autovetores que o tem de autovalor. Todo autovalor gera um [[espaço vetorial]] associado a si, que são os vetores que o tem de autovalor. A dimensionalidade desse subespaço é denominada **multiplicidade geométrica** do autovalor, por exemplo, para a transformação linear
$$\large \begin{gather}
T: \mathbb R^3 \to \mathbb R^3 \\
T(v):= \begin{bmatrix}
1 & -2 & 0\\
-2& 1  & 0 \\0 & 0 & 3
\end{bmatrix}\Huge v &
\begin{matrix}

\end{matrix}
\end{gather}$$
A transformação linear tem autovalores $\large 3$ e $\large -1$. Para o autovalor $\large -1$ qualquer vetor da forma $\large (0,0,\alpha)^T$ vale, logo temos que sua multiplicidade geométrica é $\large 1$. Para o autovalor $\large 3$, temos que qualquer vetor da forma $\large (\beta,-\beta,\alpha)^T$ é paralelo ao seu produto, logo esse autovalor tem multiplicidade geométrica $\large 3$.