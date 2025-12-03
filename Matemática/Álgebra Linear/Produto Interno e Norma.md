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
## Convenções padrão

### Reais
Em $\large \mathbb R^n$ é comum definir o produto interno como
$$\Large \langle v,w \rangle := \sum_{i=1}^d v_iw_i$$
que é equivalente ao [[Vetor#Produto escalar|produto escalar geométrico]].

### Matrizes
Em $\large \mathbb R^{m\times n}$ o produto interno pode ser definido como o produto de Frobenius:
$$\large \langle A,B \rangle := \sum_i^m \sum_j^n a_{ij} b_{ij}$$