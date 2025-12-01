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

É um #algoritmo que visa procurar o [[Grafo#caminho|caminho]] ótimo (que minimiza o número de arcos) entre um determinado vértice e todos os outros vértices de um [[digrafo]] (ou um [[grafo]], já que vale o [[Grafo#Morfismos entre Estruturas|morfismo]] de grafo para digrafo simétrico), pode calcular a distância total entre quaisquer dois vértices, o conjunto de todas as arestas de caminhos ótimos a um determinado vértice (e consequentemente explorados pela busca) é uma [[árvore]] de escoamento onde cada caminho entre o vértice de origem e qualquer outro é o caminho com menos arcos.

A busca em largura presume invariabilidade entre as arestas (grafo não ponderado), caso o grafo seja [[Grafo#Grafo Ponderado|ponderado]], para achar o caminho de menor custo associado, a análise deve ser feita com o [[Algoritmo de Dijkstra]].

## Complexidade

A busca em profundidade tem [[Complexidade Assintótica|complexidade de tempo]] $\large O(|V| + |E|)$ para alcançar todos os vértices conexos de um grafo.
## Algoritmo

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