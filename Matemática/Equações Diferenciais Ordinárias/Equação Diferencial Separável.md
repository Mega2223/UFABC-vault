---
tags:
  - matemática
  - cálculo
  - incompleto
authors: Júlio César
---
## Definição

Uma equação diferencial separável é uma EDO que pode ser escrita na forma
$$\large \frac {dy}{dx} = g(x)f(y)$$
Sendo $\large y$ uma variável dependente de $\large x$ e $\large f,g$ duas funções, seja $\large h = 1/f$, podemos escrever uma equação separável na forma
$$\large \frac {dy}{dx} = \frac {g(x)}{h(y)}$$
Separando o fator diferencial, podemos isolar $\large x$ e $\large y$
$$\large h(y) dy = g(x)dx$$
E integrar ambos os lados
$$\large \int h(y) dy = \int g(x) dx$$
De forma geral, isso funciona para qualquer EDO onde
$$\large  \frac {d}{dy} \frac 1 {f(y)} = g(x)$$
Por exemplo, para $\large y' = x^2/y^2$, temos:
$$\large \begin{gather}
\frac{dy}{dx} = \frac {x^2} {y^2} \\
x^2 dx = y^2 dy \\
\int x^2 dx = \int y^2 dy \\
\frac {x^3}3+c = \frac{y^3}3 \\
y^3 = c+3x^3 \\
\large y(x) = \sqrt[3]{3x^3 + c}, c \in \mathbb R
\end{gather}$$

Para $\large y' = x^2y$, temos:
$$\large \begin{gather}
\frac {dx}{dy} = x^2y \\
x^2 dx = y^{-1} dy \\
x^3/3 + c = \ln |y| \\
|y(x)| =e^{c+x^3 / 3} \\
y(x) = \pm e^{c+x³ /3}\end{gather}$$
Para o modelo de crescimento de população $\large dP / dt = kP$, temos
$$\large
\begin{gather}
\frac{dP}{dt} = k\cdot P \\
\int P^{-1} dP = \int k\ dt \\
\ln |P| = kt +c\\
|P| = e^{kt+c} = e^{kt} e^c \\
P = A e^{kt}
\end{gather}
$$
Para um $\large A = e^c$ positivo.