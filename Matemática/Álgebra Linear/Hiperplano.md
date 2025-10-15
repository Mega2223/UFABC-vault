---
aliases:
tags:
  - matemática
  - incompleto
  - geometria-analitica
authors: Júlio César
---

## Definição

O hiperplano é uma equação linear em um determinado espaço cartesiano $\mathbb{R}^d$, que possui uma [[Matemática/Álgebra Linear/Combinação Linear#Dimensão|dimensão]] a menos que o espaço. O hiperplano constitui todos os pontos $x \in \mathbb{R}^d$ que satisfazem a equação
$$\Large H = \{x \in \mathbb R^d : w^Tx+b = 0\}$$
- $w \in \mathbb R^d$ são os coeficientes lineares do hiperplano
- $b \in \mathbb R$ é o _intercept_ do hiperplano
## Propriedades

### Ortogonalidade
Um determinado [[vetor]] não nulo que seja algum escalar de $w$ é ortogonal a todos os vetores dentro do plano.

## Distância Ponto e Hiperplano

Dado $x \in \mathbb R^d$, a distância entre $x$ e um determinado hiperplano $d$-dimensional $H$, temos que a distância entre o ponto $x$ e o ponto mais próximo dentro de $H$ se dá por
$$\large\text{dist}(x,H) = \frac{|w^Tx + b|}{||w||}$$