---
tags:
  - matemática
  - incompleto
  - cálculo
authors: Júlio César
---
## Definição

Uma Equação Diferencial Ordinária (EDO) é uma [[equação diferencial]] com uma única variável independente. De forma geral, uma EDO é uma equação que pode ser dada como
$$\large F(x,y,y',\cdots,y^{(n)}) = 0$$
Onde $\large y$ é uma variável dependente de (uma [[função]] em $\large$) $\large x$, $\large y = y(x)$. Essa equação é dita uma equação diferencial da $\large n$-ésima ordem, por exemplo
$$\large e^x = 6y\ y' - y''$$
É uma EDO da segunda ordem.
### Forma Normal
A forma normal isola o fator de maior ordem da EDO, uma EDO de tipo
$$\large F \bigg(\frac{dy}{dx}+\frac{d^2y}{dx^2}+\dots+\frac{d^ny}{dx^n}\bigg) = 0$$
tem a forma normal
$$\large \frac{d^ny}{dx^n} = \large f \bigg(\frac{dy}{dx}+\frac{d^2y}{dx^2}+\dots+\frac{d^{n-1}y}{dx^{n-1}}\bigg)$$
### Solução Geral e Específica
A solução de uma EDO em um intervalo $\large I = (a,b)$ é uma função $\large \Phi(x)$ que satisfaz as suas propriedades, a família de todas as soluções de uma EDO é dita uma solução geral. A solução particular da equação é uma única solução para um determinado valor inicial $\large y(k_0) = k_1$. Por exemplo, a equação

$$\large (y')^2+y^2=1$$

Possui as soluções específicas
- $\large y_1(x) = \sin x$
- $\large y_2(x) = 1$
## EDO Homogênea

Uma EDO é dita homogênea quando ela pode ser escrita na forma
$$\large 
y' = F \bigg (\frac y x \bigg)
$$
Uma EDO homogênea pode ser resolvida pela substituição
$$\large y = vx$$
Onde
$$\large y' = v + x \frac{dv}{dx}$$
Tipicamente a equação resultante é [[Equação Diferencial Separável|separável]].
