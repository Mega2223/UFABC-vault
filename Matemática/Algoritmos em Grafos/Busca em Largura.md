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

É um #algoritmo que visa procurar o [[Grafo#caminho|caminho]] ótimo entre um determinado vértice e todos os outros vértices de um [[grafo]] ou [[digrafo]], pode calcular a distância total entre quaisquer dois vértices, o conjunto de todas as arestas de caminhos ótimos a um determinado vértice (e consequentemente explorados pela busca) é uma [[árvore]] de escoamento.

A busca em largura presume invariabilidade entre as arestas (grafo não ponderado), caso o grafo seja ponderado, a mesma análise deve ser feita com o [[Algoritmo de Dijkstra]].

## Algoritmo

```c
#include<stdio.h>

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