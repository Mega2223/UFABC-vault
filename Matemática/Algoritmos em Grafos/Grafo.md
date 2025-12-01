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

Onde há algum mapa $w: E \to P(V)$[^3] que mapeia cada aresta a um subconjunto de tamanho 2 de elementos de $V$. Uma convenção mais comum é a em que a aresta em si é um conjunto de dois vértices: $\large e \in E = \{v_a,v_b\}, w(e) = \{v_a,v_b\} = e$.
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
Dois grafos, $G$ e $H$ são ditos isomórficos quando há uma [[Função#Injetividade e Sobretividade|bijeção]] entre os vértices de $G$ e $H$ que preserva a conectividade entre os vértices
$$\large
\begin{gather}
f: V(G) \to V(H) \\\\ \{v_1, v_2\} \in E(G) \iff \{f(v_1),f(v_2)\} \in E(H)
\end{gather}
$$

### Conectividade
Um grafo é dito conexo quando para todo par de vértices do grafo existe algum [[#caminho|caminho]] que conecta estes dois vértices.
## Passeio

Um passeio é uma sequência ordenada de vértices conectados entre si
$$\large
\begin{gather}
W = (v_1,v_2,...,v_n) &&
 v_i \text{ e } v_{i+1} \text{ adjacentes } \forall i \in \{1,2,\dots,n-1\} 
\end{gather}$$
- O passeio é dito fechado se $\large v_1 = v_n$
- Dados $(v,u) \in G$, dizemos que $v$ alcança $u$ em $G$ se existe um passeio que começa em $v$ e termina em $u$.

O passeio também pode ser definido como o [[#subgrafo]] formado pelos vértices da sequência e as arestas que os conectam.

O conjunto de todos os grupos de vértices que se alcançam entre si são denominadas componente conexas, um grafo é dito conexo quando todos os seus vértices se alcançam entre si.
## Caminho

Um [[#passeio]] sem repetições de vértice é denominado caminho. O caminho alternativamente é considerado uma classe de grafo própria onde
$$\large P = \{V',E'\} \begin{gather} 
&V' = \{1,2,\dots,n\} \\
&E' = \{\{i,i+1\}: 1 \le i \le k\}
\end{gather}$$
- É denotado $P^n$ um caminho com $n$ vértices.
- $\large v_0$ e $\large v_k$ são ditos extremos do caminho. Os demais são ditos como vértices internos.
- Se não há um caminho entre os vértices $\large v$ e $\large u$ em $\large G$, dizemos que $\large \text{dist}_G(v,u) = \infty$.

Algoritmos de busca visam procurar um determinado caminho dentro do grafo, eles podem ser divididos em algoritmos de busca em largura (quando os vértices mais próximos da origem são visitados primeiro) e busca em profundidade (os vértices são visitados por profundidade, do primeiro ao último de cada potencial caminho).

Muitos problemas visam encontrar um caminho com menor custo total, este problema é denominado problema do caminho mais curto.

## Caminho Euleriano

O caminho euleriano é o [[#caminho]] que passa por toda aresta do grafo[^4], ou seja, é um caminho constituído de vértices conexos de tal forma que $E' = E$.

Um caminho euleriano é denominado fechado de forma análoga ao fechamento de qualquer caminho, quando um caminho começa e termina no mesmo vértice, ele é fechado. Um grafo que tenha um caminho euleriano é dito grafo euleriano.

Um grafo conexo é euleriano se e somente se todos os vértices tem um [[#grau]] par.
## Caminho Hamiltoniano

Um caminho hamiltoniano é um [[#caminho]] que passa por todos os vértices do grafo, ou seja, é um subgrafo que tem as propriedades de um caminho e que $\large V' = V$.

Um caminho hamiltoniano que é um circuito é denominado circuito hamiltoniano.

Um grafo que possui algum caminho hamiltoniano é denominado grafo hamiltoniano.
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

## Subgrafo

Um grafo $G'$ é dito subgrafo de $G$ quando todos os elementos de $G'$ também fazem parte de $G$, $G$ é dito o supergrafo de $G'$.
$$\large G' \subset G \iff E(G') \subseteq E(G) \land V(G') \subseteq V(G)$$
Um subgrafo deve cumprir todas as propriedades de um grafo, um [[#corte]] por exemplo não é subgrafo pois ele conecta vértices fora de si mesmo.
## Estruturas Complementares
### Grafo Ponderado
Um grafo ponderado é um grafo onde há um mapeamento de cada aresta do grafo a um membro de $\large \mathbb R$ (ou seja, uma [[#coloração]] aos reais). É útil para resolver problemas de minimização de custo ou de fluxo. Tipicamente todavia os problemas tendem a endereçar casos de uso para o [[digrafo]] ponderado já que todo algoritmo que vale para um digrafo vale para um grafo por meio da preservação da estrutura do grafo em um [[#Morfismos em Grafos#Grafos e Digrafos|morfismo para um digrafo]].
### Digrafo
O [[digrafo]] é um grafo direcionado, certas arestas podem ir de um determinado vértice para outro sem que esta relação seja recíproca, enquanto o caso não direcional exige que se é possível ir de $a$ para $b$ também deve ser possível ir de $b$ para $a$. Ao contrário do grafo, o digrafo pode ter uma conexão saindo e entrando no mesmo vértice.
### Pseudografo
Um [[pseudografo]] é um grafo que algum determinado vértice pode ligar-se assim mesmo, pseudografos não são considerados grafos pois não seguem a [[Grafo#Definição|definição formal de grafo]].
### Árvore
Uma [[árvore]] é um grafo conexo e acíclico. Todo vértice de 1 grau na árvore é chamado de folha. 
- Pode se afirmar para toda árvore que $|E| = |V| - 1$
### Vizinhança
Para um vértice qualquer, sua vizinhança são os vértices que tem alguma aresta em comum com si.
$$\large N(v \in V) := \{u\in V|\{u,v\}\in E\}$$
### Grau
Grau é o número de arestas que convergem em um determinado vértice, ou seja, o tamanho da [[#vizinhança]] do vértice.
$$\large \deg (v \in V) := |N(v)|$$
O maior grau de qualquer vértice do grafo é dito grau máximo
$$\large \Delta (G) := \max\{\deg(v) |v \in V(G)\}$$
O menor grau de qualquer vértice do grafo é dito o grau mínimo
$$\large \delta (G) := \min\{\deg(v) |v \in V(G)\}$$
### Emparelhamento
$\large M \subseteq E(G)$ é um emparelhamento de $\large G$ quando para qualquer par de arestas $\large e,f \in M: e \cap f = \emptyset$.

## Morfismos entre Estruturas

### Grafos e Digrafos
Não há [[Função#Injetividade e Sobretividade|bijeção]] entre grafos e [[digrafo|digrafos]], pois dois arcos podem coincidir vértices em um digrafo. Pode-se mapear todo grafo para um digrafo, mas o inverso não é necessariamente verdade.
### Digrafos e Pseudografos
Para cada digrafo, há um [[pseudografo]] correspondente, mas o inverso não é verdade pois um o digrafo só permite um máximo de duas relações entre qualquer vértice. Pode-se presumir então que o mesmo é verdade para mapeamentos entre grafos e pseudografos (de forma geral, qualquer grafo já é um pseudografo, o inverso não é necessariamente verdade).
### Coloração
Uma função $\large \alpha: V \to K$ é uma coloração de vértices de $\large G$, normalmente temos que $\large K$ é um conjunto finito de rótulos, mas isso não é necessariamente sempre o caso.

Uma função $\large \alpha: E \to K$ é uma coloração de arestas (ou arcos no caso do [[digrafo]]) de $\large G$, se $\large K \subseteq \mathbb R$, $\large \alpha$ é uma função de pesos / função de custos / função de distância. Um mapeamento de cada aresta para um valor real é o processo de definição de um [[#grafo ponderado]].
### Categorias
// TODO

[^1]: Alguns professores, principalmente no Brasil, usam $G = \{V,A\}$
[^2]: Grafo onde todos os vértices se conectam entre si.
[^3]: Onde $P$ é o mapa de [[Conjunto#conjunto das partes|conjunto das partes]].

[^4]: Em referência ao problema das sete pontes de Konigsberg, embora este problema seja modelado encima de um [[pseudografo]] e não um grafo.
