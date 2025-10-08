---
tags:
  - matemática
  - computação
  - teoria-de-grafos
authors: Júlio César
aliases:
  - Grafos
---
## Definição

O grafo é uma estrutura relacional de dados finitos, consiste de um número de vértices e conexões entre esses vértices, denominados nós ou arestas. O grafo pode servir como uma abstração de um conjunto de conexões. Um determinado grafo é definido por
$$\Large \text{G} =\{\text{V},\text{E}\}$$
- $\text{V}$ é o conjunto de vértices
- $\text{E}$ é o conjunto de arestas[^1]

Onde há algum mapa $w: E \to P(V)$[^3] que mapeia cada aresta a um subconjunto de tamanho 2 de elementos de $V$.
## Propriedades

### Ordem e Tamanho
A ordem de um grafo é o número de vértices do mesmo, o tamanho de um grafo é o número de arestas do mesmo. 
### Diâmetro
Dado todos os caminhos ótimos entre todos os pares de vértices do grafo, o diâmetro do grafo é o maior de todos os [[#Caminho|caminhos]] ótimos.
$$\large \text{diam}(G) = \max_{(u,v)\in V(G)} \text{dist}(u,v)$$
### Distância Média
É uma média aritmética de todos os caminhos ótimos entre todos os pares de vértices do grafo
$$\Large {\overline{l}} = \frac{\Large \sum_{i,j \in V} l(i,j)}{\binom{|V|}{2}}$$
### Densidade
É o número de arestas que o grafo possui em comparação com um grafo completo[^2] com a mesma quantidade de vértices.

$$\large p = \frac{2 \cdot|E|}{|V|\cdot (|V|-1)}$$
### Planaridade
Um grafo é considerado planar se ele pode ser colocado em um plano de tal forma que nenhuma aresta se intercede com outra aresta.

### Isomorfismo
Dois grafos, $G$ e $H$ são ditos isomórficos quando há uma [[Função#Injetividade e Sobretividade|bijeção]] entre os vértices de $G$ e $H$ e suas arestas relacionadas:
$$\large
\begin{gather}
f: V(G) \to V(H) \\\\ G \cong H := \forall(v_1,v_2) \in V(G): (v_1\to v_2) \implies (f(v_1) \to f(v_2))
\end{gather}
$$

### Conectividade
// TODO
## Passeio

Um passeio é uma sequência ordenada de vértices conectados entre si
$$\large
\begin{gather}
W = v_1,v_2,...,v_n &&
 v_i \text{ e } v_{i+1} \text{ adjacentes } \forall i \in \{1,2,\dots,n-1\} 
\end{gather}$$
- O passeio é dito fechado se $\large v_1 = v_n$
- Dados $(v,u) \in G$, dizemos que $v$ alcança $u$ em $G$ se existe um passeio que começa em $v$ e termina em $u$.

O conjunto de todos os grupos de vértices que se alcançam entre si são denominadas componente conexas, um grafo é dito conexo quando todos os seus vértices se alcançam entre si.
## Caminho

Um [[#passeio]] sem repetições de vértice é denominado caminho. O caminho também é considerado uma classe de grafo própria onde
$$\large  \begin{gather} V = \{1,2,\dots,n\}\\ \\ E = \{\{i,i+1\}: 1 \le i \le k\}\end{gather}$$
- É denotado $P^n$ um caminho com $n$ vértices.
- $v_0$ e $v_k$ são ditos extremos do caminho. Os demais são ditos como vértices internos.
- Se não há um caminho entre os vértices $v$ e $u$ em $G$, dizemos que $\text{dist}_G(v,u) = \infty$.

Algoritmos de busca visam procurar um determinado caminho dentro do grafo, eles podem ser divididos em algoritmos de busca em largura (quando os vértices mais próximos da origem são visitados primeiro) e busca em profundidade (os vértices são visitados por profundidade, do primeiro ao último de cada potencial caminho).

Muitos problemas visam encontrar um caminho com menor custo total, este problema é denominado problema do caminho mais curto.
## Representações Computacionais

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

## Estruturas Complementares
### Grafo Ponderado
Um grafo pode ser ponderado ou não-ponderado, no caso ponderado as arestas todas têm um tamanho variável entre elas, o que influencia algoritmos de navegação em grafos. No caso não-ponderado, todas as arestas têm o mesmo peso.
### Digrafo
O [[digrafo]] é um grafo direcionado, certas arestas podem ir de um determinado vértice para outro sem que esta relação seja recíproca, enquanto o caso não direcional exige que se é possível ir de $a$ para $b$ também deve ser possível ir de $b$ para $a$. Ao contrário do grafo, o digrafo pode ter uma conexão saindo e entrando no mesmo vértice.
### Pseudografo
Um [[pseudografo]] é um grafo que algum determinado vértice pode ligar-se assim mesmo, pseudografos não são considerados grafos pois não seguem a [[Grafo#Definição|definição formal de grafo]].
### Árvore
Uma [[árvore]] é um grafo conexo e acíclico. Todo vértice de 1 grau na árvore é chamado de folha. 
- Pode se afirmar para toda árvore que $|E| = |V| - 1$
### Grau
No grafo, grau é o número de arestas que convergem em um determinado vértice.
$$\large \deg (v \in V) = |\{d \in E / v \in d\}|$$
## Morfismos em Grafos

### Grafos e Digrafos
Não há [[Função#Injetividade e Sobretividade|bijeção]] entre grafos e [[digrafo|digrafos]], pois dois arcos podem coincidir vértices em um digrafo. Pode-se mapear todo grafo para um digrafo, mas o inverso não é necessariamente verdade.

### Digrafos e Pseudografos
Para cada digrafo, há um [[pseudografo]] correspondente, mas o inverso não é verdade pois um o digrafo só permite um máximo de duas relações entre qualquer vértice. Pode-se presumir então que o mesmo é verdade para mapeamentos entre grafos e pseudografos.

[^1]: Alguns professores, principalmente no Brasil, usam $G = \{V,A\}$
[^2]: Grafo onde todos os vértices se conectam entre si.

[^3]: Onde $P$ é o mapa de [[Conjunto#conjunto das partes|conjunto das partes]].
