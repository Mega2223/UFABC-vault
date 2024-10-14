---
authors: Júlio César
tags:
  - matemática
  - cálculo
aliases:
---
## Definição

A derivada é a taxa de mudança instantânea de uma variável dependente em relação à uma variável independente. A derivada é comumente usada em sistemas de função, onde $x$ é a variável independente e $f(x)$ ou $y$ é a variável dependente de $x$.

A derivada é definida por um [limite]], onde:
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
Seja $c \in \mathbb{R}$ uma constante, $f$ e $g$ funções contínuas e diferenciáveis:

$\large \frac{d}{dx} cx = c$

$\large \frac{d}{dx} x^c = cx^{c-1}$

$\large \frac{d}{dx} e^x = e^x$ 

$\large(f+g)'(x) = f'(x) + g'(x)$

$\large (f.g)'(x) = f'(x).g(x)+g'(x).f(x)$

$\large (f/g)'(x) = \frac{f'(x).g(x) - f(x).g'(x)}{g(x)^2}$

$\large (f\circ g)'(x) = f'(g(x)) .g'(x)$

## Notações
$$\frac{d}{dx} f(x) = \frac {dy}{dx} = f'(x) = y' = Df(x) = f^{(1)}(x)$$
## Derivação Implícita

Certas equações não podem ser diretamente para funções pois não cumprem com a propriedade de só haver um dependente para cada número de seu domínio, por exemplo a equação do coeficiente angular:
$$\large x^2+y^2=1$$
<div style="display:flex; align-items:center; justify-content: center">
<iframe src="https://www.desmos.com/calculator/uft7mi290o?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe>
</div>

Podemos ver claramente que há múltiplos valores $y$ para uma determinada coordenada $x$, assim não há como definir $y$ em função de $x$.

Precisamos primeiramente levar em conta que $x$ é dependente de $y$, e, em seguida, derivar ambos os lados da equação:

$$\frac{d}{dx} (x^2 + y^2) = \frac{d}{dx}1$$
$\frac{d}{dx} 1$ é obviamente 0, então só precisamos saber a derivada do lado esquerdo
$$\frac{d}{dx}(x^2)+\frac{d}{dx}(y^2)=0$$
Pelas [[Derivada#Propriedades|propriedades da derivada]] sabemos que $[x^2]' = 2x$; Ficamos com:
$$2x+\frac{d}{dx}(y^2)=0$$
Aqui as coisas complicam, pois $y$ é dependente de $x$:

$$\frac{d}{dx}y^2 = \frac{d}{dy} y^2 \frac{dy}{dx} = 2y \frac{dy}{dx}$$

$$-2x =  2y \frac{dy}{dx}$$

Dividindo ambos os lados por $2y$ e simplificando, temos:
$$\frac{-x}{y} = \frac{dy}{dx}$$
Logo, concluímos que a derivada do círculo unitário é $\frac{-x}{y}$, ou seja, em determinado ponto $(x,y)$ a reta tangente ao ponto terá o coeficiente angular de $\large \frac{-x}{y}$

<div style="display:flex; align-items:center; justify-content: center">
<iframe src="https://www.desmos.com/calculator/rt8xhe1shj?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe>
</div>
