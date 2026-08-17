---
tags:
  - matemática
  - incompleto
---
## Definição

Uma Equação Diferencial Ordinária de Primeira Ordem é uma [[Equação Diferencial Ordinária|EDO]] da forma
$$\large F(x,y,y') = 0$$
Tipicamente representada em sua forma normal
$$\large y' = f(x,y)$$
Onde $\large f: \mathbb R^2 \to \mathbb R$. 
### EDO Fundamental
O caso mais básico de uma EDO de primeira ordem, é uma EDO que pode ser escrita da forma
$$\large y' = f(x)$$
ela tem solução geral encontrada aplicando o [[Integral#Relação com a derivada|1º TFC]]
$$\large y = \int f(x) dx$$
### EDO Autônoma
É uma EDO que pode ser escrita da forma
$$\large y' = f(y)$$
Onde a variável independente $\large x$ não aparece, presumindo que $\large y$ seja invertível no intervalo de interesse, podemos escrever
$$\large \frac{dx}{dy} = \frac{1}{f(y)}$$
A solução geral dessa EDO também pode ser obtida via o 1º TFC
$$\large x = \int \frac{1}{f(y)} dy$$
Ou ainda
$$\large x(y) = x(y_0) + \int _{y_0} ^ y f(y) dy$$
### EDO Separável
É uma EDO de primeira ordem que possa ser escrita como
$$\large \frac{dy}{dx} = \frac{g(x)}{f(y)}$$
Pode ser resolvida pela integração de cada fator, veja [[Equação Diferencial Separável|EDO separável]].
### EDO Homogênea
Uma função $\large f(x,y)$ é dita homogênea de grau $\large n$ quando $\large \forall \lambda \in \mathbb R$
$$\large f(\lambda x, \lambda y) =\lambda^nf(x,y)$$
Por exemplo, a função $\large x^2 + xy + y^2$ é homogênea de segundo grau.

