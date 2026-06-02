---
tags:
  - computação
  - algoritmo
  - incompleto
authors: Júlio César
---
## Definição

Uma heap binária é uma [[Árvore|árvore binária]] rotulada onde cada rótulo é comparável aos demais e todo nó possui um rótulo maior ou igual aos seus filhos, o que garante que o máximo da árvore seja o nó raiz e o mínimo esteja no nível mais inferior da árvore.

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
- Trocar a raiz e o último nó da árvore
- Remover a antiga raiz
- Cascatear a nova raiz para baixo, a trocando com o maior filho, até que ela só tenha filhos menores.

Como a remoção também só visita cada nível da árvore no máximo uma vez, ele é da ordem de tempo $\large O (\log n)$.

