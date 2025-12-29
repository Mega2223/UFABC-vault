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
- [[Espaço Vetorial|Espaços vetoriais]] e [[Transformação Linear|transformações lineares]]
- [[Grafo|Grafos]], [[digrafo|digrafos]] e [[pseudografo|pseudografos]], com seus vértices como objetos e arcos como morfismos
- Subconjuntos contínuos de $\large \mathbb R$ e funções reais
## Terminologia

- Uma categoria $\mathcal C$ é considerada pequena se $\text{Ob}_{\mathcal C}$ e $\text{Mor}_{\mathcal C}$ são [[Conjunto|conjuntos]]. Caso o contrário ela é dita grande.
## Morfismo

O morfismo (ou seta / _arrow_) é uma transição de objetos, tem um domínio e um contradomínio. O conjunto de todos os morfismos entre $A$ e $B$ se dá por
$$\large
\mathcal C [A,B] := \{\text{dom}(f) = A \land \text{cod}(f) = B\}
$$
Um morfismo onde coincidem seu domínio e seu contradomínio é chamado de endomorfismo.
### Diagrama
Uma categoria pode ser representada por meio de um diagrama onde objetos são figuras e morfismos setas:
$$\Huge A \xrightarrow{f} B $$

```tikz
\usepackage{tikz-cd}
\begin{document}

\tikzset{LA/.style = {draw=black, line width=#1, -{Straight Barb[length=3pt]}},
         LA/.default=1pt
        }
\LARGE
\begin{tikzcd}
A \arrow[r, "f", LA] \arrow[LA, rd, "g \circ f", bend right] & B \arrow[LA, d, "g"] \\
                                                     & C               
\end{tikzcd}
\end{document}
```
### Comutatividade
Dizemos que um [[#diagrama]] comuta quando entre quaisquer dois caminhos seguidos entre um par de categorias, o resultado da composição dos morfismos é o mesmo.
### Isomorfismo e Inversão
Um morfismo $f: A \to B$ é dito um isomorfismo quando existe algum morfismo $g: B \to A$ em $\mathcal C$ tal que
$$\large g \circ f = 1_A\ \land f \circ g = 1_B$$
Dizemos que $g$ é o inverso de $f$, denotado por $f^{-1}$. Caso exista um isomorfismo entre os objetos $A$ e $B$, dizemos que o objeto $A$ é isomórfico a $B$, notado por
$$\huge A \cong B$$
## Produto

Para dois objetos $A$ e $B$, o produto de categorias entre estes é um objeto dado por $A \times B$ em que

- Existe um par de morfismos $\pi_1: A\times B \to A$ e $\pi_2: A\times B \to B$, denominados projeções canônicas
- Para qualquer outro $Y$ da categoria com morfismos $f_1: Y \to A$ e $f_2: Y \to B$, existe um morfismo $f: Y \to A \times B$ tal que $\pi_1 \circ f = f_1$ e $\pi_2 \circ f = f_2$ 

O morfismo $f$ resultante do produto de categorias é dito um produto de morfismos: $f = \large \langle f_1,f_2 \rangle$