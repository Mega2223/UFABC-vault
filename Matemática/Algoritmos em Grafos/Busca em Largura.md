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
} Vertex;

typedef struct Edge {
    Vertex a;
    Vertex b;
} Edge;

void performBFS(){
    
}

int main(){
    Vertex v1 = {0};
    Vertex v2 = {1};
    Vertex v3 = {2};
    
    Edge e = {v1,v2};
    
	return 0;
}
```