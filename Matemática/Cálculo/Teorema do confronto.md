---
authors: Júlio César
tags:
  - cálculo
  - "#matemática"
---
O teorema do confronto é um teorema que nos ajuda a encontrar o [[limite]] de uma função com uma indefinição em onde estamos tentando a analisar.

O teorema implica que, sejam $a$, $b$ e $f$ funções, e $a$ e $b$ contínuas em $x \in \mathbb{R}$ e

$$\large a(x) \geq f(x) \geq b(x)$$

se em $c \in \mathbb{R}$, $a(x) = b(x)$, concluímos que:

$$\large \lim_{x\to c}a(x) = \lim_{x \to c} f(x) = \lim_{x \to c} b(x)$$

Mesmo se $f$ não é definido em $x$

Por exemplo, seja $f(x) = x sin(\frac{1}{x})$, sabemos que $f$ não existe em $x$, mas pelo domínio da função seno sabemos que $1 \geq sin(x) \geq -1$, logo:
$$\large x \geq x\ sin(n) \geq x\ \ \forall n \in \mathbb{R}$$
<center>como</center>

$$\large \lim _{x\to0}x=0$$

<center>podemos concluir que</center>

$$\large \lim_{x\to 0}x\sin \frac{1}{x} = 0$$