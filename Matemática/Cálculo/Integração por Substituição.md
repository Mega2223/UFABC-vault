---
tags:
  - matemática
  - cálculo
  - incompleto
authors: Júlio César
---

## Preposição

A propriedade da [[Derivada#Regra de Cadeia|regra de cadeia]] da derivada implica que

$$(F\circ g)'(x) = F'(g(x))\ g'(x)$$Aplicando o [[|#1º TFC]] temos
$$\int F'(g(x))\ g'(x) dx= F(g(x)) + C$$
## Definição

Caso uma integral possa ser descrita na forma de $$\large \int f(g(x))g'(x)dx$$
pela inversão da [[Derivada#Propriedades|regra de cadeia]] podemos substituir $u = g(x)$ e calcular a integral $\int u\ du$

$$\int f(g(x))g'(x)dx = F(g(x)) + C$$
## Exemplo

Certos sistemas de funções não podem ser [[Integral|integrados]] convencionalmente, por exemplo
$$\large \int 2x \sqrt{1+x^2} dx$$
Nesse caso, podemos inserir uma nova variável $u = 1 + x^2$ para o problema, de tal forma que $du = 2x\ dx$
$$\large\int \sqrt{u}\ du = \frac{2u^{3/2}}{3} + C =  \frac{2}{3} (1+x^2)^{3/2} + C$$
