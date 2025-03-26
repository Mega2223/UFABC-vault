---
tags:
  - matemática
  - algoritmo
  - computação
  - estatística
  - incompleto
authors: Júlio César
---
## Definição

É um modelo de [[regressão]] que visa encontrar uma função preditora por uma função polinomial, tende a sofrer underfitting para graus muito baixos e overfitting para graus muito autos, mas serve como base para a [[regressão em splines]].

A regressão polinomial visa encontrar uma equação polinomial de grau $d$ da forma.
$$\large \hat{f}(x_i) = \hat{\beta_0} + x_i^1\hat{\beta}_1+ \dots +x^d_i\hat{\beta}_d$$
Em geral graus 3-4 são satisfatórios, a equação tende a variar muito para graus muito grandes, principalmente nas fronteiras de $X$. A equação polinomial têm um número muito limitado de pontos de inflexão e não consegue reproduzir o comportamento de funções mais complexas, o problema que a [[regressão em splines]] visa a corrigir.

## Resolução por linearidade

Como os rótulos são termos de $x_i$, pode-se usar o [[Regressão Linear#Método dos Mínimos Quadrados|MMQ]] para encontrar os coeficientes ótimos, rodando o algoritmo em termos de $x_i^{1\dots d}$ (linearização) e encontrando o hiperplano ótimo para o problema.
### Implementação

<div style="display:flex; justify-content:center">
<iframe style="" src="https://www.desmos.com/calculator/t4x3snkhgk?embed" width="500" height="500" style="border: 1px solid #ccc" frameborder=0 align="center"></iframe>
</div>
*Não é lá essas coisas, mas dá pro gasto*
