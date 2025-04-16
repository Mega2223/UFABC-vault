---
tags:
  - algoritmo
  - computação
  - estatística
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

É um método de [[regressão]] que visa fazer uma predição dos valores com base em uma equação linear
$$\large Y \approx \beta_0  +  \sum_{i=1}^n\beta_i X_i$$
Onde $\beta_0$ representa o _intercept_ da equação linear, $i$ representa o número de preditores e $\beta_i$ representa a _slope_, ou seja, os coeficientes lineares da equação. Dado um modelo treinado, temos que
$$\large \hat{y} = \beta_0 + \sum_{i=1}^n \beta_ix_i$$
Assim, a meta da regressão linear é encontrar coeficientes $\beta$ ótimos para estimar $y$.
$$\large y_i \approx \beta_0 + \sum_{i=1}^n\beta_1x_i$$
## Método dos Mínimos Quadrados

O método dos mínimos quadrados é um método que encontra um $\beta_0$ e um $\beta_1$ que minimizam a o [[Função de Perda#RSS|RSS]][^1] do conjunto de treinamento de um determinado modelo com um único preditor
### Cálculo de $\beta_0$ e $\beta_1$
$$\large 
\begin{gather}\hat{\beta_0} = \overline{y} - \hat{\beta_1}\overline{x}\\ \\
\hat{\beta_1} = \frac
{\sum_{i=1}^n(x_i-\overline{x})(y_i-\overline{y})}
{\sum_{i=1}^n (x_i-\overline{x})^2}
\end{gather}$$
### Implementação
```R
gen_ln <- function(X, Y) {
    avg_x <- sum(X) / length(X)
    avg_y <- sum(Y) / length(Y)
    scalar <- sum((X - avg_x) * (Y - avg_y)) / sum(((X - avg_x)^2))
    addt <- avg_y - scalar * avg_x
    f <- function(x) {
        (x * scalar + addt)
    }
    return(f)
}

plot_ln <- function(X, Y) {
    f <- gen_ln(X, Y)
    l <- f(X)
    matplot(X, matrix(c(Y, l), ncol = 2), type = c("p", "l"), pch = "+")
}

X <- 1:128
Y <- X + rnorm(128, sd = 10)
plot_ln(X, Y)
```
<center><sup>(a função matplot não funciona direto no obsidian por algum motivo mas taca isso num console que roda)</sup></center>

[^1]: Residual Sum of Squares

## Modelo Linear Multivariado

//todo