---
tags:
  - incompleto
  - circuitos-digitais
authors: Júlio César
---
## Definição

O circuito digital é um sistema eletrônico que opera por meio de sinais digitais, isso é, que opera por meio de uma discretização de sinais elétricos, é então presumido que um determinado circuito digital tenha comportamentos definidos somente sob somente duas limiares.

## Discretização de Sinais

Tipicamente o sinal eletrônico é discretizado em duas fases, a transição entre essas fases possui uma limiar mínima e uma máxima que representam o quão baixo a corrente elétrica deve ser para trocar do estado HIGH para o LOW e o quão alta ela precisa ser para transicionar do LOW para o HIGH respectivamente.

Um [[Circuito Combinatório#Negação|circuito NOT]] de tipo Schmitt-trigger tipicamente possui uma limiar de ativação e uma limiar de desativação em diferentes níveis de corrente, possibilitando por exemplo a criação de um oscilador binário.

```tikz
\usepackage{circuitikz}
\begin{document}

\begin{circuitikz}[scale=1.5, transform shape]
\draw[color=white]  (0,0) node[invschmitt](INV){};
\draw[color=white]  (INV.out) -- ++ (1,0) node[circ](VOUT){} -- ++ (0,2) to[resistor] ++ (-4,0) |- (INV.in);
\draw[color=white] (INV.out) ++ (-3,0) node[circ](){} to[curved capacitor] ++(0,-1) to[] ++ 
(0,-.5) node[tlground](){};
\draw[color=white] (VOUT.center) -- ++ (1,0);
\end{circuitikz}

\end{document}
```
 <center><sub>Gerador de pulso com Schmitt-trigger</sub></center>
## Componentes