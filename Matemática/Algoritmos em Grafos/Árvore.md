---
tags:
  - teoria-de-grafos
  - algoritmo
  - incompleto
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

Uma árvore binária é uma [[#Árvore Enraizada|árvore enraizada]] [[Digrafo|direcionada]] onde cada nó é hierarquicamente superior a, no máximo, dois outros nós, o conjunto de um nó e todos os nós alcançáveis a partir de algum nó é uma subárvore que também é uma árvore binária. A raiz de uma árvore binária sempre é o único nó que não possui nó pai.

A árvore binária é comumente usada como uma estrutura relacional ordenada de dados. Os elementos relacionais de uma árvore normalmente são interpretados em:
- Pré Ordem: Raiz > Subárvore Esquerda > Subárvore Direita ([[Heap Binária|Heap Binária]])
- Pós Ordem: Subárvore Esquerda > Subárvore Direita > Raiz 
- In Ordem: Subárvore Esquerda > Raiz > Subárvore direita ([[Árvore Binária de Busca|ABB]])

## Árvore de Decisão

A árvore de decisão é um objeto que possui a estrutura de uma [[#Árvore Enraizada|árvore enraizada]] que representa um modelo de decisões condicionais com base em algum número de consequências dessas decisões.

De forma geral, para um determinado vértice, cada arco do seu respectivo [[Digrafo#Corte de Saída|corte de saída]] é colorado de acordo com alguma condicional externa de forma que somente uma das condicionais desse vértice possam ser cumpridas. Essa é a 'decisão' representada.

Árvores de decisão podem ser criada como modelos de aprendizado estatístico (normalmente modelos de [[Classificação|classificação]]) por meio de métodos de [[boosting]].

## Árvore Enraizada
A [[Digrafo#Árvore Enraizada|árvore enraizada]] é um digrafo acíclico fracamente conexo qual existe alguma raiz a qual pode existe um caminho da raiz até todos os demais vértices no digrafo. De forma geral, a árvore enraízada é uma árvore onde cada nó possui no máximo um nó que aponta para si, definido como pai, e algum número de nós para qual ele aponta, esses nós são definidos como filhos.

Em implementações da árvore enraízada é comum um filho conhecer o seu nó pai por questões de desempenho, a caracterísitca determinante da árvore enraízada é a hierarquia entre o pai e seus filhos. A subárvore formada por todos os nós alcançáveis a partir de determinado nó é dita a subárvore do vértice, essas subárvores são particularmente úteis para algoritmos de busca recursivos ou algoritmos de decisão.

Ainda, o conjunto dos nós em uma determinada distância do nó raíz e chamada de nível na árvore, onde o nó raíz e dito o primeiro nível e os nós mais distantes da raíz formam o último nível. A altura de um nó é sua distância até o último nível, sendo a altura da árvore a altura do nó raíz.

// TODO ergue um latex aí
## Floresta
// TODO

[^1]: Ou um [[digrafo]].
