
## Definição

Em certos casos, estamos estudando probabilidades em espaços contínuos, onde a distribuição se dá em uma função ponderada de $x$ e $P(x)$, para esses casos, cada valor de $x$ tem probabilidade 0, então só se pode calcular intervalos de probabilidade por meio da [[integral]]:

$$\Large P(a<x<b) = \int_a^bf(x)dx$$

É necessário que:

-  $f(x)\ge0 \ \ \forall x \in \mathbb{R}$ [[Introdução a axiomas da probabilidade.#Propriedades||(não negatividade)]]
- $\int_{-\infty}^{\infty }f(x)dx = 1$ [[Introdução a axiomas da probabilidade.#Propriedades||(normalização)]]

## Valor Esperado e Variância

Seja $X \in \mathbb{R}$ qualquer variável aleatória:

$$\large E(X) =\int_{-\infty}^\infty x\ f(x)\ dx$$

$$\large \text{Var}(X)=E(X^2) - [E(X)]^2$$

$$\large\sigma(X) = \sqrt{\text{Var}(X)}$$

## 

### Função de distribuição acumulada:

$$\large F(a) = P(X\le a) = \int_{-\infty}^a f(x)\ dx$$
## Distribuições contínuas

#### Variável Uniforme
$$\large {f(x) = \begin{cases} C & \ a \le x \le b\\0\ &\text{caso contrário} \end{cases}}$$

$$
\begin{align}
E(X) = \frac{a+b}{2}&&
\text{Var}(X) = \frac{(a-b)^2}{12} &&
\sigma(X) = \frac{b-a}{\sqrt{12}}
\end{align}
$$
#### Variável Exponencial
$$\large {f(x) = \begin{cases} \lambda e ^{-\lambda x} & \ x \ge 0\\0\ &\text{caso contrário} \end{cases}}$$
$$
\begin{align}
E(X) =  \frac{1}{\lambda}&&
\text{Var}(X) = \frac{1}{\lambda^2} &&
\sigma(X) = \frac{1}{\lambda}
\end{align}
$$
#### Variável Normal Gaussiana
$$\large f(x) = \frac{1}{\sqrt{2\pi}\sigma}e^{-{(x-\micro )^2}/2\sigma^2}$$
Onde:  
- $\sigma$ é o desvio padrão
- $\micro$ o centro da função

$$
\begin{align}
E(X) = \micro &&
\text{Var}(X) = \frac{1}{\lambda^2} &&
\sigma(X) = \sigma
\end{align}
$$

[Exemplo](https://www.desmos.com/calculator/vopqrpcmmz?lang=pt-BR)

A função normal gaussiana existe $\forall \ x\in\mathbb{R}$, ou seja, $\int_{-\infty}^{\infty}f(x)dx = 1$
