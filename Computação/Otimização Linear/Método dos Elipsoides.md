---
tags:
  - computação
  - geometria-analitica
  - matemática
  - algoritmo
authors: Júlio César
---
## Definição

É um método de resolução de [[Modelo|modelos lineares]] e modelos não lineares, é um algoritmo com complexidade máxima polinomial, menor que o [[método simplex]], todavia os casos mais complexos do simplex são raros enquanto os deste método são frequentes, assim, embora em tese este método tenha uma complexidade teórica menor que a do simplex, na prática o simplex tende a ser o mais eficiente.

## Elipsoide

Um elipsoide é uma generalização de um elipse para qualquer base $\mathbb{R}^3$ onde
$$\large \frac{x^2}{a^2} +\frac{y^2}{b^2} + \frac{z^2}{c^2}  \le1$$
Seja $X = (x,y,z)$ o elipsoide pode ser representado de forma [[Matriz|matricial]]
$$\large \begin {align}
X^T M^{-1}X \le 1 && M =
\begin{bmatrix} a^2 & 0 & 0 \\ 0 & b^2 &0 \\ 0 & 0 & c^2\end{bmatrix}
\end{align}$$
Temos a função do formato do elipsoide como

$$\Large \text{E}(M,X^0) = (X - X^0) M^{-1}(X-X^0) \le 1$$

Onde
- $X^0$ é o ponto central
- $M$ é a matriz contendo os coeficientes do sólido
- $X$ é o vetor dos pontos avaliados na desigualdade

## Solução

Dado um sistema **convexo** $Ax \le b$ o método consegue determinar uma solução viável (caso exista):

O algoritmo inicia com um elipsoide e $\text{E}(M,0)$ que contém toda a região viável. Caso o centro não satisfaça a solução viável, deve-se encontrar uma restrição que não é satisfeita pelo elipsoide e o elipsoide deve ser atualizado para um menor que satisfaça tal restrição.

- Dada a restrição sendo violada $\alpha$ deve ser encontrado um ponto $y$ que é simultaneamente parte de um hiperplano qualquer paralelo a $\alpha$ e simultaneamente na superfície de $E$.
- Deve se achar um novo ponto $X' = X + \lambda \overset{\longrightarrow}{xy}$ que será o novo centro do elipsoide.
- É achado uma nova matriz $M'$ e verificado se o centro de $E(M',X')$ é uma solução viável.
- Se não for, deve-se repetir o algoritmo.

## Equações

Numa determinada iteração $k$, seja $\alpha$ uma restrição que viola o [[modelo#Forma canônica|sistema linear]] $a^T x \le b$ em $E(M^K,X^K)$:
$$\large \begin{gather}
\mu = \frac{M^k a}{\sqrt{a^T M^k a}} && \beta = \frac{b - a^T X^k}{\sqrt{a^T M^k a}} \\ \\ \\
X^{k+1} = X^k - \frac{1 - \beta}{n + 1} \mu && M^{k+1} = \frac{n^2}{n^2-1}\bigg(M^k - \frac{2}{n+1} \mu \mu^T\bigg)
\end{gather}
$$