---
tags:
  - matemática
  - computação
  - algoritmo
  - estatística
authors: Júlio César
---
## Definição

A classificação é um método de [[Aprendizado Supervisionado|aprendizado estatístico supervisionado]]. Similar à [[regressão]], a classificação visa encontrar uma função $\hat{f}$ que prediz uma determinada função $f$, todavia, a classificação presume um preditor qualitativo ao invés de um quantitativo, ou seja, $Y$ não é um valor numérico e sim uma categoria de valores.

Ao contrário de modelos de regressão, que predizem a resposta $Y$ com base em $X_n$ variáveis preditoras, a modelagem de um modelo de classificação normalmente envolve o cálculo da [[Axiomas da probabilidade#A função probabilidade|função probabilidade]] de se um determinado $x$ pertence a uma categoria.

Dado uma coleção de $m$ pontos $X \subseteq \mathbb{R}^d$ e um número **finito** de rótulos $Y$, a classificação visa encontrar melhor aproximação de $f$ a fim de minimizar uma determinada [[função de perda]].
$$\large f: \mathcal{X} \to \mathcal{Y}$$
No caso mais básico usa-se a [[Função de Perda#Função de Perda 0-1|Função de Perda 0-1]] para problemas de classificação.