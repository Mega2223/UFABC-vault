---
tags:
  - algoritmo
  - incompleto
authors: Júlio César
---
## Definição

A árvore Rubro-Negra (RN) é uma [[Árvore Binária de Busca|ABB]] balanceada onde existe um [[Grafo#Coloração|mapa]] para cada vértice que o colora com uma 'cor', sendo essa vermelha ou negra, onde:
- Cada nó nulo / externo ( $\large\text{NIL}$ ) é dado como uma folha na árvore, essa folha sempre é negra.
- A raíz é negra.
- Cada nó vermelho só possui filhos brancos.
- Todo caminho entre um determinado nó para algum nó externo da subárvore possui o mesmo número de nós pretos.

Em uma árvore RN, qualquer caminho da raíz até um nó externo é no máximo duas vezes maior que qualquer outro caminho entre outro nó e um nó externo, ou ainda, pra uma árvore RN de $\large n$ nós, possui uma altura de no máximo $\large 2 \log (n+1)$

// TODO ja sabe né senhor diagramas