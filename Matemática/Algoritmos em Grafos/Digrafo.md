---
tags:
  - matemática
  - matemática-discreta
  - algoritmo
  - incompleto
authors: Júlio César
aliases:
---
## Definição

O digrafo / grafo direcionado é uma estrutura relacional de dados finitos, em contramão ao [[grafo]], o digrafo permite relações assimétricas entre vértices, essas relações são denominadas de arcos.
$$\Large \text{G} =\{\text{V},\text{E}\}$$

- $\text{V}$ é o conjunto de vértices
- $\text{E}$ é o conjunto de arcos

Onde temos dois mapas $\large s,t: E \to V$ onde $s(e)$ é a fonte de $e$ e $t(e)$ é o alvo de $e$. O digrafo por definição permite um arco começar e acabar no mesmo vértice. Normalmente temos que $e$ é um par ordenado de vértices, $e = (a,b)\ \ a,b \in V(G)$.

Se $(a,b) \in E(G)$ dizemos que $b$ é um sucessor direto de $a$ e $a$ é um predecessor direto de $b$. Se existe algum [[#caminho]] de $a$ até $b$ dizemos que $b$ é um sucessor de $a$ e $a$ é um predecessor de $b$.

Um arco $(b,a)$ é dito o arco invertido de $(a,b)$. Se $\forall e \in E(g), e^{-1} \in E(g)$, o digrafo é dito simétrico. Para qualquer digrafo simétrico sem laços, existe um [[grafo]] correspondente, por meio de algum [[Grafo#Morfismos em Grafos|morfismo]] que mapeia cada par de arcos para uma aresta do grafo.
## Passeio

Em um digrafo, o passeio é uma sequência ordenada de vértices onde para cada vértice na sequência é um sucessor direto do arco anterior (salvo o primeiro arco).
## Caminho

O caminho é um [[#passeio]] onde não há repetição de vértices.
## Ciclo

Um ciclo é um [[#caminho]] onde o ultimo vértice é um predecessor do primeiro. Um digrafo que não possui ciclo entre qualquer par de vértices é dito digrafo acíclico.
## Propriedades

### Densidade
Para um grafo direcionado //todo
### Conectividade Fraca
Um digrafo é dito fracamente conexo quando o grafo produzido a partir da substituição dos arcos do digrafo por vértices é [[Grafo#Conectividade|conexo]].
### Conectividade Forte
Um digrafo é dito fortemente conexo se para cada par de vértices existe algum [[#caminho|caminho]] entre os vértices.
### Grau de Entrada
O grau de saída de algum $v \in V(G)$ é o número de arcos que começam em $v$
$$\large \deg^+ (v \in V(G)) := |\{e \in E(G) / e_a =v\}|$$
### Grau de Saída
O grau de saída de algum $v \in V(G)$ é o número de arcos que terminam em $v$
$$\large \deg^- (v \in V(G)) := |\{e \in E(G) / e_b\}|$$
### Fórmula da Soma dos Graus
A fórmula da soma dos graus dá uma relação entre o [[#grau de saída]] e [[#Grau de Entrada|de entrada]] de todos os vértices de um grafo.
$$\Large \sum_{v\in V(G)} \deg ^+(v) = \sum_{v\in V(G)}\deg^-(v)=|E(G)|$$
Se vale a propriedade $\forall v \in V(G), \deg ^+(v) = \deg ^-(v)$, o digrafo é dito balanceado.

## Estruturas Complementares

### Digrafo Acíclico
É um digrafo que não possui [[#ciclo]] entre quaisquer dois vértices. 

### Árvore Enraizada
É uma [[árvore]] em que todo vértice se existe uma raiz a qual todos os outros vértices são sucessores da raiz. Naturalmente temos que a raiz é um [[#digrafo acíclico]]. Se o grafo é uma árvore mas não é enraizada, então dizemos que ele é um árvore livre.