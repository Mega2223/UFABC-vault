---
tags:
  - algoritmo
  - matemática
  - computação
  - incompleto
authors: Júlio César
---
## Definição

É um algoritmo de solução de [[Modelo Linear|modelos de otimização]] que é aplicado pela progressão gradual de soluções viáveis dentro do polítipo da região viável. O método utiliza de uma função barreira que serve de penalização para que o método não cruze as fronteiras da região viável. Conforme a solução converge com a solução ótima a penalidade é reduzida, o método nunca encontra de fato a solução ótima, em vez disso sua condição de parada é um raio suficientemente perto da otimalidade.
## Algoritmo

### Função barreira
É utilizada uma função cujo. $$\lim_{x\to0^+} f(x) = - \infty$$A função barreira mais comum é $\ln(x)$, mas $-x^{-1}$ também é relativamente comum, esta função é utilizada para empurrar o vetor solução para uma solução mais ótima
$$
\large \begin{align}
f_\mu (x) = c^Tx + \text{B}_\mu (x) && &&
\text{B}_\mu(x) = \mu \sum_{i=1}^m \ln(b_i - a_i^T x) \\ && \mu \gt0
\end{align}
$$
Onde
- $\mu$ controla a influência da função barreira, é diminuído gradualmente conforme é aproximada a solução ótima
- $a_i$ é a $i$-ésima coluna de $A$
