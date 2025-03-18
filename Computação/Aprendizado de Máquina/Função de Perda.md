---
tags:
  - computação
  - estatística
  - matemática
authors: Júlio César
aliases:
  - loss function
---
## Definição

Uma função de perda é uma função penalizadora que serve para medir a qualidade de uma determinada $\hat{f}$ escolhida em um problema de [[aprendizado supervisionado]] ([[regressão]] ou [[classificação]]), de forma geral
$$\large \ell : Y \times Y \to [0,\infty) $$
Ou seja, $\ell$ é uma função multivariável que relaciona o domínio dos rótulos com o domínio geral, ela serve para identificar a variação entre algum rótulo conhecido e o seu valor estimado pela função preditora.
## Função de Perda Quadrática

Em problemas de [[regressão]] normalmente se usa a função de perda quadrática como função avaliadora
$$\large \ell(y,\hat{f}(x)) = (y-\hat{f}(x))^2$$
Ou seja, é medida a [[Variáveis Aleatórias Contínuas#Valor Esperado e Variância|variância]] entre $E(x)$ e $f(x)$

## Função de Perda 0-1

Utilizada em problemas de [[classificação]], ela aplica uma perda uniforme ao algoritmo que falha em classificar um determinado preditor corretamente
$$\large \ell(y,\hat{f}(x))= \begin{cases}0 & y=\hat{f}(x) \\ 1 & y \ne \hat{f}(x)\end{cases}$$

## Risco Esperado

Dada uma determinada [[função de perda]] procuramos encontrar um $\hat{f}$ tal qual minimiza o risco esperado dentro do nosso domínio $Y \times Y$
$$\large \mathcal{R}(f) = E_{XY}[\ \ell(Y,\hat{f}(X))\ ] = \int \ell (y,\hat f(x)) P_{XY}\ (dx,dy)$$
### Risco Empírico
A a função de risco empírico usa de uma média aritmética da perda dos rótulos
$$\large R(\hat{f}) = \frac{1}{m} \sum_{(x_i,y_i)\in D_m} \ell(y_i,\hat{f}(x_i))$$
