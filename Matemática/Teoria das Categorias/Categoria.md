---
tags:
  - matemática
  - incompleto
aliases:
  - morfismo
authors: Júlio César
---
## Definição

Uma categoria é uma coleção de dois tipos de objetos: os objetos da categoria uma coleção de morfismo entre estes objetos que satisfazem as propriedades:
- Para cada morfismo $f$ existe um domínio $\text{dom} f$ e um contradomínio $\text{cod} f$
- Sejam $f,g$ morfismos, $f:A\to B, g: B\to C$, existe uma composição $g \circ f: A \to C$
- Sejam $f,g,h$ quaisquer morfismos, vale a igualdade $(h\circ g) \circ f = h\circ(g\circ f)$ 
- Para qualquer objeto $A$ existe um morfismo identidade $1_A: A \to A$ onde para qualquer outro functor $f: A \to B$ temos que $f \circ 1_A = 1_B \circ f = f$ 

São exemplos válidos de categoria:
- [[Função|Funções]] em [[conjunto|conjuntos]]
- [[Espaço Vetorial|Espaços vetoriais]]
- [[Grafo|Grafos]] e [[digrafo|digrafos]], com seus vértices como objetos e arestas como morfismos
- Subconjuntos contínuos de $\mathbb R$ e funções reais

## Terminologia

- Uma categoria $\mathcal C$ é considerada pequena se $\text{Ob}_{\mathcal C}$ e $\text{Mor}_{\mathcal C}$ são [[Conjunto|conjuntos]]. Caso o contrário ela é dita grande.
## Morfismo

O morfismo é uma transição de objetos, tem um domínio e um contradomínio.

O conjunto de todos os morfismos entre $A$ e $B$ se dá por
$$\large
\mathcal C [A,B] := \{\text{dom}(f) = A \land \text{cod}(f) = B\}
$$
Um morfismo onde $A$ e $B$ coincidem é chamado de endomorfismo.

### Diagrama
Um determinado morfismo $f: A \to B$ pode ser representado por meio de um diagrama:
$$\Huge A \xrightarrow{f} B $$

```tikz
\usepackage{tikz-cd}
\begin{document}

\tikzset{LA/.style = {draw=black, % just to demonstrate, where LA is used
                      line width=#1, -{Straight Barb[length=3pt]}},
         LA/.default=1pt
        }
\LARGE
\begin{tikzcd}
A \arrow[r, "f", LA] \arrow[LA, rd, "g \circ f", bend right] & B \arrow[LA, d, "g"] \\
                                                     & C               
\end{tikzcd}
\end{document}
```

### Isomorfismo e Inversão
Um morfismo $f: A \to B$ é dito um isomorfismo quando existe algum morfismo $g: B \to A$ em $\mathcal C$ tal que
$$\large g \circ f = 1_A\ \land f \circ g = 1_B$$
Dizemos que $g$ é o inverso de $f$, denotado por $f^{-1}$. Caso exista um isomorfismo entre os objetos $A$ e $B$, dizemos que $A$ é isomórfico a $B$, notado por
$$\huge A \cong B$$
