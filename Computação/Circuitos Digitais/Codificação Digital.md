---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

É o ato de codificar um número de possíveis estados para uma única sequência binária afim de minimizar o número de sinais necessários. Se existem $\large n$ sinais e sabemos que somente um deles pode estar ativo em um determinado tempo, o modo mais eficiente de codificar essa informação em um [[circuito digital]] é mapear cada sinal para uma sequência binária.

```tikz
\usepackage{circuitikz}
\begin{document}

\color{white}
\begin{circuitikz}
\color{white}
\draw(0,0) node[muxdemux, muxdemux def = {
NL = 4, NR = 1, NT = 0, NB = 0,
Lh = 4, Rh = 4
},anchor=rpin 1](ENC){ENC} to[bmultiwire=$2$,color=white] (2,0);
\draw(2,0) node[muxdemux, muxdemux def = {
NL = 1, NR = 4, NT = 0, NB = 0,
Lh = 4, Rh = 4
},anchor=lpin 1](DEC){DEC};
\draw (ENC.lpin 1) ++ (-.25,0) node[](){A};
\draw (ENC.lpin 2) ++ (-.25,0) node[](){B};
\draw (ENC.lpin 3) ++ (-.25,0) node[](){C};
\draw (ENC.lpin 4) ++ (-.25,0) node[](){D};

\draw (DEC.rpin 1) ++ (.25,0) node[](){A};
\draw (DEC.rpin 2) ++ (.25,0) node[](){B};
\draw (DEC.rpin 3) ++ (.25,0) node[](){C};
\draw (DEC.rpin 4) ++ (.25,0) node[](){D};

\end{circuitikz}
\end{document}
```

 <center><sub>Codificação de 4 estados em combinações de 2 sinais binários</sub></center>    


## Encoder

O encoder é um [[circuito digital]] que mapeia um grupo de entradas digitais a uma sequência binária de sinais, onde somente um único sinal digital pode ser codificado por vez. É um elemento que codifica um número finito de possíveis estados para uma sequência binária. Para um encoder que recebe $\large n$ possíveis estados, são necessários $\large n \ge \lceil \log _ 2(n) \rceil$ sinais binários para codificar cada possível estado. 

Tipicamente, o padrão de codificação de um encoder é ordenado de acordo com os elementos de entrada, onde cada entrada consecutiva é representada pelo número seguinte na álgebra binária.

Cada saída da sequência do encoder pode ser expressado por uma [[Álgebra Booleana|expressão booleana]] da entrada, onde a saída é a soma booleana das entradas em que ela está ativa, para uma codificação de 4 estados temos

$$\large \begin{gather}
\begin{matrix}
&c_1 & c_2 \\
A & 0 & 0 \\
B & 0 & 1 \\
C & 1 & 0 \\
D & 1 & 1 
\end{matrix}
&& 
\begin{matrix}
c_1 = C + D  \\ c_2 = B + D
\end{matrix}
\end{gather}$$

```tikz
\usepackage{circuitikz}
\begin{document}
\color{white}
% \Large
\begin{circuitikz}[scale=1.5, transform shape]
% \ctikzset{bipoles/length=2.8cm}
\color{white}
\draw (1,.25) -- (1,-.75) -- ++ (1.5,0)
node[american or port,anchor=in 1,color=white](OR1){} ;
\draw(.5,.25) -- (.5,-2) -- ++(2,0) 
 node[american or port,anchor=in 1,color=white](OR2){};
\draw (OR1.in 2) -- ++(-1,0) node[circ,color=white](CIRC){} -- (1.5,.25);
\draw (OR2.in 2) -- ++ (-1,0) -- (CIRC.center)  ;
\draw(0,.25) -- (0,-.75) node[ground](){};

\draw(OR1.out) to ++ (.5,0) node[](){\ \ \ \ $c_1$};
\draw(OR2.out) to ++ (.5,0) node[](){\ \ \ \ $c_2$};

\draw[help lines, dashed] (-.3,0) -- ++ (4.5,0) -- ++ (0,-3.2) -- ++ (-4.5,0) -- (-.3,0);

\draw(0,.5)node[](){A} (.5,.5)node[](){B} (1,.5)node[](){C} (1.5,.5)node[](){D};
\end{circuitikz}
\end{document}
```

 <center><sub>4-to-2 encoder</sub></center>
 


## Decoder

O decoder é um circuito que faz a operação inversa ao [[#Decoder|decoder]], isso é, recebe um código de $\large n$ bytes como entrada e seleciona algum sinal específico para a saída, o decoder pode ter no máximo $\large 2^n$ saídas digitais.

O decoder é um componente essencial do [[Multiplexação Digital|multiplexador digital]], uma vez que é responsável por interpretar o sinal de seleção e decidir para qual canal vai a saída. Um decoder que resolve um canal de $\large n$ bits para $\large m$ estados é dito um decodificador $\large n$ pra $\large m$.

$$\large \begin{gather}
\begin{matrix}
A = \overline c_1 \cdot \overline c_2 &
B = \overline c_1 \cdot c_2 \\
C = c_1 \cdot \overline  c_2 &
D =  c_1 \cdot  c_2
\end{matrix}
\end{gather}$$
```tikz
\usepackage{circuitikz}
\begin{document}
\color{white}
\begin{circuitikz}[scale=1.5, transform shape]
\draw(0,0) node[](){$c_1$} (0,-.25) -- (0,-1) node[circ,color=white,scale=.8](){} -- (.5,-1) (0,-1) -- (0,-3.75)
(.5,-1) -- (.5,-1.5) node[american not port,color=white,anchor=in 1,scale=.4,rotate=-90](N1){}
(N1.out) -- ++ (0,-.3)
;
\draw(1,0) node[,color=white](){$c_2$} (1,-.25) -- (1,-1) node[circ,color=white,scale=.8](){} -- (1.5,-1) (1,-1) -- (1,-4)
(1.5,-1) -- (1.5,-1.5) node[american not port,color=white,anchor=in 1,scale=.4,rotate=-90](N2){}
(N2.out) -- ++ (0,-1);

\draw(N1.out) -- ++ (0,-.25) node[circ,color=white,scale=.8](){} -- ++ (1.5,0) node[](AE){}
++ (0,-.75) node[](BE){}
++ (0,-.75) node[](CE){}
++ (0,-.75) node[](DE){}
;
\draw(AE.center) node[and port,color=white, scale=.4,anchor=in 1](A){};
\draw(A.in 2) -- ++ (-.5,0) node[circ,color=white,scale=.8](){};
\draw(A.out) -- ++ (.5,0);
\draw(A.out) -- ++ (.5,0) ++(.2,0) node[](){A};
\draw(BE.center) node[and port,color=white, scale=.4,anchor=in 1](B){};
\draw(B.in 1) -- ++ (-1.5,0) -- ++(0,1);
\draw(B.in 2) -- ++ (-1,0) node[circ,color=white,scale=.8](){};
\draw(B.out) -- ++ (.5,0) ++(.2,0) node[](){B};
\draw(CE.center) node[and port,color=white, scale=.4,anchor=in 1](C){};
\draw(C.in 1) -- ++ (-2,0) node[circ,color=white,scale=.8](){};
\draw(C.in 2) -- ++ (-.5,0) -- ++(0,1);
\draw(C.out) -- ++ (.5,0) ++(.2,0) node[](){C};
\draw(DE.center) node[and port,color=white, scale=.4,anchor=in 1](D){};
\draw(D.in 1) -- ++ (-2,0) node[circ,color=white,scale=.8](){} -- (0,-1);
\draw(D.in 2) -- ++ (-1,0) -- ++ (0,2);
\draw(D.out) -- ++ (.5,0) ++(.2,0) node[](){D};


\draw[help lines, dashed] (-.3,-.5) -- ++ (3.2,0) -- ++ (0,-4.75) -- ++ (-3.2,0) -- (-.3,-.5);

\end{circuitikz}
\end{document}
```
 <center><sub>2-to-4 encoder</sub></center>
## Encoder com Prioridade

## Função Enable
## Codificando Circuitos Combinatórios

Cada saída de um [[circuito combinatório]] pode ser expressada em termos de uma combinação booleana das entradas, como o [[#Decoder|decoder]] agrega todos os possíveis estados da entrada em um circuito, circuito combinatório pode ser feito com um decoder e algumas expressões OR para agregar os estados.

Por exemplo, um Full Adder é um circuito combinatório de 3 entradas e duas saídas que segue as expressões:

$$\large
\begin{gather}
 S = A \oplus B \oplus C_\text{in} \\
 C_\text{out} = (A \cdot B) + (C_\text{in} \cdot (A \oplus B ) )
\end{gather}$$

```tikz
\usepackage{circuitikz}
\begin{document}
\color{white}
\begin{circuitikz}[scale=1.5, transform shape]
\draw (0,0) node[muxdemux,anchor=rpin 1, muxdemux def = {
NL = 3, NR = 8, NB = 0, NT = 0,
Lh = 7, Rh = 7
}](DEC){DEC 3-8};

\draw (DEC.lpin 1) ++ (-.25,0) node[](){$A$};
\draw (DEC.lpin 2) ++ (-.25,0) node[](){$B$};
\draw (DEC.lpin 3) ++ (-.25,0) node[](){$C_{in}$};

\draw (2,0) node[or port,color=white,anchor=in 1,number inputs=4](OR1){};
\draw (DEC.rpin 2) -- ++ (.5,0) -- ++ (0,.5) -- (OR1.in 1);
\draw (DEC.rpin 3) -- ++ (.75,0) |- (OR1.in 2);
\draw (DEC.rpin 5) -- ++ (1,0) |- (OR1.in 3);
\draw (DEC.rpin 8) -- ++ (1.25,0) |- (OR1.in 4);

\draw (DEC.rpin 8) ++ (2,0) node[or port,color=white,anchor=in 4,number inputs=4](OR2){};
\draw (DEC.rpin 4) -- ++ (.5,0) |- (OR2.in 1);
\draw (DEC.rpin 6) -- ++ (.25,0) |- (OR2.in 2);
\draw (DEC.rpin 7) |- (OR2.in 3);
\draw (DEC.rpin 8) -- (OR2.in 4);

\draw (OR1.out) ++ (+.2,0) node[](){$S$};
\draw (OR2.out) ++ (+.4,0) node[](){$C_{out}$};

\draw (DEC.rpin 8) ++ (1.25,0) node[circ,color=white](){};
\end{circuitikz}
\end{document}
```
 <center><sub>Full Adder implementado com um decoder 3-para-8</sub></center>

O maior problema com esse tipo de implementação é que ela tende a ser redundante e usar muitos circuitos combinatórios desnecessários.