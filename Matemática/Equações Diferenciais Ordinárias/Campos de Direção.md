---
tags:
  - matemática
  - cálculo
  - incompleto
---
## Definição

Um campo de direção é um campo de vetores no $\large \mathbb R^2$ que representa uma solução geral de uma [[Equação Diferencial Ordinária de Primeira Ordem|EDO de primeira ordem]]. De forma geral, para uma EDO de tipo
$$\large y'= f(x,y)$$
Seu campo de direção são os vetores que definem a derivada da equação para cada determinado ponto no plano cartesiano $\large \mathbb R^2$, por exemplo a equação
$$\large y' = 3x  2y$$
Possui solução geral
$$\large \begin{gather}
\frac{dy}{dx} = 3x 2y \to \frac{1}{2y} dy = 3x\ dx \\
\int \frac{1}{2y} dy = \int3x\ dx \\ 
\frac{1}{2} \ln|y| +C_1 = \frac{3x^2}{2} + C_2 \\
\frac  1 2 \ln|y| = \frac{3x^2}{2} + C \\ 
\ln|y| = 3x^2 + C \\ 
|y| = e^{3x^2 + C} \\
y = e^{3x^2}e^C \leftrightarrow y=e^{3x^2}A,\ A \in \mathbb R^+
\end{gather}$$
Que tem um campo de direção

// TODO

Para $\large y(1) = 2$, temos a solução particular
$$\large \begin{gather}
y(1) = 2 \to Ae^{3} = 2 \to A = \frac 2 {e^3} \\
e^C = \frac 2 {e³} \ \to C =  \ln\left(2\right)-3
\end{gather}$$

// TODO