---
tags:
  - matemática
  - estatística
authors: Júlio César
---
## A função probabilidade

A função probabilidade $p$ é a função que determina a probabilidade de um determinado evento, $\text{dom}(p) = [0,1]$, onde $p(x)$ é a probabilidade de $x$ ocorrer.

## Valor esperado

A função $E(x)$ é o valor esperado de um determinado $x$ aleatório, isso é, o valor médio ponderado de $x$ em um determinado espaço amostral. Esta função depende da natureza do espaço amostral (se é discreto ou contínuo).
## Espaço amostral

O espaço amostral/universo, normalmente denotado por $\Omega$, é o conjunto de todos os possíveis eventos.
$$\Large p(\Omega) = 1$$
## Axiomas

Não negatividade: $1 \geq P(E) \geq 0$

Aditividade: $P(A\cup B)$ = $P(A) + P(B) - P(A\cap B)$

Normalização: $P(\Omega) = 1$

## Teorema de Bayes

$$\large P(A | B) = \frac{P(B | A) P (A)}{P(B)}$$
($A$ e $B$ independentes)
## Regra de produto
$$\large P(B|A)=\frac{P(B\cap A)}{P(A)}$$
($A$ e $B$ independentes)
## Propriedades e definições

Sejam A e B eventos **independentes**:
$$P(\varnothing) = 0$$
$$P(E^C) = 1 - (P(E))$$
$$P(A\cap B) = P(A)P(B)$$
$$P(B|A) = P(B)\ \text{dado}\ A\ =\frac{P(B\cap A)}{P(A)}$$
$$P(A\cap B) = P(B|A)\ P(A)$$
