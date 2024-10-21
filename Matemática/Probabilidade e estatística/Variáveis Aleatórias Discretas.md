---
tags:
  - matemática-discreta
  - matemática
  - estatística
  - "#matemática-discreta"
aliases:
  - Arranjos
authors: Júlio César
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

## 
## Distribuição de Poisson

Dado $n$ eventos em um intervalo fixo ou em uma taxa média constante, a probabilidade de que ocorram exatamente $k$ ocorrências é de
$$\frac{e^{-\lambda}\lambda^k}{k!}$$
Onde $\lambda \in \mathbb{R}$ é o número esperado de ocorrências num determinado intervalo de tempo, se o evento ocorre $n$ vezes a cada $t$, mas queremos saber quantos eventos ocorrem em $t_1$, $\lambda = \frac{t_1}{t}$. 

## Principio fundamental da contagem

$$\large Q = \prod_i q_i$$
Onde:
- $q_i$ é o modo distinto de cada ação
- $Q$ é o número de modos distintos

