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
$$\large F = x + y$$

```tikz
\usepackage{circuitikz}
\begin{document}
\Large
\begin{tikzpicture}
	\node[american or port, xscale=2, yscale=2, color=white] at (6.25, 3.5){};
	\node[shape=rectangle, minimum width=0.5cm, minimum height=0.5cm] at (6.75, 3.5){} node[anchor=center, align=center, text width=0.147cm, inner sep=5pt] at (6.75, 3.5){\textcolor{rgb,255:red,255;green,255;blue,255}{$F$}};
	\node[shape=rectangle, minimum width=0.5cm, minimum height=0.5cm] at (3.228, 4.06){} node[anchor=center, align=center, text width=0.147cm, inner sep=5pt] at (3.228, 4.06){\textcolor{rgb,255:red,255;green,255;blue,255}{$x$}};
	\node[shape=rectangle, minimum width=0.5cm, minimum height=0.5cm] at (3.228, 2.94){} node[anchor=center, align=center, text width=0.147cm, inner sep=5pt] at (3.228, 2.94){\textcolor{rgb,255:red,255;green,255;blue,255}{$y$}};
\end{tikzpicture}
\end{document}
```
### Circuito AND
O circuito AND representa uma implementação da [[Linguagem Proposicional|expressão 'e' proposicional]] ou ainda da [[Álgebra Booleana|multiplicação booleana]], o AND só dá saída se todas as entradas estiverem em seu estado ativo.

$$\large F = x \cdot y$$

```tikz
\usepackage{circuitikz}
\begin{document}
\Large
\begin{tikzpicture}
	\node[american and port, xscale=2, yscale=2, color=white] at (6.25, 3.5){};
	\node[shape=rectangle, minimum width=0.5cm, minimum height=0.5cm] at (6.75, 3.5){} node[anchor=center, align=center, text width=0.147cm, inner sep=5pt] at (6.75, 3.5){\textcolor{rgb,255:red,255;green,255;blue,255}{$F$}};
	\node[shape=rectangle, minimum width=0.5cm, minimum height=0.5cm] at (3.228, 4.06){} node[anchor=center, align=center, text width=0.147cm, inner sep=5pt] at (3.228, 4.06){\textcolor{rgb,255:red,255;green,255;blue,255}{$x$}};
	\node[shape=rectangle, minimum width=0.5cm, minimum height=0.5cm] at (3.228, 2.94){} node[anchor=center, align=center, text width=0.147cm, inner sep=5pt] at (3.228, 2.94){\textcolor{rgb,255:red,255;green,255;blue,255}{$y$}};
\end{tikzpicture}
\end{document}
```
### Circuito NOT


### Circuito XOR