---
tags:
  - incompleto
  - computação
  - estatística
  - matemática
  - língua-de-programação
authors: Júlio César
---
## Definição

R é uma língua de programação interpretada multiparadigma focada em programação matemática, aprendizado estatístico e visualização. Possui aspectos de [[programação funcional]] e [[programação orientada a objetos]]. Não é muito focada em lógica computacional e sim em manipulação estatística, muitas operações iterativas podem ser omitidas por operações em vetor.
## Formatos

### Vetor
```R
v <- c(1,2,3)
v
```
### Matriz
Representa uma [[Matriz|matriz numérica]], suporta operações matriciais.
```R
M <- matrix(1:16, 4, 4)
M
```
```R
M <- matrix(1:16, 4, 4, byrow = T)
M
```
```R
M = diag(1,4)
M
```
```R
M = diag(1:4)
M
```
#### Multiplicação Matricial
```R
A = diag(1:4)
B = matrix(4:1,4)
A %*% B
```
### Dataframe
Tabela de dados constituídas por vetores e são a base para o colecionamento de dados de treinamento de [[Modelo Linear|modelos]].
```r
X = 1:64
D = data.frame(x = X,y = sin(0.3 * X), z = tan(1/X) )
D
```
### Tibble
São tabelas derivadas do [[#dataframe]] com funções adicionais[^1]
```r
library(tibble)
t = tibble(x = 1:128, y = x^2 - x*80 - 500)
plot(y~x, data = t)
```
### Função

```R
f <- function(x,y){
	sqrt(x) / sqrt(y)
}
f(1:128,129:256)
```
## Utilidades

### Geração de vetor sequência
```R
x = 1:128
x
```

```R
x <- seq(-pi, pi, length = 50)
x
plot(x,sin(x))
```

### Geração de vetor aleatório
A função `runif` gera números em uma [[Léxico de Distribuições de Probabilidade#Distribuição Uniforme|distribuição uniforme]]

```R
r.x = runif(128); r.y = runif(128)
plot(r.x,r.y)
```

A função `rnorm` gera números aleatórios em uma [[Léxico de Distribuições de Probabilidade#Distribuição Normal|distribuição normal]]
```R
r.x = rnorm(128); r.y = rnorm(128)
plot(r.x,r.y)
```
### Salvar figuras geradas
```R
# isso gera um pdf residual na pasta do Obsidian
pdf("Figure.pdf")
x = 1:24
plot(x, x^2, col = "green")
dev.off()
```
## Bibliotecas


[^1]: As quais eu desconheço :p
