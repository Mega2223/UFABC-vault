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

A regressão logística é um método de [[Classificação|classificação]][^1] que visa encontrar uma relação linear similar a uma [[Regressão Linear|regressão linear simples]], todavia, como a [[Axiomas da probabilidade#A função probabilidade|função p]] deve ser restrita entre 0 e 1, uma regressão linear não cumpriria com os requisitos de uma função probabilidade, para isso usamos a função logística:
$$\large p(X) = \frac{e^{\beta_0+\beta1X}}{1+e^{\beta_0+\beta1X}}$$
## Coeficientes de Regressão

Para o cálculo de $\hat{\beta_0}$ e $\hat{\beta_1}$ é utilizado o método da máxima verossimilhança, que visa maximizar a probabilidade de que $\hat{p}(x_i)$ esteja de acordo com o conjunto de treinamento.

//todo coloca essa função em um lugar mais adequado mto obg
$$\large \ell(\beta_0,\beta_1) =\prod_{i:y_i=1} p(x_i) \prod_{i':y_i' = 0} 1-p(x_{i'})$$

[^1]: Sim, eu sei. Não me pergunte.
