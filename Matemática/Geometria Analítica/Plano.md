---
tags:
  - incompleto
  - matemática
  - geometria-analitica
authors: Júlio César
---
## Definição

Um plano é um conjunto de pontos que satisfazem um sistema de equações lineares com 2 graus de liberdade, um plano têm área mas não volume.
## Equações

### Equação Vetorial do Plano
Sejam $\vec{v}$ e $\vec{u}$ dois [[Vetor|vetores]] linearmente independentes num plano, $p$ um ponto no plano, este plano pode ser definido pela equação vetorial
$$\large P = P_0 + \lambda \vec{v} + \omega \vec{u}$$
$\lambda$ e $\omega$ quaisquer escalares.
### Equação Paramétrica do Plano
Semelhante a [[Plano#Equações#Equação Vetorial do Plano|equação vetorial]], define um ponto no plano como uma equação paramétrica
$$\Large \begin{gather}x = x_0 + \lambda\ \vec{v_x} + \omega\ \vec{u_x} \\
y = y_0 + \lambda\ \vec{v_y} + \omega\ \vec{u_y} \\
z = z_0 + \lambda\ \vec{v_z} + \omega\ \vec{u_z} 
\end{gather}$$
### Equação Geral do Plano
A equação geral do plano surge da propriedade de ortogonalidade do [[Vetor#Produto escalar|produto escalar]], onde 2 vetores $\text{LI}$ sempre têm o produto vetorial 0, assim, um plano pode ser definido como um ponto no plano e um vetor $\vec{N}$ ortogonal ao plano, de tal forma que:
$$\large \begin{align} \overset{\longrightarrow}{P_0 P} \cdot \vec{N} = 0&&\forall P \end{align}$$
Assim, a equação geral do plano se dá por:
$$\Large \vec{N_1} x + \vec{N_2} y + \vec{N_3} z = d$$

## Propriedades

### Coplanaridade Entre Retas
Sejam $r = A + \lambda \vec{v}$ e $s = B + \omega \vec{u}$ duas retas, estas são complanares se e somente se 
$$\large (\vec{u} \times \vec{v}) \cdot \overset{\longrightarrow}{AB} = 0$$
### Planos Paralelos
Sejam $\pi_1$ e $\pi_2$ planos, eles são paralelos se e somente se os seus vetores normais forem paralelos, ou seja
$$\large \vec{N_1} = \lambda \vec{N_2}$$
Caso dois planos não sejam paralelos, a intersecção entre eles é uma reta $r$, o [[Reta e Segmento#Equação Vetorial da Reta|vetor direção]] desta reta se dá por 
$$\large \vec{v} = \vec{N_1} \times \vec{N_2} $$
### Distância Entre Planos e Retas


### Distância Entre Planos
