---
tags:
  - teoria-de-grafos
  - algoritmo
authors: Júlio César
aliases:
  - Rede de Fluxo
---
## Definição

Em um [[digrafo]] [[Digrafo#Digrafo Ponderado|ponderado]], o fluxo é uma forma de mapear a capacidade de canais de transporte e o fluxo de materiais onde a produção e consumo são contínuos, a capacidade é uma coloração de arcos aos reais não-negativos. Enquanto problemas relacionados a custos visam achar algum caminho de custo mínimo, problemas de fluxo visam encontrar um fluxo máximo entre dois vértices.
## Rede de Fluxo

Uma rede de fluxo é um digrafo $\large G$ onde:
- Para cada arco $\large(u,v) \in E(G)$ há uma coloração não negativa $\large c: E \to \mathbb R_{x \ge 0} \cup \{\infty\}$ (denominada capacidade).
- Para qualquer arco $\large (u,v) \in E(G)$, seu arco complementar $\large(v,u)$ não está no grafo.
- $\large (u,v) \not \in E(G)$ se e somente se $\large c(v,u) = 0$[^3]

Em nossa rede de fluxo, distinguimos dois vértices, $\large s \in V$ é a fonte (_source_) e $\large t \in V$ é o sorvedouro (_sink_), tipicamente queremos achar qual é o maior [[#fluxo]] possível de $\large s$ até $\large t$, dizemos que a rede é conexa se $\large \forall v \in V/\{s,t\}: s \leadsto v \leadsto t$.
### Superfontes e Supersorvedouros
A definição de rede de fluxo exige que só exista uma única fonte, todavia pode-se mapear uma rede de várias fontes para uma rede de uma fonte sem perda da estrutura da rede. Ainda podemos também ter uma rede com múltiplos sorvedouros, que também não cumprem com a definição do objeto.

Sejam $\large {s_1,s_2,\dots,s_n} \in E(G)$ fontes em $\large G$, sejam $\large t_1,t_2,\dots,t_n \in E(G)$ sorvedouros em $\large G$, a rede de fluxo correspondente é um digrafo complementar $\large G'$ onde temos dois vértices adicionais, $\large s$ e $\large t$:
$$\large 
\begin{gather}
V(G') = V(G) \cup \{s,t\} \\ \\c(s,s_i)=\infty \\ c(t_i,t) = \infty
\end{gather}$$
### Remoção de Arcos Complementares
A definição da estrutura não aceita a existência de arcos complementares, pode-se aplicar um morfismo em um digrafo com um par de arcos complementares para tornar o digrafo uma rede, para algum $\large (v_1,v_2) \in E(G)$ cujo complementar $\large(v_2,v_1)$ também está em $\large G$, no lugar de $\large(v_1,v_2)$ pode-se adicionar um novo vértice $\large v^*$ tal que
$$\large 
\begin{gather}
(v_1,v^*)\in E(G') ,(v^*,v_2) \in E(G') \\
c'(v_1,v^*) = c'(v^*,v_2) = c(v_1,v_2) \\
c'(v_1,v_2) = 0
\end{gather}$$
## Fluxo

Dada uma [[#rede de fluxo]] $\large G$, um fluxo em $\large G$ é uma [[Função|mapa]] $\large f: V \times V \to \mathbb R$ [^2] que satisfaz as propriedades:
- $\large \forall u,v \in V: 0 \le f(u,v) \le c(u,v)$ (Restrição de capacidade e não-negatividade)
- $\large \forall u \in V / \{s,t\}: \sum_{v \in V} f(v,u) = \sum_{v \in V} f(u,v)$ (Conservação de fluxo)

O valor de uma rede de fluxo, dado por $\large |f|$[^1], é
$$\large |f| := \sum_{v \in V} f(s,v) - \sum_{v \in V} f(v,s)$$
Tipicamente não existem arcos com destino a fonte do fluxo, então a segunda somatória costuma ser $\large 0$. Dada a regra de conservação de fluxo, temos que o valor é consequentemente o fluxo que chega ao sorvedouro.
## Rede Residual

Uma rede residual em um fluxo $\large f$ representa o quanto podemos adicionar ao fluxo em uma determinada rede $\large G$. Uma rede residual $\large G_f$ é um grafo em $\large G$ onde a capacidade entre dois vértices é dada por
$$\large c_f(u,v) = \begin{cases}
c(u,v) - f(u,v) & (u,v) \in E(G)\\
f(v,u) & (v,u) \in E(G) \\
0 & (u,v),(v,u) \not \in E(G)
\end{cases}$$
Se o fluxo ocupa toda a capacidade em um determinado arco, temos que o seu custo residual é zero e o arco de capacidade já maximizada não é um elemento de $\large G_f$. Ainda temos que, podemos representar uma potencial diminuição de fluxo, para representar-mos essa folga usamos o valor do fluxo no arco que é complementar ao nosso. Uma consequência disso é que alguns arcos em $\large G_f$ podem não necessariamente fazer parte de $\large G$. Por fim, a rede residual dada pela aplicação de $\large f$ em uma rede de fluxo $\large G$ se dá por
$$\large
\begin{gather}
G_f := (E_f,V) \\\\
E_f := \{(u,v)\in V(G) \times V(G): c_f(u,v) \ge 0\}
\end{gather}$$
A rede residual em si não é uma rede de fluxo pois pode conter arcos complementares, podemos concluir que um fluxo $\large f$ é máximo quando não há um $\large st$-caminho em sua rede residual.

Embora a rede residual não seja uma rede de fluxo, ela tem propriedades similares a uma, podemos definir fluxos da mesma forma que definimos em redes de fluxo, um fluxo $\large f'$ é qualquer coloração que satisfaz as propriedades de fluxo em $\large G_f$ tendo $\large c_f$ como capacidade.
### Aumento
O aumento é uma variação em um fluxo que gera algum outro fluxo, seguindo as devidas restrições, sejam $\large f$ um fluxo em $\large G$ e $f'$ um fluxo na rede complementar $\large G_f$, o aumento entre os fluxos $\large f$ e $\large f'$ é uma função dada por
$$\large 
\begin{gather}
(f \uparrow f'): V \times V \to \mathbb R_{\ge 0} \\ \\
(f \uparrow f') := \begin{cases}
f(u,v) + f'(u,v) - f'(v,u) & (u,v) \in E(G) \\
0 & (u,v) \not \in E(G)
\end{cases}
\end{gather}$$
Temos que $\large |(f \uparrow f')| = |f| + |f'|$.
### Caminho Aumentador
Um caminho aumentador é um $\large st$-caminho qualquer em $\large G_f$, dizemos que ele é aumentador pois podemos aumentar o fluxo em $\large f$ adicionando a menor capacidade residual do caminho aumentador para o fluxo $\large f$.

O maior aumento possível para um caminho aumentador se dá pela menor capacidade residual no caminho, seja $\large p$ um caminho aumentador qualquer, dizemos que sua capacidade residual é dada por
$$\large c_f(p) = \min(c_f(u,v): (u,v) \in p)$$
Seja $\large f_p$ um fluxo em $\large p \subseteq G$ dado por
$$\large f_p(u,v) := \begin{cases}
c_f(u,v) & (u,v) \in p \\
0 & (u,v) \not \in p
\end{cases}$$
Temos que $\large f \uparrow f_p$ é um fluxo válido em $\large G$ onde $\large |f \uparrow f_p| \gt |f|$. Dizemos que um fluxo $\large f$ é máximo quando não há qualquer caminho aumentador na rede residual $\large G_f$.

## Corte

Similar ao [[corte]] de grafos, mas com requerimentos adicionais. Em uma rede de fluxo $\large G = (V,E)$, um $\large st$-corte $\large (S,T) \subseteq V$ na rede de fluxo é uma partição $\large S \cup T = V$, $\large S \cap T = \not \text O$ tal que $\large s \in S$ e $\large t \in T$.
### Fluxo Líquido
Seja $\large f$ um fluxo em $\large G$, dizemos que o fluxo líquido (_net flow_) do $\large st$-corte é dado por
$$\large f(S,T) := \Large \sum_{u \in S} \sum_{v\in T} f(u,v) - \sum_{u \in S} \sum_{v\in T} f(v,u)$$
Seguindo as regras de preservação de fluxo, temos que, para todo $\large st$-corte o fluxo líquido entre as partições é o mesmo, esse valor sempre será o [[#Fluxo|valor do fluxo]], ou seja, $\large f(S,T) = |f|$.
### Capacidade
A capacidade do corte é dada por
$$\large c(S,T) :=\Large \sum_{u \in S} \sum_{v\in T} c(u,v)$$
Um corte é dito mínimo quando não existem cortes de capacidade menor na rede. O valor de __qualquer__ fluxo em $\large G$ tem uma fronteira máxima que é o valor de qualquer $\large st$-corte em $\large G$, de forma geral, para todo corte $\large (S,T)$ e qualquer fluxo $\large f$ e temos que
$$\large |f| \le c(S,T)$$
Ainda, quando $\large |f| = c(S,T)$ para algum corte, então $\large f$ não tem caminho aumentador, ou seja, é ótimo, logo, o valor do fluxo máximo de uma rede é igual a capacidade do seu corte mínimo.

[^1]: Onde $|f|$ não é o valor absoluto de $f$.

[^2]: Analogamente, uma [[Grafo#Coloração|coloração]] nos arcos da rede

[^3]: Embora a função de capacidade $\large c: V \times V \to \mathbb R_{\ge0}$ seja definida em termos de pares de vértices, ela representa na verdade uma coloração sobre as arestas do digrafo, todavia um detalhe importante é que se $\large (u,v) \not \in E(G)$ então $\large c(u,v) = 0$. A função de custo deve então valorar corretamente arcos que não pertencem à rede.
