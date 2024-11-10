---
tags:
  - incompleto
  - matemática
  - cálculo
---
## Preposição

Certas equações não são diretamente funções pois não cumprem com a propriedade de só haver um dependente para cada número de seu domínio, por exemplo a do círculo unitário:
$$\large x^2+y^2=1$$
<div style="display:flex; align-items:center; justify-content: center">
<iframe src="https://www.desmos.com/calculator/uft7mi290o?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe>
</div>

Podemos ver claramente que há múltiplos valores $y$ para uma determinada coordenada $x$, assim não há como definir $y$ em função de $x$.
Para [[Derivada|diferenciar]] esta equação então se usa a derivação implícita.

## Definição

<center>Para diferenciar equações, deve-se considerar a equação como um sistema de função de duas variáveis:</center>

$$\large \frac{d}{dx}(x^2 + y^2) = \frac{d}{dx} 1$$
$$\large 2x + 2y\frac{dx}{dy} = 0$$
<center>Dividindo ambos os lados por $2y$ e simplificando, temos:</center>

$$\large\frac{-x}{y} = \frac{dy}{dx}$$

Logo, concluímos que a derivada do círculo unitário é $\frac{-x}{y}$, ou seja, em determinado ponto $(x,y)$ a reta tangente ao ponto terá o coeficiente angular de $\large \frac{-x}{y}$


<div style="display:flex; align-items:center; justify-content: center">
<iframe src="https://www.desmos.com/calculator/rt8xhe1shj?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe>
</div>
