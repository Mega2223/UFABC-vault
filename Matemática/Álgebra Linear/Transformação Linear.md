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

### Isometria
Uma função é dita uma isometria quando ela preserva [[Produto Interno e Norma#Distância|distâncias]]
$$\large \text{dist}(v,w) = \text{dist}(T(v),T(w))$$
Se $\large T(0) = 0$, a isometria é dita central. A função só é uma transformação linear caso ela seja central.
## Matrizes Como Transformações Lineares

Um espaço com uma base de $\large n$ vetores pode ser transformado para um espaço com base de $\large m$ vetores a partir de uma [[Matriz#Multiplicação de matrizes|multiplicação matricial]], de forma geral uma multiplicação do tipo

$$\large \begin{bmatrix}
& \leftarrow & n & \rightarrow & \\
\uparrow \\ m \\ \downarrow \\ \
\end{bmatrix}
\begin{bmatrix}
\uparrow \\
\ n\ \\
\downarrow
\end{bmatrix} =
\begin{bmatrix}
\uparrow \\
\ m\ \\
\downarrow
\end{bmatrix}
$$

É uma transformação do tipo

$$\Large\begin{gather}
T: \mathbb R^n \to \mathbb R^m \\
T(b) := Ab
\end{gather}$$

### Transformação de Bases para Matrizes
Sejam $\large U,V$ espaços vetoriais de base $\large A$ e $\large B$, $\large T: U \to V$ uma transformação linear qualquer, $\large T$ pode ser representada como uma matriz $\large M$