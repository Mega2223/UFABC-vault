---
tags:
  - estatística
  - cálculo
  - matemática
authors: Júlio César
---
## Preposição

O valor esperado possui a propriedade de linearidade, $\forall\ \ X_1, X_2$ temos:
$$E(X_1 + X_2) = E(X_1) + E(X_2)$$

Para **variáveis independentes**, temos a mesma propriedade:
$$\text{Var}(X_1+X_2)=\text{Var}(X_1)+\text{Var}(X_2)$$

Agora, tendo $n \in \mathbb{N}$ variáveis independentes $X_n$:
$$\begin{align}E(X_i) = \micro && \text{Var}(X_i) = \sigma^2 &&i = 1 ,\ \dots,\ n && S_n = \sum_iX_i && M_n = \frac{S_n}{n}\end{align}$$
Quando $n \to \infty$:
$$\begin{align}E(S_n) \to \infty &&\text{Var}(S_n) \to \infty &&\sigma(S_n)\to\infty&&E(M_n) =\micro\to \text{const}&&\sigma(M_n) = \frac{\sigma}{\sqrt{n}}\to0\end{align}$$
Essas variáveis não conseguem comparar o comportamento da distribuição de $n$ variáveis, para isso então é utilizado $Z_n$, onde
$$Z_n = \frac{S_n - n\micro}{\sigma\sqrt{n}} = \frac{S_n - E(S_n)}{\sigma(S_n)}$$
$Z_n$ representa uma soma ponderada de $n$ variáveis $X_i$ de forma normalizada tal que
$$\begin{align}E(Z_n) = 0 && \sigma(Z_n) = 1 && \forall n\end{align} $$
## Definição

O Teorema Central do Limite afirma que, sejam $X_i$ quaisquer variáveis independentes, quando $n\to \infty$, $Z_n$ têm a [[Variáveis Aleatórias Contínuas#Função distribuição acumulada padrão||distribuição normal padrão]]

$$\Large\lim_{n\to\infty}P(Z_n\le z) = \Phi(z)$$
