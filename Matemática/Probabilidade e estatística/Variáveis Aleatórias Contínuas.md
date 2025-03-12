---
tags:
  - estatística
  - cálculo
  - matemática
authors: Júlio César
---

## Definição

Em certos casos, estamos estudando probabilidades em espaços contínuos, onde a distribuição se dá em uma função ponderada de $x$ e $P(x)$, para esses casos, cada valor de $x$ tem probabilidade 0, então só se pode calcular intervalos de probabilidade por meio da [[integral]]:

$$\Large P(a<x<b) = \int_a^bf(x)dx$$

É necessário que:
-  $f(x)\ge0 \ \ \forall x \in \mathbb{R}$ [[Axiomas da probabilidade#Propriedades|(não negatividade)]]
- $\int_{-\infty}^{\infty }f(x)dx = 1$ [[Axiomas da probabilidade#Propriedades|(normalização)]]

Como resultado dessa função, a probabilidade em um único ponto $p \in \mathbb{R}$ é $\int_p^pf(x) dx = 0$, logo qualquer único valor têm probabilidade 0 e somente intervalos com algum comprimento têm probabilidades positivas.
## Valor Esperado e Variância

Seja $X \in \mathbb{R}$ uma variável aleatória [[Limite#Continuidade|contínua]]:

$$\large E(X) =\int_{-\infty}^\infty x\ f(x)\ dx$$

$$\large \text{Var}(X)=E(X^2) - [E(X)]^2$$

$$\large\sigma(X) = \sqrt{\text{Var}(X)}$$

### Função de distribuição acumulada

$$\large F(a) = P(X\le a) = \int_{-\infty}^a f(x)\ dx$$
## Distribuições contínuas

### Variável Uniforme
$$\large {f(x) = \begin{cases} C & \ a \le x \le b\\0\ &\text{caso contrário} \end{cases}}$$
Onde:  
- $a$ e $b$ são os extremos do intervalo.
- $C = \frac{1}{b-a}$ pelo princípio da [[Variáveis Aleatórias Contínuas#Definição|normalização]].
$$
\begin{align}
E(X) = \frac{a+b}{2}&&
\text{Var}(X) = \frac{(a-b)^2}{12} &&
\sigma(X) = \frac{b-a}{\sqrt{12}} &&
F(x) = \begin{cases} 0 &x<a \\ \frac{x-a}{b-a} & a\le x\le b\\ 1& x>b\end{cases}
\end{align}
$$
### Variável Exponencial
$$\large {f(x) = \begin{cases} \lambda e ^{-\lambda x} & \ x \ge 0\\0\ &\text{caso contrário} \end{cases}}$$
Onde:  
- $\lambda$ é $f(0)$ e determina o comportamento da função.
$$
\begin{align}
E(X) =  \frac{1}{\lambda}&&
\text{Var}(X) = \frac{1}{\lambda^2} &&
\sigma(X) = \frac{1}{\lambda} &&
F(x) = 1-e^{-\lambda x}
\end{align}
$$
### Variável Normal Gaussiana
$$\large f(x) = \frac{1}{\sqrt{2\pi}\sigma}e^{-{(x-\micro )^2}/2\sigma^2}$$
Onde:  
- $\sigma$ é o desvio padrão
- $\micro$ o centro geométrico da função

$$
\begin{align}
E(X) = \micro &&
\text{Var}(X) = \sigma^2 &&
\sigma(X) = \sigma &&
\end{align}
$$

[Exemplo](https://www.desmos.com/calculator/vopqrpcmmz?lang=pt-BR)

A função normal gaussiana existe e é maior que zero $\forall \ x\in\mathbb{R}$, ou seja, $\int_{-\infty}^{\infty}f(x)dx = 1$

### Distribuição Normal Padrão

A distribuição normal padrão é a [[Variáveis Aleatórias Contínuas#Variável Normal Gaussiana|distribuição normal]] cujo $\micro = 0$ e $\sigma = 1$.

$$\large f(x) = \frac{1}{\sqrt{2\pi}}e^{-{x^2}/2}$$
$$
\begin{align}
E(X) = 0 &&
\text{Var}(X) = 1 &&
\sigma(X) = 1 &&
F(x) = \Phi(X)
\end{align}
$$

#### Função distribuição acumulada padrão

A função distribuição acumulada padrão é a [[Variáveis Aleatórias Contínuas#Função de distribuição acumulada|função de distribuição acumulada]] da distribuição normal padrão, ela se dá pela integral $$\Phi(x) = \frac{1}{\sqrt{2\pi}}\int_{-\infty}^x{e^{-{t^2}/2} dt}$$ que é incalculável em termos de [[funções elementares]].