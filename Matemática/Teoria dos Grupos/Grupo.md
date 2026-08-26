---
tags:
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

Um grupo é uma dupla de tipo $\large (G,*)$, onde $\large G$ é um [[conjunto]] de elementos e $\large *$ é um [[Função|mapa]] de tipo
$$\large (a,b) \mapsto a * b : G \times G \to G$$
que satisfaz as condições
$$\large \begin{gather}
\forall a,b,c \in G: (a * b) * c = a * (b*c) \\
\exists e \in G,\ \forall a \in G : a * e = e = e*a \\
\forall a \in G,\ \exists a' \in G : a*a' = e = a'*a
\end{gather}$$
Dizemos que $\large e$ é o elemento neutro do grupo, notavelmente $\large e' = e$ é uma propriedade que só vale para este elemento. Abreviamos $\large a * b$ para $\large ab$. 

Como $\large *$ é associativa, o produto de qualquer sequência ordenada de elementos $\large \langle a_1, a_2, \dots, a_n \rangle$ é inequívoco, escolhendo quaisquer $\large i,j$ válidos:
$$\large (a_1*a_2*\dots a_i)(a_{i+1},\dots,a_n) = (a_1*a_2*\dots a_j)(a_{j+1},\dots,a_n) $$
O inverso do produto é o produto dos inversos ao contrário
$$\large (a_1 a_2 \dots a_n)^{-1} = (a^{-1}_{n} a^{-1}_{n-1} \dots a^{-1}_1)$$
Ainda, temos que
$$\large \begin{gather}
 ab = ac \implies b=c \\
 ba = ca \implies b = c
\end{gather}$$
Se $\large G$ é finito, o mapa $\large x \mapsto a x$ é [[Função#Injetividade e Sobrejetividade|bijetor]].
### Potencialização
Para um $\large a \in G$ qualquer, e um $\large n \in \mathbb Z$, sua potência $\large a^n$ se dá por
$$\large a^n :=\begin{cases}
a * a * \dots * a & n \in \mathbb Z^+ \\
e & n = 0 \\
a^{-1} * a^{-1} * \dots * a^{-1} & n \in \mathbb Z^-
\end{cases}$$
Sempre tendo $\large |n|$ instâncias de $\large a$ nos produtos, temos que
$$\large \begin{gather}
a^na^m = a^{n+m} \\
(a^m)^n = a^{mn}
\end{gather}$$
### Ordem
A ordem $\large |G|$ de um grupo é a [[Conjunto#Cardinalidade|cardinalidade]] de seu conjunto $\large G$, um grupo finito cuja cardinalidade é uma potência de um número primo $\large p$ é dito um $\large p$-grupo.
### Isomorfismo
Dois grupos $\large (G,*), (G',*')$ são isomórficos se existe uma bijeção $\large f: G \to G'$ entre eles tal que
$$\large f(a*b) = f(a) *' f(b)$$
### Comutação
Se $\large *$ é comutativa, ou seja, se $\large  \forall b,a \in G: a*b = b*a$, temos que $\large G$ é dito um grupo abeliano.
## Produto Direto

Sejam $\large (G,*), (G',*')$ grupos, o produto direto entre eles é o grupo resultante [[Conjunto#Produto Cartesiano|produto cartesiano]] entre seus conjuntos: $\large G \times G'$, onde a multiplicação se dá por
$$\large (a,b)(a',b') \mapsto (aa', bb')$$
