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

Uma rede de fluxo é um digrafo $\large G$ onde há uma coloração não negativa $\large E \to \mathbb R_{x \ge 0}$ para cada arco $\large(u,v) \in E(G)$. Ainda, para qualquer arco, seu arco complementar $\large(v,u)$ não está no grafo.

Em nossa rede de fluxo, distinguimos dois vértices, $\large s \in V$ é a fonte e $\large t \in V$ é o destino, dizemos que a rede é conexa se $\large \forall v \in V: s \leadsto v \leadsto t$.