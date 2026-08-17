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
Onde $\large A$ é o domínio ( $\large\text{Dom}\ f$ ) de $f$ e $B$ é o seu contradomínio ( $\large\text{Cod} f$ ).

## Imagem

Dado um elemento $\large x \in A$ deve existir um elemento $y$ no contradomínio correspondente. Dizemos que $\large y$ é a imagem de $\large x$. Um determinado $\large y$ pode ser imagem para vários valores de $\large x$, mas cada valor de $\large x$ é único. O conjunto de todas imagens de $\large f$ é um subconjunto de seu contradomínio, é dado por 
$$\large\text{Im } f := \{f(x)| x \in A\}$$
Para um subconjunto $\large X \subseteq A$, a imagem de todos os valores de $\large X$ se dá por todos os valores que são resultantes de $\large f$ em $\large X$

$$\large f(X) := \{f(x) | x \in X\}$$
## Pré-Imagem

A pré-imagem é o conceito inverso à [[#imagem]], dado um conjunto $Y \subseteq B$, a pré-imagem de $Y$ são todos os elementos de $\large x \in A$ cujo $\large f(x) \in Y$, ou seja

$$\large
f^{-1}(Y) := \{x \in A | f(x) = y\}
$$

## Injetividade e Sobrejetividade

Dada uma função $\large f: A \to B$ dizemos que $f$ é uma função **injetora** se para quaisquer dois valores distintos no domínio, seus correspondentes no contradomínio também são distintos, ou seja, não existe repetição de valores no contradomínio.
$$\large \forall (x_1,x_2) \in A: x_1 \ne x_2\ \implies\ f(x_1) \ne f(x_2)$$
Dizemos ainda que $f$ é **sobrejetora** se para cada elemento $x \in A$ existe um elemento $y \in  B$ cujo $f(x) = y$, ou seja, não existem elementos do contradomínio sem elementos correspondentes no domínio
$$\large
\text{Im}\ f = B
$$
Uma função pode ser sobrejetora mas não injetora. Uma função é considerada **bijetora** quando ela é tanto injetora quanto sobrejetora. Uma função ser sobrejetora implica a existência da [[#função inversa]] dessa função.
## Função Inversa

Uma função inversa de uma determinada função é uma função que faz o mapeamento contrário de $\large f$, isso é, para cada elemento do contradomínio de $\large f$, ela encontra o elemento correspondente no domínio de $\large f$. A função inversa só existe se a função original é [[#Injetividade e Sobrejetividade|bijetora]].
$$\large f^{-1}(y)  = x \iff f(x) = y$$
## Composição

Sejam $\large f: B \to C$ e $\large g: A \to B$ funções, a composição entre $\large f$ e $\large g$ se dá pela função $\large f \circ g: A \to C$ definida como
$$\large (f \circ g) (x) := f(g(x))$$
Composições são associativas, ou seja, $\large (f \circ g) \circ h = f \circ (g \circ h)$.