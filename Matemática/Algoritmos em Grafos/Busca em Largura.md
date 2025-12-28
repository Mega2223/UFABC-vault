---
tags:
  - teoria-de-grafos
  - matemática
  - matemática-discreta
  - computação
  - incompleto
  - algoritmo
authors: Júlio César
---
## Definição

A Busca em Largura (_Breadth-First Search_, abreviado para BFS) visa procurar o [[Grafo#caminho|caminho]] ótimo (que minimiza o número de arcos) entre um determinado vértice e todos os outros vértices de um [[digrafo]] (ou um [[grafo]], já que vale o [[Grafo#Morfismos entre Estruturas|morfismo]] de grafo para digrafo simétrico), o algoritmo tem duas finalidades:
- Calcular a distância entre um vértice e os demais (que é o tamanho do caminho mínimo entre o vértice de origem e os demais)
- Encontrar o subgrafo que contém todos os vértices e arestas que formam os caminhos ótimos se originando do nosso vértice inicial, essa estrutura é uma [[árvore]].

A busca em largura presume invariabilidade entre as arestas (grafo não ponderado), caso o grafo seja [[Grafo#Grafo Ponderado|ponderado]], para achar o caminho de menor custo associado (presumindo custos não negativos) a análise deve ser feita com o [[Algoritmo de Dijkstra]].
## Algoritmo

O algoritmo BFS é um método que tem como parâmetros em um digrafo $\large G$ e um vértice de origem $\large s \in V(G)$.

O BFS funciona com base em [[Grafo#Coloração|colorações]] em vértices, onde ele continuamente itera essas colorações para entender quais vértices já foram mapeados os caminhos ótimos, existem 3 rótulos para a coloração, normalmente denominadas de branco ($\text W$), cinza ($\text G$) e preto ($\text B$), são dadas da seguinte forma:
- $W$: Vértices ainda não explorados.
- $G$: Vértices onde conhecemos o caminho mínimo de $\large s$.
- $B$: Vértices onde conhecemos o caminho mínimo de todos os vértices de sua vizinhança.
Os vértices de coloração $G$ são mantidos em uma [[fila]] $\large Q$, a cada iteração retiramos um elemento de $Q$ e mapeamos todos os vértices brancos de sua vizinhança para vértices cinzas. O vértice que removemos da fila se torna um vértice preto e seus vizinhos são colocados na fila. 

```pseudo
\begin{algorithm}
\caption{BFS$(G,s)$}
\begin{algorithmic}
\ForAll{$v \in V(G)$}
\State $v$.color = W
\State $v$.dist = $\infty$
\State $v.\pi$ = nil
\EndFor
\State $s$.color = G
\State $s$.dist = 0
\State $s$.pi = nil
\State Q = $\emptyset$
\State ENQUEUE(Q,s)
\While{$Q \ne \emptyset$}
\State $u$ = DEQUEUE(Q)
\ForAll{$v \in \text{adj}(u)$}
\If{$v$.color == W}
\State $v$.color = G
\State $v$.d = $u$.d + 1
\State $v.\pi$ = $u$
\State ENQUEUE(Q,$v$)
\Endif
\EndFor
\State $u$.color = B
\EndWhile
\end{algorithmic}
\end{algorithm}
```

Além de atribuir um valor distância para todo vértice alcançável, o conjunto de vértices alcançados junto com os arcos que os alcançam otimamente formam uma [[Árvore de Extensão]] (_Spanning Tree_) enraizada em $\large s$.
## Complexidade

A busca em profundidade tem [[Complexidade Assintótica|complexidade de tempo]] $\large O(|V| + |E|)$ para alcançar todos os vértices de um grafo (e saber com certeza quais não são alcançáveis).

## Implementação
//TODO faz isso em Scala deve ser mais compacto

```c
#include<stdio.h>
//TODO usa uma lista em vez de fazer essas coisas 
typedef struct Vertex {
    int id;
    Vertex* connections;
    int nConnections;
} Vertex;

typedef struct Graph {
	Vertex* vertices;
	int n;
} Graph;

void performBFS(){
    
}

void printGraph(Graph g){
	for(int i = 0; i < g.n; i++){
		Vertex v = g.vertices[i];
		printf("V[%d] -> ",v.id);
		for(int j = 0; j < v.nConnections; j++){
			printf("V[%d] ",v.connections[j].id);
		}
		printf("\n");
	}
}

int main(){
    int g;
    printf("Insira o número de vértices:\n");
    scanf("%d",&g);
    printf("\n%d vértices, [G]rafo ou [D]igrafo?\n",g);
	return 0;
}
```