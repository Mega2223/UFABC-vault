---
tags:
  - matemática
  - incompleto
---
## Definição

Uma categoria é uma coleção de dois tipos de objetos: os objetos da categoria uma coleção de morfismo entre estes objetos que satisfazem as propriedades:
- Para cada morfismo $f$ existe um domínio $\text{dom} f$ e um contradomínio $\text{cod} f$
- Sejam $f,g$ morfismos, $f:A\to B, g: B\to C$, existe uma composição $g \circ f: A \to C$
- Sejam $f,g,h$ quaisquer morfismos, vale a igualdade $(h\circ g) \circ f = h\circ(g\circ f)$ 
- Para qualquer objeto $A$ existe uma função identidade $1_A: A \to A$ onde para uma determinada $f: A \to B$ temos que $f \circ 1_A = 1_B \circ f = f$ 

São exemplos válidos de categoria:
- [[Função|Funções]] em algum determinado [[conjunto]]
- [[Espaço Vetorial|Espaços vetoriais]]
- [[Grafo|Grafos]], com seus vértices como objetos e arestas como morfismos
- Subconjuntos contínuos de $\mathbb R$ e funções reais

## Terminologia

- Uma categoria $\mathcal C$ é considerada pequena se $\text{Ob}_{\mathcal C}$ e $\text{Mor}_{\mathcal C}$ são [[Conjunto|conjuntos]]. Caso o contrário ela é dita grande.
- 
## Morfismos

O conjunto de todos os morfismos entre $A$ e $B$ se dá por
$$\large
\mathcal C [A,B] := \{\text{dom}(f) = A \land \text{cod}(f) = B\}
$$
Um morfismo onde $A$ e $B$ coincidem é chamado de endomorfismo.

### Diagrama
Um determinado morfismo $f: A \to B$ pode ser representado por meio de um diagrama:
$$\large A \xrightarrow{f} B $$
### Isomorfismo e Inversão
Em qualquer categoria $\mathcal C$, um morfismo $f: A \to B$ é dito um isomorfismo quando existe algum morfismo $g: B \to A$ em $\mathcal C$ tal que
$$\large g \circ f = 1_A\ \land f \circ g = 1_B$$
Dizemos que $g$ é o inverso de $f$, denotado por $f^{-1}$. Caso exista um isomorfismo entre $A$ e $B$, dizemos que $A$ é isomórfico a $B$, notado por
$$\huge A \cong B$$
