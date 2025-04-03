---
tags:
  - algoritmo
  - computação
  - estatística
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

O perceptron é um #algoritmo de [[classificação]] binária, que mapeia uma determinada variável $x$ para um rótulo $\hat{y}$ com base em uma fronteira de decisão linear
$$\large
\hat f(x) = \begin{cases}
1 & w^Tx+b \ge0 \\
0 & w^Tx + b \lt 0
\end{cases}
$$
Onde $w$ e $b$ os hiperparâmetros do [[hiperplano#Definição|hiperplano]] que forma a fronteira de decisão do algoritmo.
## Função de Perda

O perceptron visa minimizar a [[função de perda]]
$$\large \ell_{\text{pct}}(y,\hat y) = \max \{0,-y \cdot \hat y\}$$
Que é 0 caso não haja erro de classificação, mas aumenta linearmente caso exista erro de classificação.