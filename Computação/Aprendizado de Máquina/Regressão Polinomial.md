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

É um modelo de [[regressão]] que visa encontrar uma função preditora por uma função polinomial, tende a sofrer underfitting para graus muito baixos e overfitting para graus muito autos, mas serve como base para a [[Regressão em Splines]].

A regressão polinomial visa encontrar uma equação polinomial de grau $d$ da forma.
$$\large \hat{f}(x_i) = \hat{\beta_0} + x_i^1\hat{\beta}_1+ \dots +x^d_i\hat{\beta}_d$$
Em geral graus 3-4 são satisfatórios, a equação tende a variar muito para graus muito grandes, principalmente nas fronteiras de $X$. A equação polinomial têm um número muito limitado de pontos de inflexão e não consegue reproduzir o comportamento de funções mais complexas, o problema que a [[Regressão em Splines]] visa a corrigir.

## Resolução por linearidade

Como os rótulos são termos de $x_i$, pode-se usar o [[Regressão Linear#Método dos Mínimos Quadrados|MMQ]] para encontrar os coeficientes ótimos, rodando o algoritmo em termos de $x_i^{1\dots d}$ (linearização) e encontrando o [[hiperplano]] ótimo para o problema.
## Implementação

```R
library(ggplot2)
library(tibble)

f <- function(x) {
    2 * x + sin(x * 6) - (x - 1)^2
}

fe <- function(x) {
    # (x - .5)^2 + .1 * x - rnorm(length(x), sd = .03)
    f(x) + rnorm(length(x), sd = .1)
}

k <- 1280
X <- (1:k) / k
Y <- fe(X)

t <- data.frame(x = X, y = Y)

model <- lm(formula = y ~ poly(x, 2) + poly(x, 4) + x, data = t)
model.fit <- predict(model, t)


h <- ggplot(t) +
    geom_point(aes(x = x, y = y), colour = "gray") +
    geom_line(aes(x = x, y = model.fit), colour = "red") +
    geom_line(aes(x = x, y = f(x)), colour = "green")

show(h)

```