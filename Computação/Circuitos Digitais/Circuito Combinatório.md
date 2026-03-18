---
tags:
  - computação
  - incompleto
  - circuitos-digitais
authors: Júlio César
---
## Definição

O circuito combinatório é um circuito digital sem memória, ou seja, que é completamente determinístico, para cada entrada sempre haverá apenas uma saída não importando o contexto dessa entrada.

Um circuito combinatório pode ser escrito como um conjunto de [[Álgebra Booleana|expressões booleanas]], onde as entradas representam valores e a saída é a valoração da expressão.

Uma entrada, no sentido de um circuito digital, é um conjunto de sinais binários, cada saída é então uma combinação algébrica das entradas. Um circuito combinatório pode ser escrito como uma fórmula de álgebra booleana, e como toda fórmula de álgebra booleana, também pode ser descrito em termos de uma tabela verdade.

## Tabela Verdade

Dado um circuito com combinatório de $\large n$ entradas, são $\large 2^n$ possibilidades de entrada, cada combinação de entradas pode ser mapeado a um único estado de saída, a tabela verdade representa o comportamento do circuito combinatório para cada possível combinação.
## Circuitos Lógicos

Os circuitos lógicos são conjuntos de transistores que compõem circuitos combinatórios digitais, tipicamente circuitos lógicos são semicondutores que permitem a passagem de voltagem somente em certos estados.

Sistemas elétricos precisam ser aterrados para que haja fluxo de carga, mas diagramas de circuitos lógicos tendem a ignorar esse aspecto e presumir somente o fluxo de dois estados, escondendo a fonte de energia e o aterramento.
### Circuito OR
O circuito OR é uma implementação da [[Linguagem Proposicional|expressão 'ou' proposicional]] ou ainda da [[Álgebra Booleana|soma booleana]], o OR dá um output alto caso pelo menos uma de suas entradas esteja em seu estado ativo.

Existem generalizações do OR, em geral um OR pode receber um número qualquer de entradas, e ele é ativado quando qualquer uma das entradas está em estado ativo.
```tikz
\usepackage{circuitikz}
\begin{document}
\begin{center}
\begin{circuitikz}[american voltages]
\draw
  (0,0) to [short, *-] (6,0)
  to [V, l_=$\mathrm{j}{\omega}_m \underline{\psi}^s_R$] (6,2) 
  to [R, l_=$R_R$] (6,4) 
  to [short, i_=$\underline{i}^s_R$] (5,4) 
  (0,0) to [open, v^>=$\underline{u}^s_s$] (0,4) 
  to [short, *- ,i=$\underline{i}^s_s$] (1,4) 
  to [R, l=$R_s$] (3,4)
  to [L, l=$L_{\sigma}$] (5,4) 
  to [short, i_=$\underline{i}^s_M$] (5,3) 
  to [L, l_=$L_M$] (5,0); 
\end{circuitikz}
\end{center}
\end{document}
```
![[huh.png|center|200]]
### Circuito AND

### Circuito NOT
### Circuito XOR