---
tags:
  - matemática
  - geometria-analitica
  - incompleto
authors: Júlio César
aliases:
  - Vetores
  - Vetor
---
## Definição

Vetor é uma representação com módulo, direção e sentido de uma grandeza física vetorial. Analiticamente falando, um vetor é o conjunto de todos os diferenciais de 2 pontos de mesma grandeza, tamanho e sentido. Vetores podem ser representados por setas, observe:

![[Vetor.png|center|275]]

O vetor é utilizado para quantificar quantidades que não podem ser expressadas por um número real, ele é considerado um tensor de primeira ordem.

A [[derivada]] de um vetor também é um vetor, no cálculo vetorial pode ser notada de várias formas.

No #cálculo e na #geometria-analitica, as notações $d/dx$ e $x"$ tendem a ser mais comuns, enquanto na #física a notação convencional da derivada de um vetor é $\dot{x}$ ou até mesmo $\nabla x$.

O único vetor que não possui magnitude zero é denominado **vetor nulo** e dado como $\vec{0}$.
## Operações vetoriais

Existem operações entre vetores :o, estas são:
### Soma / Subtração
Dado vetores $\vec{a}$ e $\vec{b}$, $\vec{v} = \vec{a} + \vec{b}$:
$$\Large \vec{v}_i = \vec{a}_i + \vec{b}_i$$
### Tamanho / Magnitude
Dado um vetor $\overrightarrow{v}$ que seja $n$ dimensional, sua magnitude é

$$\Large || \vec{v} || = \sqrt{\displaystyle\sum_{i=1}^{n} v_i^2}$$

E a o versão normalizada de $\overrightarrow{v}$ se dá por
$$\Large {\widehat{v} = \frac{\vec{v}}{||\vec{v}||}}$$
### Norma Vetorial
É uma generalização do [[#Tamanho / Magnitude|tamanho]] de um vetor para um determinado $m \in \mathbb{N}$
$$\large ||\vec{v}||_m = \bigg( \sum_{i=1}^n |\vec{v}_i|^m \bigg)^{\frac{1}{m}}$$
A magnitude do vetor é a norma vetorial com $m = 2$. Também temos que
$$\large||\vec{v}||_\infty = \max_i |x_i|$$
### Produto escalar
Sejam $\vec{a}$ e $\vec{b}$ vetores de $n \in \mathbb{N}$ dimensão:

$$\Large\vec{a} \cdot \vec{b} = \displaystyle\sum_{i=1}^{n} a_i.b_i$$

O produto escalar é a projeção do vetor $\vec{a}$ sob a direção $\hat{b}$ , logo também pode ser expressado por

$$\Large \vec{a} \cdot \vec{b} = ||\vec{a}|| \ ||\vec{b}|| \ cos\ \theta$$

O produto escalar pode ser usado para calcular o ângulo entre 2 vetores, sejam $\vec{a}$ e $\vec{b}$ vetores e $\theta$ o ângulo entre $\vec{a}$ e $\vec{b}$ :

$$\cos(\theta) = \frac{\vec{a} \cdot \vec{b}}{||\vec{a}|| . ||\vec{b}||}$$

Logo,

$$\theta_{\vec{a}\vec{b}} = \arccos \bigg(\frac{\vec{a} \cdot \vec{b}}{||\vec{a}|| . ||\vec{b}||}\bigg)$$

Assim, $\vec{a} \cdot \vec{b} = 0 \iff |\theta| = \frac{\pi}{2}$ , ou seja, o ângulo entre eles é um ângulo reto. 

Quando o vetor é expresso como uma [[#Vetor como Matriz|matriz de uma coluna]] é comum denotar o produto escalar como $a^T b$.
### Produto vetorial
O produto vetorial é um produto de 2 vetores tridimensionais que gera outro vetor, ele se dá por:

$$\large\vec{a} \times \vec{b} =  \hat{n}\ ||\vec{a}||\ ||\vec{b}|| \sin\theta$$

Onde $\theta$ é o ângulo entre os vetores e $\hat{n}$ é um vetor positivamente ortogonal a ambos os vetores. Existem vários meios de chegar no produto vetorial, mas o meu preferido é:
$$\Large
\begin{bmatrix}
v_1 \\ v_2 \\ v_3
\end{bmatrix} =
\begin{bmatrix}
a_2b_3 - a_3b_2 \\
a_3b_1 - a_1b_3 \\
a_1b_2 - a_2b_1
\end{bmatrix}
$$
Propriedades do produto vetorial:
$$ \begin{gather} \vec{v} \cdot \vec{a} = 0 ,\ \
\vec{v} \cdot \vec{b} = 0 \\
||\vec{v}|| = ||\vec{a}||\ ||\vec{b}|| \sin\theta\\
\vec{a} \times \vec{b} = - (\vec{b} \times \vec{a}) \\
\vec{a}\times(\vec{b} + \vec{c}) = (\vec{a} \times \vec{b}) + (\vec{a} \times \vec{c}) \\
\lambda(\vec{a} \times \vec{b}) = \lambda \vec{a} \times \vec{b}
\end{gather}$$

### Produto misto
//TODO :p

## Operações cartesianas

Geometricamente, um vetor é um conjunto de todos os segmentos de mesmo tamanho, direção e sentido em um plano cartesiano. O conjunto de possíveis vetores é chamado de espaço vetorial.
$$\large \vec{v} \in \mathbb V^n$$
Um vetor pode ser representado pelo diferencial de dois pontos cartesianos, sejam $A$ e $B \in \mathbb{R}^n$ , $n \in \mathbb{N}$ dois pontos, o vetor $\vec{AB}$ é diferença entre os pontos $A$ e $B$
$$\overset{\longrightarrow}{AB} = B - A$$ 
## Vetor como Matriz

Um vetor pode ser representado como uma [[matriz]], normalmente usa-se o formato de matriz coluna, onde
$$\large \vec{v} \in \mathbb{V}^n \to v \in \mathbb{R}^{n\times1} = \begin{bmatrix}v_1 \\ \vdots \\ v_n \end{bmatrix}$$
Assim, operações vetoriais podem ser interpretadas como operações matriciais.
