---
tags:
  - matemática
  - cálculo
aliases:
authors: Júlio César
---
## Definição

Uma função é um [[Categoria|morfismo]] que define uma relação entre elementos de dois [[Conjunto|conjuntos]], a função relaciona um determinado elemento em um conjunto $A$ em um determinado elemento em um conjunto $B$
$$\large f: A \to B$$
Onde $A$ é o domínio ( $\text{Dom}\ f$ ) de $f$ e $B$ é o seu contradomínio ( $\text{Cod} f$ ).

## Imagem

Dado um elemento $x \in A$ deve existir um elemento $y$ no contradomínio correspondente. Dizemos que $y$ é a imagem de $x$. Um determinado $y$ pode ser imagem para vários valores de $x$, mas cada valor de $x$ é único. O conjunto de todas imagens de $f$ é um subconjunto de seu contradomínio, é dado por 
$$\large\text{Im } f := \{f(x)| x \in a\}$$
Para um subconjunto $X \subseteq A$, a imagem de todos os valores de $C$ se dá por

$$\large f(X) := \{f(a) | a \in X\}$$
## Pré-Imagem

A pré-imagem é o conceito inverso à [[#imagem]], dado um conjunto $Y \subseteq B$, a pré-imagem de $Y$ são todos os elementos de $x \in A$ cujo $f(x) \in Y$, ou seja

$$\large
f^{-1}(Y) := \{x \in A | f(x) = y\}
$$

## Injetividade e Sobretividade

Dada uma função $f: A \to B$ dizemos que $f$ é uma função **injetora** se para quaisquer dois valores distintos no domínio, seus correspondentes no contradomínio também são distintos, ou seja, não existe repetição de valores no contradomínio.

$$\large \forall (x_1,x_2) \in A, x_1 \ne x_2:\ \ \ f(x_1) \ne f(x_2)$$
Dizemos ainda que $f$ é **sobrejetora** se para cada elemento $x \in A$ existe um elemento $y \in  B$ cujo $f(x) = y$, ou seja, não existem elementos do contradomínio sem elementos correspondentes no domínio
$$\large
\text{Im}\ f = B
$$
Uma função pode ser sobrejetora mas não injetora, por exemplo $x^2$. Uma função é considerada **bijetora** quando ela é tanto injetora quanto sobrejetora. Uma função ser sobrejetora implica a existência da [[#função inversa]] dessa função.
## Função Inversa

Uma função inversa de uma determinada função é uma função que faz o mapeamento contrário de $f$, isso é, para cada elemento do contradomínio de f, ela encontra o elemento correspondente no domínio de $f$. A função inversa só existe se a função original é [[#Injetividade e Sobretividade|bijetora]].
$$\large f^{-1}(y)  = x \iff f(x) = y$$
