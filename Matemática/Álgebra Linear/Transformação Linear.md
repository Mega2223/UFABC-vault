---
tags:
  - matemática
  - incompleto
  - geometria-analitica
authors: Júlio César
---
## Definição

Sejam $\large U,V$ [[Espaço Vetorial|espaços vetoriais]], a transformação linear é uma [[função]] $\large T: U \to V$ que segue as propriedades:

- $\large T(v + w) = T(v) + T(w)\ \ \ \forall (v,w) \in U$
- $\large T(cv) = c T(v)\ \ \ \forall v \in U, c \in \mathbb R$

A [[Função#Imagem|imagem]] de $\large T$ se dá por $\large \{T(v)|v \in U\}$. Uma transformação linear de mesmo domínio e contradomínio é chamada **operador linear** ($\large T: U \to U$).
## Isomorfismo Entre Espaços

Um [[Categoria#Morfismo|isomorfismo]] entre espaços vetoriais é uma [[transformação linear]] [[Função#Injetividade e Sobretividade|bijetora]], ou seja, invertível. Temos que $\large T^{-1}$ existe, $\large T^{-1}$ também é uma transformação linear.
## Atributos
### Núcleo
O núcleo (ou kernel) de uma transformação linear é o conjunto cujo de elementos em $\large U$ que levam ao vetor nulo em $\large V$.
$$\large \text{ker}(T) := \{\mathbf v \in U : T(\mathbf v) = \mathbf 0\}$$
O kernel é um [[Espaço Vetorial#Subespaço Vetorial|subespaço]] de $\large V$ (possivelmente trivial).
### Nulidade e Posto
A nulidade de uma transformação linear é a dimensionalidade do [[#Núcleo|núcleo]] da transformação. O posto de uma transformação linear é a dimensionalidade da [[Função#Imagem|imagem]] da transformação. Temos que, em $\large T:U\to V$
$$\large \dim (U) = \dim(\ker(T)) + \dim(\text{Im}(T))$$
Logicamente temos que se $\large T$ for um [[#Isomorfismo Entre Espaços|isomorfismo]], o kernel será o subespaço trivial $\large\{\mathbf 0\} \subseteq V$ com dimensão 0.

### Isometria
Uma função é dita uma isometria quando ela preserva [[Produto Interno e Norma#Distância|distâncias]]
$$\large \text{dist}(\mathbf v,\mathbf w) = \text{dist}(T(\mathbf v),T(\mathbf w))$$
Se $\large T(\mathbf 0) =\mathbf 0$, a isometria é dita central. A função só é uma transformação linear caso ela seja central.
## Projeção

Uma projeção $\large T$ é uma [[transformação linear]] em um espaço vetorial a um subespaço de si mesmo, $\large T: V \to W, W \subseteq V$.

$\large T$ é uma projeção se e somente se $\large T \circ T = T$ (idempotente).
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
Sejam $\large U$ e $\large V$ espaços vetoriais de dimensão finita, $\large B$ e $\large C$ bases para $\large U$ e $\large V$ respectivamente, $\large T: U \to V$ uma transformação linear qualquer de $\large U$ para $\large V$, é possível representar qualquer vetor em $\large U$ em uma [[combinação linear]] de $\large B$ e qualquer vetor de $\large V$ em uma combinação linear de $\large C$.

$$\large \begin{gather}
\mathbf u = c_1\mathbf u_1 + \dots + c_n \mathbf u_n & c \in \mathbb R,\mathbf u \in U \\
T(\mathbf u) = k_1 \mathbf v_1 + \dots + k_m\mathbf v_m & k \in\mathbb R, \mathbf v \in V
\end{gather}$$

Existe uma relação entre cada vetor da base de $\large U$ e os demais vetores da base de $\large V$, a transformação pode ser interpretada como uma transformação entre os coeficientes das bases  ($\large \mathbb R^n \to \mathbb R^m$) de forma que existe uma matriz $\large A$ tal que

$$
\large\begin{gather}
[\mathbf u]_C = A[T(\mathbf u)]_B \\ 
\end{gather}
$$

Ou seja, qualquer transformada linear em espaços gerados pode ser descrita em termos de uma matriz que relaciona coeficientes da base do domínio para coeficientes da base do contradomínio.

Por exemplo, sejam $\large U$ e $\large V$ os espaços $\large \mathbb R^3$ e $\large \mathbb R^2$ respectivamente, gerados pelas [[Matemática/Álgebra Linear/Combinação Linear#Bases Geradoras|bases]] canônicas ortonormais $\large B = \{(1,0,0),(0,1,0),(0,0,1)\}$ e $\large C = \{(1,0),(0,1)\}$, a transformação

$$\large
\begin{gather}
\mathbf u \in U = (\alpha_1 , \alpha_2 , \alpha_3) \\\
T(\mathbf u) = (\alpha_1 + \alpha_2, \alpha_1 - \alpha_3)
\end{gather}$$
 Pode ser descrita como a multiplicação matricial
 $$\large \begin{gather}
 T(\mathbf u)= \begin{bmatrix}
 1 & 1 & 0 \\
 0 & 1 & -1
\end{bmatrix}\mathbf u
\end{gather}$$
