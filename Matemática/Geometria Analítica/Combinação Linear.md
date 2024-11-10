---
tags:
  - geometria-analitica
  - matemática
authors: Júlio César
---
## Definição

Uma combinação linear é um somatório de [[vetores]] ponderados. Seja $\lambda_i \in \mathbb{R}$ qualquer escalar:
$$\Large\vec{\omega} = \sum_{i =1}^{n} \vec{v_i} \lambda_i$$
Dizemos que $\vec{\omega}$ é combinação linear dos vetores $\{\vec{v_1},\ ...,\ \vec{v_i}\}$.
## Dependência Linear

Um grupo de vetores é considerado linearmente dependente ($\text{LD}$) se somente se houver como escrever um vetor do grupo como combinação linear dos demais, caso contrário, este grupo de vetores é determinado linearmente independente ($\text{LI}$). Quaisquer vetores não nulos e não paralelos são linearmente independente. Podemos assumir que:
- Quaisquer dois vetores $\vec{a}\ \vec{b}$ em $\mathbb{V}^2$ são $\text{LD} \iff \vec{a}\ ||\ \vec{b}$
- Quaisquer três vetores em $\mathbb{V}^3$ são $\text{LD}$ se e somente se eles são coplanares
- 4 ou mais vetores sempre são $\text{LD}$ <sub>para propósitos de GA</sub>

**Axioma:** Dados 2 vetores $(\vec{u}\ \ \vec{v}) \in \mathbb{V}^2$ esses vetores são $\text{LI}$ e se somente se:
$$\large\begin{align} \hat{v} \ne \hat{u} && \land  &&-\hat{v} \ne \hat{u} \end{align}$$
**Axioma:** Podemos saber se 3 vetores $(\vec{u}\ \ \vec{v}\ \ \vec{w})  \in \mathbb{V}^3$ são $\text{LI}$ com a [[Matriz#Determinante|determinante]], esses vetores são $\text{LI}$ e se somente se:
$$\text{det}\large\begin{pmatrix}
u_{1} & u_{2} & u_{3}  \\
v_{1} & v_{2} & v_{3}  \\
w_{1} & w_{2} & w_{3}
\end{pmatrix}\ne 0 $$
## Base

Um conjunto ordenado de vetores $\text{LI}$ gera uma base onde todo e qualquer vetor pode ser descrito como combinação linear dos vetores da base.
- 2 Vetores $LI$ geram um plano $\mathbb{V}^2$
-  3 Vetores $LI$ geram $\mathbb{V}^3$

### Base ortogonal
Uma base é ortogonal se e somente se $\vec{a}\perp \vec{b}\ \ \forall (a,b)\in B$ 
### Base ortonormal
Uma base é ortonormal se e somente se:
- $\vec{a}\perp \vec{b}\ \ \forall (a,b)\in B$
- $||\vec{a}||\ B= 1$

A base ortonormal é normalmente denotada pelos vetores $\vec{i}\ \vec{j}\ \vec{k}$, que representam os eixos $x$, $y$ e $z$ positivos respectivamente.
