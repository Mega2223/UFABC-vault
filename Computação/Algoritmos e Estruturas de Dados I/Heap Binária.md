---
tags:
  - computação
  - algoritmo
  - incompleto
authors: Júlio César
---
## Definição

Uma heap binária é uma [[Árvore|árvore binária]] rotulada nos nós, onde cada rótulo é comparável aos demais e todo nó obedece uma regra de rótulo maior/menor ou igual igual aos seus filhos, uma árvore em que todo pai é maior ou igual aos seus filhos é uma heap binária máxima, uma árvore em que todo pai é menor ou igual aos seus filhos é uma heap binária mínima, o que garante que o máximo da árvore seja o nó raiz e o mínimo esteja no nível mais inferior da árvore.

Uma heap binária pode ser representada por uma [[Lista em Array|lista em array]] onde, para o $\large n$-ésimo elemento do array, seus filhos são $\large n*2 + 1$ e $\large n * 2 + 2$, o que torna o overhead da implementação mínimo, o espaço na [[Complexidade Assintótica|complexidade]] $\large O(n)$, e o acesso tanto aos filhos quanto aos pais de um nó em tempo constante $\large O(1)$.

Uma exibição ordenada dos elementos de uma heap binária consiste de uma implementação de uma [[busca em largura]] a partir da raiz da árvore, mas que sempre prioriza os elementos esquerdos, essencialmente listando cada nível da esquerda para a direita.

## Operações

### Inserção
A inserção em uma heap binária consiste de
- Inserir o novo valor no último nível da árvore, priorizando os valores a esquerda.
- Comparar o valor inserido com o seu pai, se o valor inserido for maior que o do seu pai, trocar os dois na topologia da árvore.
- Repetir o passo anterior até o novo valor for menor que o seu pai (ou ele se tornar a raiz).

Como esse algoritmo visita cada nível da árvore no máximo uma vez, ele é da ordem de tempo $\large O(\log n)$.
### Remoção
A heap binária só tolera remoções na raiz, esse processo consiste de:
- Trocar a raiz e o último nó da árvore.
- Remover a antiga raiz.
- Cascatear a nova raiz para baixo, a trocando com o maior filho, até que ela só tenha filhos menores.

Como a remoção também só visita cada nível da árvore no máximo uma vez, ele é da ordem de tempo $\large O (\log n)$.
### Busca
A busca para a heap binária é muito eficiente para encontrar o maior ou menor valor $\large O(1)$, fazendo com que ela seja a melhor implementação onde o maior / menor valor é buscado com frequência, em comparação, para [[Árvore Binária de Busca|ABBs]], os maiores / menores valores estão localizados nos extremos da árvore, levando $\large O(n)$ tempo.

Todavia, para a busca de algum membro aleatório da árvore, a heap binária tende a demorar mais que implementações de ABB, como não tem como saber se o nó desejado está na subárvore esquerda ou direita de um determinado nó, a subárvore inteira precisa ser acessada, verificar todas as subárvores da raiz é uma operação $\large O(n)$.

## Construção de Heap

Seja $\large A[1..n]$ um array não ordenado, pode-se construir um heap máximo[^1] em tempo $\large O(n)$, considerando o array um heap binário não ordenado, temos que todos os nós a partir do índice $\large \lfloor n/2 \rfloor + 1$ até $\large n$, dado por $\large A[(\lfloor n/2 \rfloor + 1),n]$, são as folhas da árvore. Cada folha é uma subárvore já ordenada, o procedimento consiste em ordenar as subárvores da folha até a raiz,
## Heapsort

[^1]: Ou mínimo, mas ficar colocando "máximo / mínimo" em tudo é muito chato.
