---
authors: Júlio César
tags:
  - matemática
  - cálculo
aliases:
---
## Definição

A derivada é a taxa de mudança instantânea de uma variável dependente em relação à uma variável independente. A derivada é comumente usada em sistemas de função, onde $x$ é a variável independente e $f(x)$ ou $y$ é a variável dependente de $x$.

A derivada é definida por um [[limite]], onde:
$$f'(x) = \lim_{h\to 0}{\frac{f(x+h)-f(x)}{h}}$$
Como $h \to 0$, é necessário entender a função para descobrir este limite. O número resultante do limite é o coeficiente angular da reta paralela ao ponto $x$ na função $f$.


<div>
<p style="font-size:28px" align="center">
<iframe src="https://www.desmos.com/calculator/6sxkrzc0c5?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0 align="center"></iframe>
<iframe src="https://www.desmos.com/calculator/5xzivs00es?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0 align="center"></iframe>
</p>
<p style="font-size:28px" align="center">
<iframe src="https://www.desmos.com/calculator/ukwtj4wobm?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe>
<iframe src="https://www.desmos.com/calculator/h7tipy05gi?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe>
</p>
</div>


A derivada pode ser descrita de diversas formas, além de $f'(x)$  outra forma bem comum de descrever a derivada de uma função é $\frac{d}{dx}f(x)$, ou $\frac{df}{dx}x$, na #física é mais comum a notação $\dot{x}$ para a derivada de $x$.
## Propriedades
(Para derivadas comuns, veja [[Derivadas Comuns]])
### Teorema de Rolle
Sejam $f$ e $g$ funções contínuas em $[a,b]$, diferenciáveis em $(a,b)$, $f(a) = f(b)$:
$$\large\exists c \in (a,b)\ \ f'(c) = 0$$
### Teorema do valor médio
Sejam $f$ e $g$ funções contínuas em $[a,b]$, diferenciáveis em $(a,b)$, $f(a) = f(b)$:
$$\large\exists c \in (a,b)\ \ f'(c) = \frac{f(b) - f(a)}{b-a}$$

## Notações
$$\frac{d}{dx} f(x) = \frac {dy}{dx} = f'(x) = y' = Df(x) = f^{(1)}(x)$$

## Regra de Cadeia

Sejam $f$ e $g$ funções diferenciáveis,
$$\large (f\circ g)'(x) = f'(g(x))\ g'(x)$$
## Regra de L'Hospital

Sejam $f$ e $g$ funções diferenciáveis (exceto possivelmente em $c$), $c \in \mathbb{R}$, $g'(c) \ne 0$, se $f(c) = 0$ e $g(c) = 0$
$$\large \lim_{x\to c}\frac{f(x)}{g(x)} =\lim_{x\to c} \frac{f'(x)}{g'(x)}$$
