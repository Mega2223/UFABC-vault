---
tags:
  - matemática
  - incompleto
  - geometria-analitica
authors: Júlio César
---
## Definição

Sejam $U,V$ [[Espaço Vetorial|espaços vetoriais]], a transformação linear é uma [[função]] $\large T: U \to V$ que segue as propriedades:

- $\large T(v + w) = T(v) + T(w)\ \ \ \forall (v,w) \in U$
- $\large T(cv) = c T(v)\ \ \ \forall v \in U, c \in \mathbb R$

Temos que a [[Função#Imagem|imagem]] de $\large T$ se dá por $\large \{T(v)|v \in U\}$. Uma transformação linear de mesmo domínio e contradomínio é chamada **operador linear** ($\large T: U \to U$).
## Isomorfismo Entre Espaços

Um [[Categoria#Morfismo|isomorfismo]] entre espaços vetoriais é uma [[transformação linear]] [[Função#Injetividade e Sobretividade|bijetora]], ou seja, invertível. Temos que $\large T^{-1}$ existe, $\large T^{-1}$ também é uma transformação linear.
## Atributos
### Núcleo
O núcleo (ou kernel) de uma transformação linear é o conjunto cujo de elementos em $\large U$ que levam ao vetor nulo em $\large V$.
$$\large \text{ker}(T) := \{v \in U : T(v) = 0\}$$
O kernel é um [[Espaço Vetorial#Subespaço Vetorial|subespaço]] de $\large V$ (possivelmente trivial).
### Nulidade e Posto
A nulidade de uma transformação linear é a dimensionalidade do [[#Núcleo|núcleo]] da transformação. O posto de uma transformação linear é a dimensionalidade da [[Função#Imagem|imagem]] da transformação. Temos que, em $\large T:U\to V$
$$\large \dim (U) = \dim(\ker(T)) + \dim(\text{Im}(T))$$
Logicamente temos que se $\large T$ for um [[#Isomorfismo Entre Espaços|isomorfismo]], o kernel será o subespaço trivial $\large\{0\} \in V$ com dimensão 0.