---
tags:
  - matemática
  - computação
  - incompleto
  - teoria-de-grafos
authors: Júlio César
aliases:
  - Grafos
---
## Definição

O grafo é uma estrutura relacional de dados finitos, consiste de um número de vértices e conexões entre esses vértices, denominados nós ou arestas. O grafo pode servir como uma abstração de um conjunto de conexões. Um determinado grafo é definido por
$$\large \text{G} =\{\text{V},\text{E}\}$$
- $\text{V}$ é o conjunto de vértices
- $\text{E}$ é o conjunto de arestas[^1]
## Propriedades

### Ordem e Tamanho
A ordem de um grafo é o número de vértices do mesmo, o tamanho de um grafo é o número de arestas do mesmo. 
### Diâmetro
Dado todos os caminhos ótimos entre todos os pares de vértices do grafo, o diâmetro do grafo é o menor maior caminhos.
### Distância Média
É uma média aritmética de todos os caminhos ótimos entre todos os pares de vértices do grafo
$$\Large {\overline{l}} = \frac{\Large \sum_{i,j \in V} l(i,j)}{\binom{|V|}{2}}$$
### Distância Média
É o número de arestas que o grafo possui em comparação com um grafo completo[^2] com a mesma quantidade de vértices.

$$\large p = \frac{2 \cdot|E|}{|V|\cdot (|V|-1)}$$
### Planaridade
Um grafo é considerado planar se ele pode ser colocado em um plano de tal forma que nenhuma aresta se intercede com outra aresta.

## Características
### Grafo Ponderado
Um grafo pode ser ponderado ou não-ponderado, no caso ponderado as arestas todas têm um tamanho variável entre elas, o que influencia algoritmos de navegação em grafos. No caso não-ponderado, todas as arestas têm o mesmo peso.
### Grafo Direcional
O grafo também pode ser direcional ou não direcional, no caso direcional, certas arestas podem ir de um determinado vértice para outro sem que esta relação seja recíproca, enquanto o caso não direcional exige que se é possível ir de $a$ para $b$ também deve ser possível ir de $b$ para $a$.
### Árvore
Uma árvore é um grafo conexo e acíclico. Todo vértice de 1 grau na árvore é chamado de folha. 
- Pode se afirmar para toda árvore que $|E| = |V| - 1$
## Representações

### Lista de Adjacência
O grafo é armazenado como uma lista de vértices em forma de objetos, e cada vértice têm em si a lista de vértices adjacentes (e pesos no caso [[#Grafo Direcional|direcional]]). É uma implementação comum pois caso os vértices sejam representados em [[structs]] ou [[Programação Orientada a Objetos#Classe|classes]], esta permite que dados adicionais sejam armazenados em cada vértice.

Sobre a [[Complexidade Assintótica#Big-$O$|complexidade]] da implementação, sabe-se que:

- A lista de adjacência possui complexidade de memória $O(|V| + |E|)$.
- Possui complexidade para adição de vértices ou adição de arestas de $O(1)$.
- Para remover uma aresta é necessária a consulta em toda a lista no pior caso, $O(|E|)$.
- Para remover um vértice também é necessário consultar toda a lista, $O(|V|)$.
- Para consultar a adjacência entre vértices conhecidos, a implementação é $O(|V|)$.
### Matriz de Adjacência
O grafo é representado por uma [[matriz]] $\large M\in \mathbb{R}^{|V|\times |V|}$ onde cada linha é um vértice de origem e cada coluna um vértice de destino, e cada variável dentro da matriz representa um nó, e, no caso [[#Grafo Ponderado|ponderado]], seu determinado peso. Quando o grafo não é [[#Grafo Direcional|direcional]], a matriz de adjacência será simétrica em torno da diagonal principal.

Sobre a [[Complexidade Assintótica#Big-$O$|complexidade]] da implementação, sabe-se que:

- A matriz de adjacência possui complexidade de memória $O(|V|^2)$. Não é ideal para grafos muito grandes.
- Possui complexidade de adição e remoção de vértice $O(|V|^2)$, pois para fazer uma remoção é necessária a criação de uma outra matriz.
- Em contrapartida possui complexidade de consulta de adjacência entre vértices $O(1)$.
- Possui complexidade de adição e remoção de aresta de $O(1)$.

[^1]: Alguns professores, principalmente no Brasil, usam $G = \{V,A\}$

[^2]: Grafo onde todos os vértices se conectam entre si.
