---
tags:
  - incompleto
  - computação
  - estatística
  - matemática
  - línguas-de-programação
authors: Júlio César
---
## Definição

R é uma língua de programação interpretada multiparadigma focada em programação matemática e estatística.
## Formatos

### Vetor
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
### Dict

### Função

```R
f <- function(x,y){
	sqrt(x) / sqrt(y)
}
f(1:128,129:256)
```
### Modelo Linear


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
A função `runif` gera números em uma distribuição uniforme.
```R
r = runif(128)
r
```
A função `rnorm` gera números em uma [[Léxico de Distribuições de Probabilidade#Distribuição Normal|distribuição normal]].
```R
r = rnorm(128)
r
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