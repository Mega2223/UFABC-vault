---
tags:
  - computação
  - matemática
  - estatística
  - incompleto
authors: Júlio César
---
## Definição

É uma técnica de [[Aprendizado Supervisionado|aprendizado supervisionado]] que visa dividir o espaço dos preditores em um conjunto finito de $J$ áreas sem intersecção, e organizar essas em uma [[Grafo#Árvore|árvore]] de $J$ folhas onde cada folha é uma categoria ([[classificação]]) ou uma região do conjunto de treinamento ([[regressão]]).

A árvore de decisão é construída por meio da divisão do conjunto em subconjuntos de forma binária por meio de regras de decisão. Essa é bem significativa em algoritmos de classificação, uma vez que pode transformar um determinado algoritmo de classificação binária em um algoritmo de classificação com qualquer número de classes.

## CART

Para particionar uma região em CART, queremos minimizar o erro empírico (ou seja, o [[Função de Perda#RSS|RSS]]) do nosso classificador. É computacionalmente inviável encontrar avaliar todas as possíveis árvores de decisão uma solução ótima para o problema, então tentamos encontrar uma [[Algoritmos Gulosos|aproximação gulosa]]
### Regressão


### Classificação