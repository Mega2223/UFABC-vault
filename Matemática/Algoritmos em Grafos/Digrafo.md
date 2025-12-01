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

Onde temos dois mapas $\large s,t: E \to V$ onde $\large s(e)$ é a fonte de $\large e$ e $\large t(e)$ é o alvo de $\large  e$. O digrafo por definição permite um arco começar e acabar no mesmo vértice. Normalmente temos que $e$ é um par ordenado de vértices, $\large e = (a,b)\ \ a,b \in V(G)$, onde $\large s(e) = a, t(e) = b$.

Se $\large (a,b) \in E(G)$ dizemos que $b$ é um sucessor direto de $\large a$ e $\large a$ é um predecessor direto de $\large b$. Se existe algum [[#caminho]] de $\large a$ até $\large b$ dizemos que $\large b$ é um sucessor de $\large a$ e $\large a$ é um predecessor de $b$, em notação:

$$\large \begin{gather}
a \to b := (a,b) \in E(G) \\ \\
\large a{\Large\leadsto} b := \exists P_{(x,y)} \subseteq G
\end{gather}$$

Um arco $\large (b,a)$ é dito o arco invertido de $\large (a,b)$. Se $\large \forall e \in E(g): e^{-1} \in E(g)$, o digrafo é dito simétrico. Para qualquer digrafo simétrico sem laços, existe um [[grafo]] correspondente, por meio de um [[Grafo#Morfismos entre Estruturas|morfismo]] que mapeia cada par de arcos para uma aresta do grafo.
## Passeio

Em um digrafo, o passeio é uma sequência ordenada de vértices onde para cada vértice na sequência é um sucessor direto do arco anterior (salvo o primeiro arco). Alternativamente, o passeio é um [[#subgrafo]] de vértices que seguem esta mesma propriedade e os arcos que ligam estes vértices entre si.
$$\large
\begin{gather}
W = (v_1,\dots,v_n) &&v_i \to v_{i+1} \forall i \in (1,2,\dots,n-1)

\end{gather}$$
## Caminho

Um [[#passeio]] sem repetições de vértice é denominado caminho. O caminho alternativamente é considerado o subgrafo tal que
$$\large P = \{V',E'\} \begin{gather} 
& V' = (v_1, ..., v_n) & v_i \to v_{i+1} \forall i \in (1,2,...,n-1) \\
&  E = ((v_1,v_2),...,(v_{n-1},v_n))
\end{gather}$$
- É denotado $P^n$ um caminho com $n$ vértices.
- $\large v_0$ e $\large v_k$ são ditos extremos do caminho. Os demais são ditos como vértices internos.
- Se não há um caminho entre os vértices $\large v$ e $\large u$ em $\large G$, dizemos que $\large \text{dist}_G(v,u) = \infty$.

Algoritmos de busca e de controle de fluxo em geral visam ser aplicáveis a dígrafos em vez de grafos, uma vez que todo algoritmo aplicável a um digrafo é aplicável a um grafo.
## Caminho Euleriano

O caminho euleriano é o [[#caminho]] que passa por todos os arcos do digrafo. Se o caminho é euleriano e fechado, é denominado de caminho euleriano fechado.[^1] Um digrafo que tenha um caminho euleriano é dito digrafo euleriano.
## Caminho Hamiltoniano

Um caminho hamiltoniano é um [[#caminho]] que passa por todos os vértices do grafo, ou seja, é um subgrafo que tem as propriedades de um caminho e que $\large V' = V$.

Um caminho hamiltoniano que é um [[#ciclo]] é denominado circuito hamiltoniano.

Um digrafo que possui algum caminho hamiltoniano é denominado digrafo hamiltoniano.
## Ciclo

Um ciclo (ou circuito) é um [[#caminho]] onde o ultimo vértice é um predecessor do primeiro. Um digrafo que não possui ciclo entre qualquer par de vértices é dito digrafo acíclico.
## Propriedades

### Densidade
Para um digrafo, o número de arcos é duas vezes o número de [[Grafo#densidade|arestas em um grafo não direcionado]], assim temos que a densidade em um digrafo se dá por
$$\large \frac{|E|}{|V|\cdot (|V|-1)}$$

Um digrafo com uma densidade elevada é dito denso. Um digrafo com densidade igual a 1 é dito completo.
### Conectividade Fraca
Um digrafo é dito fracamente conexo (ou somente conexo) quando o grafo produzido a partir da substituição dos arcos do digrafo por vértices é [[Grafo#Conectividade|conexo]].
### Conectividade Forte
Um digrafo é dito fortemente conexo se para cada par de vértices existe algum [[#caminho|caminho]] entre os vértices.
### Grau de Entrada
O grau de saída de algum $v \in V(G)$ é o número de arcos que começam em $v$
$$\large \deg^+ (v \in V(G)) := |\{e \in E(G) / e_a =v\}|$$
### Grau de Saída
O grau de saída de algum $v \in V(G)$ é o número de arcos que terminam em $v$
$$\large \deg^- (v \in V(G)) := |\{e \in E(G) / e_b = v\}|$$
### Fórmula da Soma dos Graus
A fórmula da soma dos graus dá uma relação entre o [[#grau de saída]] e [[#Grau de Entrada|de entrada]] de todos os vértices de um grafo.
$$\large \sum_{v\in V(G)} \deg ^+(v) = \sum_{v\in V(G)}\deg^-(v)=|E(G)|$$
Se vale a propriedade $\large \forall v \in V(G): \deg ^+(v) = \deg ^-(v)$, o digrafo é dito balanceado.

## Subgrafo

Um digrafo $G'$ é dito subgrafo de $G$ quando todos os vértices e arcos de $G'$ também fazem parte de $G$, $G$ é dito o supergrafo de $G'$.
$$\large G' \subset G \iff E(G') \subseteq E(G) \land V(G') \subseteq V(G)$$
## Estruturas Complementares

### Digrafo Acíclico
É um digrafo que não possui [[#ciclo]] entre quaisquer dois vértices. 
### Árvore Enraizada
É uma [[árvore]] em que todo vértice se existe uma raiz a qual todos os outros vértices são sucessores da raiz. Naturalmente temos que a árvore é um [[#digrafo acíclico]]. Se o grafo é uma árvore mas não é enraizada, então dizemos que ele é um árvore livre.
### Ordenação Topológica
É uma sequência ordenada de vértices de algum digrafo $\large v_1, v_2, ..., v_n$ tal que $\large \forall (i \gt j): v_i \not\rightsquigarrow v_j$. Ou seja, nenhum vértice precede algum outro vértice anterior na sequência. A ordenação topológica só existe quando não há [[#ciclo]] no digrafo, ou seja, é [[#Digrafo Acíclico|acíclico]]. Pode-se existir mais que uma ordenação topológica válida.

[^1]: uau!
