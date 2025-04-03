---
tags:
  - algoritmo
  - matemática
  - estatística
  - computação
  - incompleto
authors: Júlio César
---
## Definição

A regressão logística é um método de [[Classificação|classificação]][^1] binária que visa encontrar uma relação linear similar a uma [[Regressão Linear|regressão linear simples]], todavia, como a [[Axiomas da probabilidade#A função probabilidade|função p]] deve ser restrita entre 0 e 1, uma regressão linear não cumpriria com os requisitos de uma função probabilidade, para isso usamos a função logística
$$\large
\begin{gather}
y \in \{-1,1\}\\ \\
p(Y = y | X = x) = \frac{
1 
}{
1 + e^{-y(w^Tx + b)}
} 
\end{gather}
$$
Onde
- Temos $+1$ e $-1$ como variáveis representam as classes.
- $w \in \mathbb{R}^d$ é algum vetor de coeficientes lineares.
- $b \in \mathbb{R}$ é uma constante.

Temos $w^Tx+b$ linear, a fronteira de decisão será um [[hiperplano]] no espaço dos preditores.
### Cálculo de $w$ e $b$
Para o cálculo dos hiperparâmetros $w$ e $b$ é utilizado o método da máxima verossimilhança, que visa maximizar o a função $L$ dentro do conjunto de treinamento
$$\large L(w,b) =\prod_{i:y_i=1} p(x_i) \prod_{i':y_i' = -1} (1-p(x_{i'}))$$

[^1]: Sim, eu sei. Não me pergunte.
