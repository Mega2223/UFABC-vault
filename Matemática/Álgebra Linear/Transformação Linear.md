---
tags:
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

Sejam $U,V$ [[Espaço Vetorial|espaços vetoriais]], a transformação linear é uma [[função]] $T: U \to V$ que segue as propriedades:
- $T(v + w) = T(v) + T(w)\ \ \ \forall (v,w) \in U$
- $T(cv) = c T(v)\ \ \ \forall v \in U, c \in \mathbb R$

Temos que a [[Função#Imagem|imagem]] de $T$ se dá por ${T(v)|v \in U}$. Uma transformação linear de mesmo domínio e contradomínio é chamada **operador linear.** ($T: U \to U$).
## Isomorfismo Entre Espaços

Um [[Categoria#Morfismo|isomorfismo]] entre espaços vetoriais é uma [[transformação linear]] [[Função#Injetividade e Sobretividade|sobrejetora]], ou seja, invertível. Temos que $T^{-1}$ também é uma transformação linear.

## Atributos
### Núcleo
O núcleo (ou kernel) de uma transformação linear é o conjunto cujo de elementos em $U$ que levam ao vetor nulo em $V$.

$$\large \text{ker}(T) = \{v \in U : T(v) = 0\}$$
### Nulidade
A nulidade de uma transformação linear é a dimensionalidade do [[#Núcleo|núcleo]] da transformação.
### Posto
O posto de uma transformação linear é a dimensionalidade da [[Função#Imagem|imagem]] da transformação.