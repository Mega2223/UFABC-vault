---
tags:
  - computação
  - algoritmo
  - incompleto
authors: Júlio César
---
## Definição

Uma árvore binária de busca é um [[Tipos Abstratos de Dados|TAD]] que representa uma [[lista]] de elementos e uma ordenação, é orientado como uma [[Árvore#Árvore Binária|árvore binária]], onde o nó raiz é o ponto de entrada para o TAD e cada nó é em si uma subárvore, fazendo com que o TAD seja uma estrutura [[Recursão|recursiva]].

Para fins práticos, cada nó da arvore tipicamente aponta para um tipo de dados ordenável, assim, a estrutura do nó da árvore binária é: um ponteiro para seu nó 'esquerdo', um para o seu nó 'direito' e um para a estrutura de dados que o nó referencia.

## Altura

A altura de uma árvore binária de busca é o seu [[Grafo#Diâmetro|diâmetro]], para uma árvore enraizada, esse é sempre o maior caminho entre a raiz e qualquer outro nó.

A altura máxima de uma árvore binária de $\large n$ elementos é $\large n$, onde a topologia da árvore se assemelha a de uma [[Lista#Lista Ligada|lista ligada]], onde cada nó aponta somente para o nó seguinte. Uma árvore cuja altura é máxima é dita degenerada.

Cada nível de uma árvore possui, no máximo, duas vezes o tamanho do nível superior, para uma altura $\large h$, a árvore terá no máximo $\large 1 + 2 + 4 + \dots + h$ elementos.

$$\Large n \le \sum ^h_{i=0} 2^i  = {2^{h+1} -1}$$
Isolando para $\large n$, temos:

$$\large h \ge \log_2(n+1)-1$$

Ou seja, a altura da árvore é [[Complexidade Assintótica|assintoticamente logarítmica]] em função do número de elementos. Uma árvore que minimiza a sua altura em função do seu número de elementos é uma árvore completa, onde $\large h = \lfloor \log_2(n) \rfloor$. 

Cada nó possui uma altura individual, que é a altura da sua própria árvore local, uma árvore que não possui filhos tem altura 0.
$$\large \text h(v) := \max_{v \leadsto w}(\text{dist}(v,w))$$
## Balanceamento e Rotações

A árvore binária representa uma [[lista]] de elementos, embora sua estrutura não seja linear, ela é ordenável e indexável, para implementações típicas de lista, queremos suporte a operações de remoção e adição em um tempo razoável. 

Embora uma implementação ingênua dos métodos de inserção e remoção seja trivial, tipicamente queremos que a árvore mantenha tempos de acesso assintoticamente razoáveis durante todo o seu uso, ou seja, a árvore deve sempre ser uma [[#Altura|árvore completa]], caso a inserção perturbe o equilíbrio do objeto, é necessário fazer alterações que simultaneamente mantenham a otimalidade da altura e a ordenação da lista. Uma árvore que mantém esse balanceamento é dita uma árvore binária de busca balanceada.
### Balanceamento
O balanceamento define a tendência da árvore de ter elementos de forma desproporcional para algum lado, cada nó possui seu próprio coeficiente de balanceamento, se todos os nós possuem um balanceamento no intervalo $\large [-1,1]$, então a árvore está balanceada, caso contrário, ela precisa ser balanceada.

$$\large \text{bf}(v) := \begin{cases}

\end{cases}$$
## Ordenação