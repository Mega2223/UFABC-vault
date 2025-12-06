---
tags:
  - matemática
  - incompleto
aliases:
authors: Júlio César
---
## Definição

Um functor é um mapeamento entre [[Categoria|categorias]], preservando domínios, contradomínios, identidades e composições. Formalmente, sejam $\large A$ e $\large B$ categorias, um functor é uma transformação $\large F: C \to D$ tal que

$$\large \begin{gather}
F(f: A \to B) = F(f): F(A) \to F(B) \\ \\
F(g \circ f) = F(g) \circ F(f) \\ \\
F(1_A) = 1_{(F_A)}
\end{gather}$$

De forma geral, temos que functores são morfismos que mapeiam morfismos e objetos de uma [[categoria]] para morfismos e objetos correspondentes de outra categoria, qualquer categoria $\large C$ tem um determinado functor identidade $\large 1_C: C \to C$ .

```tikz
\usepackage{tikz-cd}
\tikzset{LA/.style = {draw=black, % just to demonstrate, where LA is used
                      line width=#1, -{Straight Barb[length=3pt]}},
         LA/.default=1pt
        }
\begin{document}
\LARGE
\begin{tikzcd}
\LARGE A \arrow[LA,rr, "\LARGE f"] \arrow[LA,"\LARGE h"', loop, distance=2em, in=125, out=55] \arrow[LA,rrdd, "\LARGE g \circ f"] &  & \LARGE B \arrow[LA, dd, "\LARGE g"']               &  & \LARGE F(A) \arrow[LA,rrdd, "\LARGE F(g \circ f)"] \arrow[LA, rr, "\LARGE F(f)"] \arrow[LA, "\LARGE F(h)"', loop, distance=2em, in=125, out=55] &  & \LARGE F(C) \arrow[LA,dd, "\LARGE F(g)"] \\
                                                                                                                         &  & {} \Huge\arrow[LA, rr, "\Huge F", Rightarrow, maps to] &  & {}                                                                                                                                   &  &                                       \\
                                                                                                                         &  & \LARGE C                                       &  &                                                                                                                                      &  & \LARGE F(C)                          
\end{tikzcd}
\end{document}
```
## Terminologia

### Endofunctor
- Um functor que coincidem sua origem[^1] e destino é chamado um endofunctor.

[^1]: Ou seja, ele mapeia para a mesma categoria, não necessariamente é um functor identidade.
