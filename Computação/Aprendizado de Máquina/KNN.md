---
tags:
  - algoritmo
  - computação
  - estatística
  - incompleto
authors: Júlio César
aliases:
  - classificador de Bayes
---
## Definição

O método KNN é um método simples de [[classificação]] e [[regressão]], onde dado um inteiro positivo $\text{K}$, ao tentar predizer / classificar um determinado $\hat{y}$ de um vetor preditor $x$, utilizamos os $\text{K}$ pontos conhecidos mais próximos para classificar $x$.

Normalmente se usa a [[Vetor#Tamanho / Magnitude|distância aritmética]] entre as coordenadas dos preditores, mas em alguns casos pode-se usar outros métodos. No caso de classificação, se usa a classe mais comum entre os preditores conhecidos.

$$
\begin{gather}
\Large \hat f_k(x) = \arg \max_y k^{-1} \sum_{x_i \in N_k(x)} \mathbb{1} (y_i=y) \\ \\
\large \mathbb{1}(y_i =y) = \begin{cases} 1 & y_i =  y \\ 0& y_i \ne y\end{cases}
\\ \\ \large N_k \subseteq D_m \text{ são os K vizinhos mais próximos de } x\end{gather}$$

Em geral, o KNN têm boa performance para um conjunto de testes com um número elevado de amostras e uma baixa dimensionalidade de preditores.

## Regressão


## Maldição da dimensionalidade

Conforme aumentam as dimensões de $X$, também se aumenta a distância média entre cada ponto, de forma geral, dado uma N-esfera de dimensão $d$ com $m$ pontos aleatoriamente distribuídos de forma uniforme, a mediana da distância ao ponto mais próximo se dá por
$$\large \text{dist} = \bigg( 1- \bigg(\frac{1}{2}\bigg)^{1/m} \bigg)^{1/d}$$
## Classificador de Bayes

O KNN é uma aproximação do classificador de Bayes, este minimiza o risco dado a função penalizadora $\mathbb{1}(y_i = y)$
$$\large
\arg \max_y P(Y = y | X = x)
$$
É considerado um classificador ideal para a função penalizadora, mas como $P_{XY}$ não é conhecido se usa o [[KNN]] como aproximação.