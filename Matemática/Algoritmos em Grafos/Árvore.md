---
tags:
  - teoria-de-grafos
  - algoritmo
authors: Júlio César
aliases:
  - floresta
---
## Definição

A árvore é um [[grafo]][^1] conexo acíclico, ou seja, não existem passeios que possam passar pelo mesmo vértice sem em algum momento voltar pelo ultimo vértice navegado. Cada vértice de [[Grafo#Grau|grau]] 1 em uma árvore é denominado uma folha. 

Como árvores são objetos acíclicos, toda árvore direcionada tem pelo menos uma [[Digrafo#Ordenação Topológica|ordenação topológica]] válida.
## Propriedades

### Caminhos
O caminho entre dois vértices de uma árvore não-orientada é sempre único, ou seja, é o caminho mínimo e o máximo.
### Arestas
Uma árvore não orientada sempre terá $\large |V| - 1$ arestas, que é o mínimo possível de arestas necessárias para manter um grafo conexo.
## Árvore Binária

## Árvore de Decisão

A árvore de decisão é uma [[#Árvore Enraizada]] que representa um modelo de decisões condicionais com base em algum número de consequências dessas decisões.

De forma geral, para um determinado vértice, cada arco do seu respectivo [[Digrafo#Corte de Saída|corte de saída]] é colorado de acordo com alguma condicional externa de forma que somente uma das condicionais desse vértice possam ser cumpridas. Essa é a 'decisão' representada.

Árvores de decisão podem ser criada como modelos de aprendizado estatístico (normalmente modelos de [[Classificação|classificação]]) por meio de métodos de [[boosting]].
## Estruturas Complementares

### Árvore Enraizada
A [[Digrafo#Árvore Enraizada|árvore enraizada]] é um digrafo acíclico fracamente conexo qual existe alguma raiz a qual existe um único caminho da raiz até qualquer outro vértice no digrafo.

## Floresta

[^1]: Ou um [[digrafo]].
