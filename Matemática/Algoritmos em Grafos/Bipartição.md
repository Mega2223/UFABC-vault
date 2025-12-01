---
aliases:
tags:
  - incompleto
  - teoria-de-grafos
authors: Júlio César
---
## Definição

Um [[grafo]] $\large G$ é denominado biparticionável quando existem dois subconjuntos $\large A,B \subseteq V(G)$ onde para cada aresta $\large E(G)$, só há um componente de $\large A$ e um de $\large B$, $\large \forall e \in E(G), |e \cap A| = 1, |e \cap B| = 1$.

Para um [[digrafo]], a biparticionalidade requer que cada arco tenha seus extremos em subconjuntos diferentes.
## Paridade

Pode-se descobrir se um grafo é biparticionável com uma derivação da [[busca em largura]]  