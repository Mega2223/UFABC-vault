---
tags:
  - computação
  - algoritmo
  - incompleto
authors: Júlio César
---
## Definição

Uma árvore binária de busca é um [[Tipos Abstratos de Dados|TAD]] que representa uma sequência ordenada de elementos, tem a topologia de uma [[Árvore#Árvore Binária|árvore binária]] [[Árvore#Árvore Enraizada|enraizada]], onde o nó raiz é o ponto de entrada para o TAD e cada nó é em si uma subárvore, fazendo com que o TAD seja uma estrutura [[Recursão|recursiva]].

Cada nó da árvore aponta para um tipo de dados ordenável, a estrutura do nó da árvore binária é: um ponteiro para seu nó 'esquerdo', um para o seu nó 'direito' e um para a estrutura de dados que o nó referencia.

## Altura

A altura de uma árvore binária de busca é o seu [[Grafo#Diâmetro|diâmetro]], para uma árvore enraizada, esse é sempre o maior caminho entre a raiz e qualquer outro nó.

A altura máxima de uma árvore binária de $\large n$ elementos é $\large n$, onde a topologia da árvore se assemelha a de uma [[Lista Ligada|lista ligada]], onde cada nó aponta somente para o nó seguinte. Uma árvore cuja altura é máxima é dita degenerada.

Cada nível de uma árvore possui, no máximo, duas vezes o tamanho do nível superior, para uma altura $\large h$, a árvore terá no máximo $\large 1 + 2 + 4 + \dots + h$ elementos.
$$\large n \le \sum ^h_{i=0} 2^i  \to n \le {2^{h+1} -1}$$
Isolando para $\large h$, temos:
$$\large h \ge \log_2(n+1)-1$$
Ou seja, a altura mínima da árvore é [[Complexidade Assintótica|assintoticamente logarítmica]] em função do número de elementos. Uma árvore que minimiza a sua altura em função do seu número de elementos é uma árvore completa, onde $\large h = \lfloor \log_2(n) \rfloor$. 

Cada nó possui uma altura individual, que é a altura da sua própria árvore local, uma árvore que não possui filhos tem altura 0.
$$\large \text h(v) := \max_{v \leadsto w}(\text{dist}(v,w))$$
### Complexidade de Espaço
Cada membro da lista ocupa um único nó, como toda [[árvore]] conexa possui exatamente $\large n-1$ arcos, a [[Complexidade Assintótica|complexidade no espaço]] de uma árvore binária é da ordem de $\large O(n)$.
## Operações

### Busca
Uma busca é o processo de procurar algum determinado elemento partindo da raiz, ou, afirmar com certeza que o elemento não está na árvore. Presumindo a ordenação dos elementos, a busca precisa simplesmente, para cada nível de altura, comparar os filhos do nó atual com o valor desejado e se manter na faixa de tolerância, de forma similar a uma [[Árvore de Decisão|árvore de decisão]].
### Inserção
Existem várias implementações de inserção e remoção para árvores binárias, a inserção trivial vai descendo a árvore até encontrar uma folha em que o nó pode ser inserido como filho. Essa implementação torna a topologia da árvore indeterminada e possivelmente o pior caso, para manter um tempo de pesquisa razoável é necessário usar um algoritmo de [[#Balanceamento|balanceamento]] após a inserção.
### Remoção
A remoção de um nó pode acatar em três casos, dependendo do número de filhos do nó a ser removido. Se o nó a ser removido não tem filhos, ele é uma folha e pode ser removido sem gerar uma desconexão na árvore. 

Caso o nó removido tenha um único filho, deve-se criar um arco do pai do nó ao filho do nó, de forma que o nó seja isolado da topologia para ser removido.

Caso o nó removido tenha dois filhos, deve-se fazer uma busca na árvore afim de encontrar um possível local

![[graph 1.png|center|100]]

## Balanceamento

Como a [[#busca]] só visita cada nível da árvore uma vez, a complexidade em função do tempo do algoritmo é $\large O(h)$, que no pior caso é $\large O(n)$, se a árvore é completa, o custo de busca é $\large O( \log n)$, ou seja, para manter uma otimalidade de tempo de acesso é necessário minimizar a altura da árvore, os algoritmos balanceadores de árvore são ditos algoritmos de balanceamento, são esses:
- [[Árvore AVL|Árvores AVL]]
- [[Árvore de Difusão|Árvores de Difusão]]
- [[Árvore Rubro-Negra|Árvores Rubro-Negras]]

