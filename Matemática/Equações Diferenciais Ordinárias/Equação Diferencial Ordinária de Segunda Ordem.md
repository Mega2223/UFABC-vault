---
tags:
  - matemática
  - cálculo
  - incompleto
---
## Definição

Uma Equação Diferencial Ordinária de Segunda Ordem é uma [[Equação Diferencial Ordinária|EDO]] da forma
$$\large F(x,y,y',y'') = 0$$
Tipicamente representada em sua forma normal
$$\large y'' = f(x,y,y')$$

### Wronskiano
Dada uma EDO de segunda ordem, $\large y_1(x)$ e $\large y_2(x)$ duas soluções da EDO, o Wronskiano da equação se dá pela [[Matriz#Determinante|determinante]]
$$\large \begin{bmatrix}
y_1(x) & y_2(x) \\
y_1'(x) 
\end{bmatrix}$$
## Problema do Valor Inicial


## EDO Linear de Segunda Ordem

Uma Equação Diferencial Ordinária Linear de Segunda Ordem é uma equação do tipo
$$\large P(x) \frac{d^2y}{dx^2} + Q(x)\frac{dy}{dx} + R(x)y = G(x)$$

Onde $\large P,Q,R,S$ são funções reais [[Limite#Continuidade|continuas]]. Para $\large G(x) = 0$, dizemos que a EDO Linear de Segunda Ordem é [[Equação Diferencial Ordinária#EDO Homogênea|homogênea]], em sua forma geral
$$\large a_2(x) y'' + a_1(x)y' + a_0(x)y =G(x)$$

### Caso Homogêneo
Uma EDO de segunda ordem homogênea é uma EDO na forma
$$\large a_2(x)y'' + a_1(x)y' + a_0(x)y = 0$$
Para uma equação nessa forma, vale o princípio da superposição, se conhecemos dois pontos em sua solução $\large y_1$ e $\large y_2$ então a combinação linear da forma $\large y(x) = c_1 y_1(x) + c_2 y_2(x)$ é uma solução do sistema.

Se $\large y(x)$ é uma solução para o sistema, $\large K y(x)$ também é $\large \forall K \in \mathbb R$, por conta disso a função $\large y(x) = 0$ sempre é uma solução para a EDO de segunda ordem homogênea.

### Caso Não Homogêneo
De forma geral
$$\large y = y_h + y_p$$
- $\large y_h$ é a solução da equação homogênea.
- $\large y_p$ é a solução particular da equação.
## EDO Diferencial Ordinária Não Homogênea
## Problema do Valor Inicial

## Problema de Valor de Contorno