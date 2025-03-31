---
tags:
  - algoritmo
  - estatística
  - computação
  - incompleto
  - matemática
authors: Júlio César
---
## Definição

É um método de [[regressão]] não-linear que visa em sua maior parte retificar problemas relacionados à [[Regressão Polinomial]], que é muito variável em graus altos e muito simples em graus baixos. A regressão em splines visa dividir o domínio dos preditores em várias funções de grau semelhante e transacionar entre essas funções de forma natural. Ou seja, a regressão em splines divide o domínio de $f$ em setores visa replicar o efeito de uma regressão polinomial simples enquanto mantêm a coerência da função entre os setores.

Dados pontos $\xi_1, \xi_2, \cdots, \xi_K$, uma função $S_p : [a,b] \to \mathbb{R}$ é um _spline_ de grau $p$ se

$$\large
\begin{gather}
S_p\text{ satisfaz}
\begin{cases}
S_p(x) = s_1(x) & x \lt \xi_1 \\
S_p(x) = s_k(x) & x \in [\xi_{k-1}] & k \in \{2, ..., K\}\\
S_p(x) = s_K(x) & x \ge \xi_K
\end{cases} \\ \\

s_k(x) \text{ é polinômio de grau } p \\ \\
S_p \in C^{p-1}[a,b] \text{ (p-1 derivadas contínuas) }
\end{gather}
$$
