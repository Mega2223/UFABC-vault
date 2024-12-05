---
tags:
  - matemática
  - geometria-analitica
  - incompleto
authors: Júlio César
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
### Produto vetorial

O produto vetorial é um produto de 2 vetores tridimensionais que gera outro vetor, ele se dá por:

$\vec{a} \times \vec{b} =  \hat{n}\ ||\vec{a}||\ ||\vec{b}|| \sin\theta$

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
$\vec{v} \cdot \vec{a} = 0$
$\vec{v} \cdot \vec{b} = 0$
$||\vec{v}|| = ||\vec{a}||\ ||\vec{b}|| \sin\theta$
$\vec{a} \times \vec{b} = - (\vec{b} \times \vec{a})$

### Produto misto:
//TODO :p

## Operações cartesianas

Geometricamente, um vetor é um conjunto de todos os segmentos de mesmo tamanho, direção e sentido em um plano cartesiano. O conjunto de possíveis vetores é chamado de espaço vetorial.
$$\large \vec{v} \in \mathbb V^n$$
Um vetor pode ser representado pelo diferencial de dois pontos cartesianos, sejam $A$ e $B \in \mathbb{R}^n$ , $n \in \mathbb{N}$ dois pontos, o vetor $\vec{AB}$ é diferença entre os pontos $A$ e $B$
$$\overset{\longrightarrow}{AB} = B - A$$ 
