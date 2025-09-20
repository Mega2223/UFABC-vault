---
tags:
  - matemática
  - incompleto
aliases:
authors: Júlio César
---
## Definição

Um functor é um mapeamento entre [[Categoria|categorias]], preservando domínios, contradomínios, identidades e composições.

$$\large \begin{gather}
F_{x,y}(f) = F(f): F(x) \to F(y) \\ \\
F(g \circ f) = F(g) \circ F(f) \\ \\
F(1_A) = 1_{(F_A)}
\end{gather}$$

De forma geral, temos que functors são morfismos que mapeiam morfismos e objetos de uma [[categoria]] para morfismos e objetos correspondentes de outra categoria, temos que qualquer categoria $C$ tem um determinado functor identidade $1_C: C \to C$ 
## Terminologia

### Endofunctor
- Um functor que coincidem sua origem e destino é chamado um endofunctor.