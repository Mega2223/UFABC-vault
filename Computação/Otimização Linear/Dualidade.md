---
tags:
  - computação
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

Dado um [[Modelo|modelo linear]] viável, há um outro problema correspondente, estes são denominados **primal** e **dual** respectivamente. O problema dual é uma 'inversão' das restrições e coeficientes do problema primal de tal forma que ele terá uma mesma solução ótima que o dual. Enquanto o primal começa de uma solução básica viável e procura uma solução ótima, o dual começa de uma solução ótima mas possivelmente inviável e procura a viabilidade sem perder sua propriedade de otimalidade.

## Elaboração do problema dual

De forma geral, é necessário converter as restrições do primal para coeficientes do dual e vice-versa, tal como:
$$\begin{gather} 
\max P \longleftrightarrow \min D\\ \\
\text{Seja } k \text{ qualquer restrição do primal:} \\
k\ (\le) \rightarrow y_k \ge 0 \\
k\ (=) \rightarrow y_k \text{ é livre} \\
k\ (\ge) \rightarrow y_k \le 0 \\
\\
\text{Seja } x_p \text{ qualquer coeficiente do primal:} \\
x_p \ge 0 \rightarrow p(\ge) \\
x_p \text{ é livre} \rightarrow p(=) \\
x_p \le 0 \rightarrow p(\le) \\
\end{gather}$$
![[Pasted image 20241124203949.png|center]]

Tendo como referência o problema de exemplo em [[Método Simplex#Resolução Matricial#Problema|simplex]], sua forma dual seria

$$\begin{matrix}
\min P = -3x_1 - 5x_2 & \longrightarrow & \max D = 4y_1 + 6y_2 +18y_3 \\
x_1 \le 4 && y_1 + 3y_3 \le -3 \\
x_2 \le 6 && y_2 + 2y_3\le -5 \\
3x_1 + 2x_2 \le 18&& \\
x_1 \ge 0 \ \ x_2 \ge 0 && y_1\ge 0 \ \ y_2 \ge 0 \ \ y_3 \ge 0
\end{matrix}$$

## Axiomas da dualidade

### Dualidade Fraca
Seja $x$ uma solução do primal e $y$ uma solução do dual, $$c^Tx \le b^Ty$$
### Corolário
- Se $c^Tx = b^Ty$, ambas são soluções ótimas.
- Se um problema é ilimitado seu dual é inviável.

### Dualidade forte
- Se um programa tem solução ótima, o outro também têm, e ambas são iguais.