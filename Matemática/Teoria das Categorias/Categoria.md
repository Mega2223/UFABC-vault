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

\tikzset{LA/.style = {draw=white, line width=#1, -{Straight Barb[length=3pt]}},
         LA/.default=1pt
        }
\LARGE
\color{white}
\begin{tikzcd}

A \arrow[r, "f", LA] \arrow[LA, rd, "g \circ f", bend right] & B \arrow[LA, d, "g"] \\
                                                     & C               
\end{tikzcd}
\end{document}
```
### Comutatividade
Dizemos que um [[#diagrama]] comuta quando entre quaisquer dois caminhos entre um par de categorias, o resultado da composição dos morfismos neste caminho é o mesmo.
### Isomorfismo e Inversão
Um morfismo $f: A \to B$ é dito um isomorfismo quando existe algum morfismo $g: B \to A$ em $\mathcal C$ tal que
$$\large g \circ f = 1_A\ \land f \circ g = 1_B$$
Dizemos que $g$ é o inverso de $f$, denotado por $f^{-1}$. Caso exista um isomorfismo entre os objetos $A$ e $B$, dizemos que o objeto $A$ é isomórfico a $B$, notado por
$$\huge A \cong B$$
## Produto Entre Objetos

Para dois objetos $A$ e $B$, o produto de objetos entre estes é um objeto dado por $A \times B$ em que

- Existe um par de morfismos $\pi_1: A\times B \to A$ e $\pi_2: A\times B \to B$, denominados projeções canônicas
- Para qualquer outro objeto $Y$ da categoria com morfismos $f_1: Y \to A$ e $f_2: Y \to B$, existe um morfismo $f: Y \to A \times B$ tal que $\pi_1 \circ f = f_1$ e $\pi_2 \circ f = f_2$ 

Ou seja produto entre dois objetos é um objeto tal que o seguinte diagrama [[#Comutatividade|comuta]]:

```tikz
\usepackage{tikz-cd}
\begin{document}

\tikzset{LA/.style = {line width=#1, -{Straight Barb[length=3pt]}},
         LA/.default=1pt
        }
\LARGE
\color{white}
\begin{tikzcd}
  & Y \arrow[ld, "f_1"',LA] \arrow[d, "f", dashed,LA] \arrow[rd, "f_2",LA] &   \\
A & A \times B \arrow[r, "\pi_2"',LA] \arrow[l, "\pi_1",LA]        & B
\end{tikzcd}
\end{document}
```

O morfismo $f$ resultante do produto de objetos é dito um produto de morfismos: $\large f = \langle f_1,f_2 \rangle$.

## Objeto Inicial e Objeto Terminal

Em uma [[categoria]] $\large \textbf C$, um objeto $\large A$ é dito o objeto inicial de $\large \textbf C$ se e somente se para todo objeto $\large X$ da categoria existe um único morfismo $\large f: A \to X$. O objeto inicial costuma ter a notação $\large 0$, e seus morfismos tem a notação $\large 0_X:0\to X$.

O objeto terminal é o dual do objeto inicial, $\large A$ é dito o objeto terminal de $\large \textbf C$ se e somente se para todo objeto $\large X$ da categoria existe um único morfismo do tipo $\large f: X \to A$. O objeto final costuma ter a notação $\large 1$, e seus morfismos tem a notação $\large 1_X:X\to 1$.

Para qualquer par de objetos iniciais ou finais em uma categoria deve existir um [[Categoria#Isomorfismo e Inversão|isomorfismo]] entre eles.

Na [[Léxico de Categorias Comuns#Categoria dos Conjuntos|categoria dos conjuntos]] ($\large \text{Set}$), o objeto inicial da categoria é o [[Conjunto#Conjunto Vazio|conjunto vazio]], enquanto qualquer conjunto de um elemento (_singleton_) é um objeto terminal. É trivial que entre qualquer par de _singletons_ existe um único mapa de um para outro, que é isomórfico.
## Produto Categórico

Sejam $\large \textbf A$ e $\large \textbf B$ [[Categoria|categorias]], o produto categórico $\large \textbf A \times \textbf B$ tem as propriedades do [[Conjunto#Produto Cartesiano|produto cartesiano]] entre os objetos e morfismos das categorias. O produto é uma categoria que tem duplas de objetos e morfismos do tipo $\large (f,g):(A,B) \to (A',B')$ para morfismos do tipo $\large f: A \to A'$ e $\large g: B \to B'$  nas categorias originais $\large (A,A')\in \textbf A$,$\large (B,B')\in \textbf B$.

Logicamente, existem projeções para essas duplas da forma
$$\large
\begin{gather}
\pi_1: \large \textbf A \times \textbf B \to \textbf A & \pi_2: \large \textbf A \times \textbf B \to \textbf B \\
\pi_1(A,B) := A & \pi_2(A,B) := B
\end{gather}$$
## Categoria Dual
O dual de uma categoria $\large \textbf C$, dado por $\large \textbf C^\text{op}$ é uma categoria com os mesmos objetos, mas onde para cada morfismo $\large f: A \to  B$ em $\large \textbf C$, existe um morfismo dual $\large \overline f: B \to A$. Com a inversão dos domínios também são invertidas as composições ($\large g \overline \circ f = \overline f  \circ \overline g$).

Identidades da categoria dual se dão por $\large 1_{\overline C} = \overline {1_C}$.

## Terminologia

### Categoria Pequena
Uma categoria $\large \mathcal C$ é considerada pequena se $\large \text{Ob}_{\mathcal C}$ e $\large \text{Mor}_{\mathcal C}$ são [[Conjunto|conjuntos]]. Caso o contrário ela é dita grande. Se os objetos de uma categoria são finitos, logicamente $\large \text{Ob}_{\mathcal C}$ é um conjunto, a categoria é dita finita.
