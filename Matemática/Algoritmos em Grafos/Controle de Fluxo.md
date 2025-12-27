---
tags:
  - teoria-de-grafos
  - algoritmo
  - incompleto
authors: Júlio César
aliases:
  - Rede de Fluxo
---
## Definição

Em um [[digrafo]] [[Digrafo#Digrafo Ponderado|ponderado]], o fluxo é uma forma de mapear a capacidade de canais de transporte, a capacidade é uma coloração de arcos aos reais não-negativos, enquanto problemas relacionados a custos visam achar algum caminho de custo mínimo, problemas de fluxo visam encontrar um fluxo máximo entre dois vértices.
## Rede de Fluxo

Uma rede de fluxo é um digrafo $\large G$ onde:
- Para cada arco $\large(u,v) \in E(G)$ há uma coloração não negativa $\large c: E \to \mathbb R_{x \ge 0} \cup \{\infty\}$ (denominada capacidade).
- Para qualquer arco $\large (u,v) \in E(G)$, seu arco complementar $\large(v,u)$ não está no grafo.
- $\large (u,v) \not \in E(G)$ se e somente se $\large c(v,u) = 0$[^3]

Em nossa rede de fluxo, distinguimos dois vértices, $\large s \in V$ é a fonte (_source_) e $\large t \in V$ é o sorvedouro (_sink_), dizemos que a rede é conexa se $\large \forall v \in V/\{s,t\}: s \leadsto v \leadsto t$.
### Superfontes e Supersorvedouros
A definição de rede de fluxo exige que só exista uma única fonte, todavia pode-se mapear uma rede de várias fontes para uma rede de uma fonte sem perda da estrutura da rede. Ainda podemos também ter uma rede com múltiplos sorvedouros, que também não cumprem com a definição do objeto.

Sejam $\large {s_1,s_2,\dots,s_n} \in E(G)$ fontes em $\large G$, sejam $\large t_1,t_2,\dots,t_n \in E(G)$ sorvedouros em $\large G$, a rede de fluxo correspondente é um digrafo complementar $\large G'$ onde temos dois vértices adicionais, $\large s$ e $\large t$:
$$\large 
\begin{gather}
V(G') = V(G) \cup \{s,t\} \\ \\c(s,s_i)=\infty \\ c(t_i,t) = \infty
\end{gather}$$
### Remoção de Arcos Complementares
A definição da estrutura não aceita a existência de arcos complementares, pode-se aplicar um morfismo em um arco com complementar para tornar seu digrafo uma rede, para todo $\large (v_1,v_2) \in E(G)$ cujo complementar $\large(v_2,v_1)$ também está em $\large G$, no lugar de $\large(v_1,v_2)$ pode-se adicionar um novo vértice $\large v^*$ tal que
$$\large 
\begin{gather}
(v_1,v^*)\in E(G') ,(v^*,v_2) \in E(G') \\
c'(v_1,v^*) = c'(v^*,v_2) = c(v_1,v_2)
\end{gather}$$
## Fluxo

Dada uma [[#rede de fluxo]] $\large G$, um fluxo qualquer em $\large G$ é uma função $\large f: V \times V \to \mathbb R$ [^2]que satisfaz as propriedades:
- $\large \forall u,v \in V: 0 \le f(u,v) \le c(u,v)$ (Restrição de capacidade e não-negatividade)
- $\large \forall u \in V / \{s,t\}: \sum_{v \in V} f(v,u) = \sum_{v \in V} f(u,v)$ (Conservação de fluxo)

O valor de uma rede de fluxo, dado por $\large |f|$[^1], é
$$\large |f| := \sum_{v \in V} f(s,v) - \sum_{v \in V} f(v,s)$$
Tipicamente não existem arcos com destino a fonte do fluxo, então a segunda somatória costuma ser $\large 0$.



[^1]: Onde $|f|$ não é o valor absoluto de $f$.

[^2]: Analogamente, uma [[Grafo#Coloração|coloração]] nos arcos da rede

[^3]: Embora a função de capacidade $\large c: V \times V \to \mathbb R_{\ge0}$ seja definida em termos de pares de vértices, ela representa na verdade uma coloração sobre as arestas do digrafo, todavia um detalhe importante é que se $\large (u,v) \not \in E(G)$ então $\large c(u,v) = 0$. A função de custo deve então valorar corretamente arcos que não pertencem à rede.
