---
tags:
  - matemática
  - cálculo
authors: Júlio César
---

## Definição

O Limite é o comportamento de uma determinada a função quando ela tende a valores infinitamente perto de $x$ que não são $x$ .

$$
\forall \epsilon > 0,\ \exists N \in \mathbb{N}; \forall i \in \mathbb{N} \land i \geq N \rightarrow |x_i-L| < \epsilon
$$
Assim, temos
$$
\lim _{x\to c} f(x) = L
$$
Como o limite da função $f$ em $c$.

Em geral, o cálculo do limite exige o raciocínio lógico e o conhecimento da função em questão.
## Utilidades.

As definições de cálculo numérico exigem do limite para sua própria definição. Como o limite leva em conta o comportamento da função arbitrariamente perto de $x$ mas nunca em $x$ ele pode ter várias utilidades, por exemplo, suponhamos que queiramos calcular o limite da seguinte função em $0$:

$$\Large f(x)= \frac{\sin x}{x}$$

Claramente, $f(x)$ não existe em $0$, mas ainda há como calcular o seu limite.
A forma mais prática de calcular esse limite é teorema do confronto; Pela propriedade da função seno temos:

<div style="display:flex; justify-content:center"><iframe src="https://www.desmos.com/calculator/glzppqnasx?embed" width="250" height="250" style="border: 1px solid #ccc" frameborder=0></iframe></div>

$$\sin x \leq x \leq \tan x$$

Logo,

$$\frac{1}{\sin x} \geq \frac{1}{x} \geq \frac{\cos x}{\sin x}$$
Finalmente,
$$1\geq \frac{\sin x}{x}\geq \cos x$$
Sabemos que $$\lim _{x\to 0} 1 = 1$$ e que $$\lim _{x\to 0} \cos x = 1$$
Por [[Teorema do confronto]], concluímos que:

$$
\lim _{x\to 0} \frac{\sin x}{x} = 1
$$

Mesmo que a função não exista em $0$, podemos demonstrar isso visualmente:

<div style="display: flex; justify-content: center"><iframe src="https://www.desmos.com/calculator/qf3wqz9tfj?embed" width="600" height="250" style="border: 1px solid #ccc" frameborder=0></iframe></div>


## Limites laterais

Limites laterais são os limites de uma função quando só consideramos o comportamento da função por um lado.

$$\lim _{x\to c^-} f(x) = L_1 \ \ \ \ \ \ \ \ \ \ \ \  \lim _{x\to c^+} f(x) = L_2 $$
É um axioma do limite que, o limite de $f$ em $x$ só existe se ambos os limites laterais existirem e **forem idênticos**.

$$\exists\ {\lim _{x\to c} f(x)}\ \ {\iff}\ \ \exists\ {\lim _{x\to c^+} f(x)}\ \land \ \exists\ {\lim _{x\to c^-} f(x)}$$

Por exemplo, seja $f(x) = \frac{1}{x}$, o limite de $f$ não existe em 0 pois os limites laterais são diferentes ($-\infty$ e $+\infty$ respectivamente)

## Continuidade

Uma função $f$ é considerada contínua em um [[intervalo]] $I$ se e somente se

$$f(x) = \lim_{l\to x}{f(l)}; \forall x\in I$$
