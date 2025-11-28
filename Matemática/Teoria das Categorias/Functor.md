---
tags:
  - matemática
  - incompleto
aliases:
authors: Júlio César
---
## Definição

Um functor é um mapeamento entre [[Categoria|categorias]], preservando domínios, contradomínios, identidades e composições. Formalmente, sejam $A$ e $B$ categorias, um functor é uma transformação $F: C \to D$ tal que

$$\large \begin{gather}
F(f: A \to B) = F(f): F(A) \to F(B) \\ \\
F(g \circ f) = F(g) \circ F(f) \\ \\
F(1_A) = 1_{(F_A)}
\end{gather}$$

De forma geral, temos que functors são morfismos que mapeiam morfismos e objetos de uma [[categoria]] para morfismos e objetos correspondentes de outra categoria, qualquer categoria $C$ tem um determinado functor identidade $1_C: C \to C$ .
## Terminologia

### Endofunctor
- Um functor que coincidem sua origem[^1] e destino é chamado um endofunctor.

[^1]: Ou seja, ele mapeia para a mesma categoria, não necessariamente é um functor identidade.
