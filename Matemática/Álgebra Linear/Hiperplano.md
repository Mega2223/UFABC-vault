---
aliases:
tags:
  - matemática
  - geometria-analitica
authors: Júlio César
---
## Definição

O hiperplano é uma equação linear em um determinado espaço cartesiano $\large \mathbb{R}^d$, que possui uma [[Matemática/Álgebra Linear/Combinação Linear#Dimensão|dimensão]] a menos que o espaço. O hiperplano constitui todos os pontos $\large x \in \mathbb{R}^d$ que satisfazem a equação
$$\Large H = \{x \in \mathbb R^d : w^Tx+b = 0\}$$
- $\large w \in \mathbb R^d$ são os coeficientes lineares do hiperplano
- $\large b \in \mathbb R$ é o _intercept_ do hiperplano
## Propriedades

### Ortogonalidade
Um determinado [[vetor]] não nulo que seja algum escalar de $\large w$ é ortogonal a todos os vetores dentro do hiperplano.

## Distância Ponto e Hiperplano

Dado $\large x \in \mathbb R^d$, a distância entre $\large x$ e um determinado hiperplano $\large d$-dimensional $\large H$, temos que a distância entre o ponto $\large x$ e o ponto mais próximo dentro de $\large H$ se dá por
$$\large\text{dist}(x,H) = \frac{|w^Tx + b|}{||w||}$$