---
tags:
  - cálculo
  - matemática
authors: Júlio César
---
## Definição

É uma técnica de cálculo da integral de produtos, partindo da [[Derivada#Propriedades|regra do produto]] da [[derivada]], podemos chegar na seguinte propriedade das [[Integral#Integral indefinida|integrais indefinidas]]:
$$\large \int f(x) g'(x) + f'(x)g(x)\ dx= f(x)g(x)$$
Que implica que 
$$\large \int f(x) g'(x)\ dx = f(x)g(x) - \int g(x)f'(x)\ dx$$
Essa integral é útil se $\int g'$ é conhecida ou facilmente calculável, por exemplo
$$\large \int x \sin x\ dx= -x \cos x - \int \cos (x) 1\ dx = -x \cos x +\sin x + C$$