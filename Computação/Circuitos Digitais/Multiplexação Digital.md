---
tags:
  - incompleto
  - comunicações
aliases:
authors: Júlio César
---
## Definição

Multiplexadores e demultiplexadores digitais são [[Circuito Digital|componentes digitais]] capazes de realizar multiplexação em sinais digitais de circuitos. Multiplexadores tipicamente vão atuar em um canal que constitui de uma sequência de sinais, e cada entrada e saída possui o mesmo número de sinais digitais (por exemplo 64 sinais como é de costume em CPUs modernas).

Um multiplexador recebe de entrada um número $\large n$ de canais digitais, cada um com $\large b$ sinais, além disso ele recebe uma sequência de tamanho $\large m$ que sinaliza qual canal deve ser mandado para frente. Para representar todos os sinais possíveis na sequência de _select_, é necessário que $\large 2^m \ge n$, ou seja, para um MUX de $\large n$ sinais, o $\large m$ ideal se dá por $\large m = \lceil \log_2 (n) \rceil$.

O demultiplexador recebe como entrada o sinal multiplexado e o canal para onde associar esse sinal, e por meio do mesmo código ele decide para qual canal o sinal de entrada vai, ou seja, ele vai ter $\large n * b$ sinais de saída.

```tikz
\usepackage{circuitikz}
\begin{document}
% Só Deus sabe o quanto eu sofri
\color{white}
\begin{circuitikz}
\color{white}
\node[muxdemux,anchor=rpin 1 , muxdemux def={
NL = 8,NB=1, Lh = 8, Rh = 6
}, color=white](A){MUX};
\draw(0,0) to[bmultiwire=$b$,color=white] (3,0);
\node[muxdemux,anchor=lpin 1 , muxdemux def={
NL = 1, NR=8,NB=1, Lh = 6, Rh = 8
}, color=white](B) at (3,0) {DEMUX};
\node[](TT) at (B.bpin 1) {};
\draw(A.bpin 1) -- ++ (0,-1) node[circ, color=white](T){} -- ++(-2,0) node[currarrow,color=white](SEL){};
\draw (SEL.north) ++ (0,0.4) node[color=white](){SEL};
\draw(B.bpin 1) -- ++ (0, -1) -- ++ (-1,0) to[bmultiwire=$m$,color=white] (T.center);
\end{circuitikz}

\end{document}
```
