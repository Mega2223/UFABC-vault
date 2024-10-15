---
tags:
  - matemática-discreta
  - matemática
  - estatística
---

## Definição

Quando o espaço amostral é um conjunto discreto de números reais, podemos fazer uma análise discreta do espaço e de uma variável aleatória qualquer $X \in \mathbb{Z}$.

## Funções e axiomas
### Função de probabilidade / Média ponderada:

$$\large E(X) = \sum_i x_i\ p(x_i)$$
### Função de probabilidade acumulada:

$$\large F(a) = P(x\le a) = \sum_{x_i\le a} P(x_i)$$
### Variância
$$\large \text{Var}(X) = E(X^2) - (E(X))^2$$
### Desvio padrão
$$\large \sigma(X) = \sqrt{\text{Var}{(X)}}$$
### Covariância

$$\large \text{Cov}(X,Y) = E(XY) - E(X)E(Y)$$
### Coeficiente de correlação de Pearson
$$\large\rho(X,Y) = \frac{\text{Cov(X,Y)}}{\sigma(X)\sigma(Y)}$$
$$\text{dom}(\rho) = [-1,1]$$