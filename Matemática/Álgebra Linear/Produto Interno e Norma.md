---
tags:
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

Seja $\large V$ um [[espaço vetorial]] qualquer, $\large u,v,w \in V$ quaisquer vetores, o produto interno $\large \langle \ \ , \ \ \rangle: V \to \mathbb R$ é uma [[função]] onde
$$\Large
\begin{gather}
\langle v,w \rangle = \langle w,v \rangle \\
\langle v,v \rangle \ge 0 \\
\langle 0,0 \rangle = 0 \\
\langle kv,w \rangle = k \langle v,w \rangle \forall k \in \mathbb R \\
\langle u+w,v \rangle = \langle u,v \rangle + \langle w,v \rangle
\end{gather}
$$
A norma de um vetor é dada em relação ao produto interno
$$\Large ||v|| := \sqrt{\langle v,v \rangle}$$
## Angulo, Ortogonalidade e Normalidade

O angulo entre dois vetores é definido em termos do produto interno
$$\large \theta := \arccos\bigg (\frac{\langle v,w \rangle}{||v||\ ||w||}\bigg)$$
Dois vetores são ditos ortogonais quando o angulo entre eles é um angulo reto, ou seja, $\large \langle v,w \rangle = 0$.

Um vetor é dito normal quando sua norma é 1, um conjunto de vetores ortogonais entre si e normais é dito ortonormal.

## Projeção

Uma projeção $\large T$ é uma [[transformação linear]] em um espaço vetorial a um subespaço de si mesmo, $\large T: V \to W, W \subseteq V$.

$\large T$ é uma projeção se e somente se $\large T \circ T = T$ (idempotente).

## Distância

A distância entre dois membros de um espaço vetorial $\large V$ é dada em função da [[#norma]] do espaço
$$\large \text{dist}(v,w) := || v-w || $$

## Convenções

### Reais
Em $\large \mathbb R^n$ é comum definir o produto interno como
$$\Large \langle v,w \rangle := \sum_{i=1}^d v_iw_i$$
que é equivalente ao [[Vetor#Produto escalar|produto escalar geométrico]].
### Matrizes
Em $\large \mathbb R^{m\times n}$ o produto interno pode ser definido como o produto de Frobenius:
$$\large \langle A,B \rangle := \sum_i^m \sum_j^n a_{ij} b_{ij}$$

### Funções Contínuas
Sejam $\large f,g \in V$ funções contínuas no intervalo $\large (a,b) \subseteq \mathbb R$, o produto interno pode ser dado de acordo com a [[integral]] da função no intervalo:
$$\large \langle f,g \rangle := \int_a^b |f(x) g(x)| dx $$