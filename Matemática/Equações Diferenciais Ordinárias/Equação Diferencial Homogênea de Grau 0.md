---
tags:
  - matemática
  - cálculo
  - incompleto
---
## Definição

É uma [[Equação Diferencial Ordinária de Primeira Ordem#EDO Homogênea|EDO homogênea]] de grau 0, ou seja:
$$\large f(\lambda x,\lambda y) = f(x,y) $$
nesse caso temos que existe um $\large F$ tal que
$$
\large y' = F\bigg(\frac x y\bigg)
$$
Pode ser definida por meio de uma substituição de tipo $\large z = y / x \iff y = zx$, onde
$$\large \begin{gather}
\frac{dy}{dx} = x\frac{dz}{dx}\\ \\
x \frac{dz}{dx} + z = F(z) \implies
\frac{dz}{dx} = \frac{F(z)-z}{x}
\end{gather}$$
que é [[Equação Diferencial Separável|separável]]. Por exemplo, para a EDO$$\large \frac{dy}{dx} = \frac{x+y}{x-y}$$
Temos que ela é homogênea de grau 0:
$$\large \frac{\lambda x- \lambda y}{\lambda x + \lambda y} = \frac{\lambda (x-y)}{\lambda(x+y)} = \frac{x-y}{x+y}$$
Fazendo as substituições $\large y = zx$ e $\large dy/dx = x\ dz/dx$:
$$\large 
\begin{gather}
x\frac{dz}{dx} + z =\frac{x-zx}{x+zx} = \frac{1-z}{1+z} \\
\frac{dz}{dx}  = \frac 1 x \bigg [\frac{1-z}{1+z} -z \bigg ]\\
\end{gather}$$
Que é separável
$$\large \begin{gather} 
 \frac 1x dx = 
\end{gather}$$
// TODO Pg 65 - que 