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

Em um [[digrafo]] [[Digrafo#Digrafo Ponderado|ponderado]], o fluxo é uma forma de mapear a capacidade de canais, de forma similar ao custo, é uma coloração de cada arco a um número real, todavia problemas em relação ao custo normalmente visam encontrar algum caminho de custo mínimo, enquanto problemas de controle de fluxo visam encontrar algum fluxo máximo entre dois vértices.

## Rede de Fluxo

Uma rede de fluxo é um digrafo $\large G$ onde para cada arco $\large(u,v) \in E(G)$ há uma coloração não negativa $\large c: E \to \mathbb R_{x \ge 0} \cup \{\infty\}$ (denominada capacidade). Ainda, para qualquer arco, seu arco complementar $\large(v,u)$ não está no grafo. Se $\large (v,u) \not \in E(G)$ então $\large c(v,u) = 0$.

Em nossa rede de fluxo, distinguimos dois vértices, $\large s \in V$ é a fonte e $\large t \in V$ é o destino, dizemos que a rede é conexa se $\large \forall v \in V: s \leadsto v \leadsto t$.
### Superfontes
Para mapear redes de múltiplas fontes podemos criar uma rede de uma única fonte por meio de uma 'superfonte' que conecta a todas as nossas fontes em um único arco de capacidade infinita. O processo pode ser repetido analogamente para destinos.
### Remoção de Arcos Complementares
//TODO
## Fluxo

Dada uma [[#rede de fluxo]] $\large G$, um fluxo é uma função $\large f: V \times V \to \mathbb R$ que satisfaz as propriedades:
- $\large \forall u,v \in V: 0 \le f(u,v) \le c(u,v)$ (Restrição de capacidade)
- $\large \forall u \in V / \{s,t\}: \sum_{v \in V} f(v,u) = \sum_{v \in V} f(u,v)$ (Conservação de fluxo)

O valor de uma rede de fluxo, dado por $\large |f|$[^1], é
$$\large |f| := \sum_{v \in V} f(s,v) - \sum_{v \in V} f(v,s)$$
Tipicamente, não existem arcos com destino a fonte do fluxo, então a segunda somatória costuma ser $\large 0$.



[^1]: Onde $|f|$ não é o valor absoluto de $f$.
