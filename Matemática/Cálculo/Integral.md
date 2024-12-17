---
tags:
  - cálculo
  - "#matemática"
  - incompleto
authors: Júlio César
---
A integral descreve a área de uma função em um determinado intervalo.

Nós podemos calcular a diferença entre o fim de intervalos de uma função para criar uma aproximação, onde a área é a somatória de vários pontos uniformemente distribuídos divididos pelo número de pontos:
$$\Large \sin(x); x \in [0,\pi]$$
<div style="display:flex; align-items:center; justify-content: center">
<iframe src="https://www.desmos.com/calculator/znuaibwq6t?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe>
</div>

$$\Large A = \frac{\pi}{2}$$
Essa não é uma aproximação muito boa, mas ela vai melhorando conforme aumentamos nossa contagem $n$ de pontos na nossa análise:

<iframe src="https://www.desmos.com/calculator/uxlt9ticvf?lang=pt-BR" title="Demo" height=600 width=100% seamless="seamless"  style="border: 1px solid #ccc" frameborder=0/>

Dessa forma, conforme aproximamos infinitas divisões, chegamos no valor certo da área da função.
## Definição
Sejam $a,b\in \mathbb{R}$, e $f$ uma função [[Limite#Continuidade|contínua]] no [[intervalo]] $[a,b]$m a integral definida de $f$ se dá por: 
$$\Large \int_a^b f(x) dx = \lim_{n \to \infty} \sum_{i=0}^n f(x_i^*)\Delta x$$

Onde $$ \Delta x = \frac{b-a}{n}$$ E $x_i^*$ a extremidade do subintervalo $a + i\Delta x_i$;

No caso dessa função:

$$\Large\int_0^\pi \sin x\ dx = 2$$ 
## Integral indefinida

A integral indefinida é um conjunto de funções que informam sobre o comportamento de uma integral, ela se dá por:

$$\Large F(x) + C =\int f(x) dx \iff \int_a^b f(x)dx =  F(x) \bigg|^b_a \ \forall (a,b)\in I \subseteq \mathbb{R}$$

onde $C$ é qualquer constante.
### Relação com a [[derivada]]
A função $F$ é uma anti[[derivada]] de $f$, ou seja, $f' = F$, assim, a melhor forma de descobrir a integral indefinida de uma função é encontrar a sua antiderivada.

$$\Large \frac{d}{dx}\int f(x)\ dx= f(x)$$

## Propriedades da integral