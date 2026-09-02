---
tags:
  - matemática
  - incompleto
  - cálculo
---
## Definição

Seja $\large f: \mathbb R^n \to \mathbb R^m$ uma função, sua jacobiana é uma [[matriz]] $\large \in \mathbb R^{m\times n}$ de [[Derivada Parcial|derivadas parciais]] onde cada linha representa um [[Vetor Gradiente|gradiente]] de cada componente $\large f_i$ de $\large f$. De forma geral, qualquer função do tipo 
$$\large \begin{gather}
f: \mathbb R^n \to \mathbb R^m \\
f(\mathbf x) \mapsto \mathbf y
\end{gather}$$
Pode ser decomposta em $\large m$ funções de tipo $\large \mathbb R^n \to \mathbb R$, de forma que
$$\large \begin{gather}
f(\mathbf x) = \langle f_1(\mathbf x),f_2(\mathbf x) ,\dots,f_m(\mathbf x)  \rangle \\
\end{gather}$$
A matriz jacobiana é uma matriz do tipo
$$\large
J_f(\mathbf x) :=\begin{bmatrix}
\nabla f_1(\mathbf x) \\
\nabla f_2(\mathbf x) \\
\vdots\\
\nabla f_m(\mathbf x)
\end{bmatrix}$$
Decompondo os gradientes, a jacobiana é da forma
$$\large
J_f(\mathbf x) := \Large \begin{bmatrix}
\frac{\partial  f_1}{\partial x_1} & 
\frac{\partial  f_1}{\partial x_2} & \dots &
\frac{\partial  f_1}{\partial x_n} & \\

\frac{\partial  f_2}{\partial x_1} & 
\frac{\partial  f_2}{\partial x_2} & \dots &
\frac{\partial  f_2}{\partial x_n} & \\
\vdots & \vdots & \ddots & \vdots \\
\frac{\partial  f_m}{\partial x_1} & 
\frac{\partial  f_m}{\partial x_2} & \dots &
\frac{\partial  f_m}{\partial x_n} &
\end{bmatrix}$$
