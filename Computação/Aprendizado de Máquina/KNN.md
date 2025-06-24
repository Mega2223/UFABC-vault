---
tags:
  - algoritmo
  - computação
  - estatística
  - incompleto
authors: Júlio César
aliases:
  - classificador de Bayes
---
## Definição

O método kNN _(k nearest neighbors)_ é um método simples de [[classificação]] e [[regressão]], onde. dado um inteiro positivo $k$, ao tentar predizer / classificar um determinado $\hat{y}$ de um vetor preditor $x$, utilizamos os $k$ pontos conhecidos mais próximos para classificar $x$. Ou seja, esse método decora o conjunto de treinamento.

Normalmente se usa a [[Vetor#Tamanho / Magnitude|distância aritmética]] entre as coordenadas dos pontos, mas em alguns casos pode-se usar outros métodos. No caso de classificação, se usa a classe mais comum entre os preditores conhecidos.

$$
\begin{gather}
\Large \hat f_k(x) = \arg \max_y k^{-1} \sum_{x_i \in N_k(x)} \mathbb{1} (y_i=y) \\ \\
\large \mathbb{1}(y_i =y) = \begin{cases} 1 & y_i =  y \\ 0& y_i \ne y\end{cases}
\\ \\ \large N_k \subseteq D_m \text{ são os } k \text{ vizinhos mais próximos de } x\end{gather}$$

Em geral, o kNN têm boa performance para um conjunto de testes com um número elevado de amostras e uma baixa dimensionalidade de preditores.

## Regressão

O KNN também têm uma forma de [[regressão]], de forma geral
$$\large \hat{f}_k(x) = \frac{1}{k} \sum_{x_i \in N_k(x)}y_i$$
## Maldição da dimensionalidade

Conforme aumentam as dimensões de $X$, também se aumenta a distância média entre cada ponto, de forma geral, dado uma N-esfera de dimensão $d$ com $m$ pontos aleatoriamente distribuídos de forma uniforme, a mediana da distância ao ponto mais próximo se dá por
$$\large \text{dist} = \bigg( 1- \bigg(\frac{1}{2}\bigg)^{1/m} \bigg)^{1/d}$$
Para conjuntos de alta dimensionalidade precisamos de um dataset muito grande para ter um preditor suficientemente preciso.
## Escolha do K

Geralmente queremos uma função que minimize a [[Função de Perda#Função de Perda Quadrática|perda quadrática]] no caso de regressão e a [[Função de Perda#Função de Perda 0-1|taxa de erro]] em classificação, vale a pena simplesmente gradualmente aumentar o $k$ até o momento em que o número de erros no conjunto de testes começa a aumentar devido a [[Aprendizado Supervisionado#Tradeoff Variância / Viés|overfitting]] no conjunto de treinamento. 
## Classificador de Bayes

O KNN é uma aproximação do classificador de Bayes, este minimiza o risco dado a função penalizadora $\mathbb{1}(y_i = y)$
$$\large
\arg \max_y P(Y = y | X = x)
$$
É considerado um classificador ideal para a função penalizadora, mas como $P_{XY}$ não é conhecido se usa o [[kNN]] como aproximação.

## Implementação

### Classificação
//todo
### Regressão
```r
library(tibble)
library(tidymodels)
library(ggplot2)

gen_kNN <- function(k) {
    nearest_neighbor(neighbors = k, dist_power = 2) %>%
        set_engine("kknn") %>%
        set_mode("regression")
}

fun <- function(X) {
    return(sin(X * 2) - X^2 + rnorm(length(X), 1, .1))
}

training_set <- tibble(
    x = runif(100, -1, 1),
    y = fun(x)
)

test_set <- tibble(
    x = runif(300, -1, 1),
    y = fun(x)
)

knn.model.1 <- gen_kNN(1)
knn.model.5 <- gen_kNN(5)
knn.model.10 <- gen_kNN(10)

# plot(y ~ x, data = training_set)

knn.model.1.fit <- fit(knn.model.1, y ~ x, data = training_set)
knn.model.5.fit <- fit(knn.model.5, y ~ x, data = training_set)
knn.model.10.fit <- fit(knn.model.10, y ~ x, data = training_set)

test_set$predict.1 <- predict(knn.model.1.fit, test_set)$.pred
plot(predict.1 ~ x, data = test_set)

test_set$predict.5 <- predict(knn.model.5.fit, test_set)$.pred
plot(predict.5 ~ x, data = test_set)

test_set$predict.10 <- predict(knn.model.10.fit, test_set)$.pred
plot(predict.10 ~ x, data = test_set)
```