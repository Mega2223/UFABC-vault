---
tags:
  - computação
  - algoritmo
---
## Definição

A fila é uma sequência mutável cuja ordenação é de acordo com o ingresso de elementos, em geral a fila funciona com base na promessa _first in, first out_, isso é, elementos mais antigos na lista sempre terão prioridade para sair.

A fila é relativamente útil para algoritmos de distribuições de recursos por ela ser justa, isso é, o único viés que a fila vai ter é o tempo de solicitação de um determinado recurso, garantindo que eventualmente todos tenham acesso a tal recurso.
## Operações

### Push
A operação insere um elemento no final da fila, esse elemento só será removido depois que todos os que vieram antes dele sejam removidos da fila..
### Pop
A operação remove e retorna o primeiro elemento da fila, ou seja, o mais antigos a ter sido inserido. É importante notar que essa operação pode falhar caso a fila esteja vazia.
### Peek
Uma operação que retorna o primeiro elemento da fila, mas não o remove, sendo mais voltada para a consulta do próximo valor na fila.
## Implementação

### Lista Duplamente Ligada
Uma [[Lista Ligada#Lista Duplamente Ligada|lista duplamente ligada]] pode implementar uma fila de forma razoável, uma vez que remoções no começo e no final da lista sempre são constantes se a lista armazena o primeiro e o último valor.
### Array Circular
Uma implementação ingênua de filas em um [[Lista em Array|arraylist]] não tem bom desempenho, pois para remover o primeiro elemento do arraylist sempre haverá complexidade $\large O(n)$.  

O array circular é uma adaptação do arraylist que viabiliza adição e remoção constante do início e no final da lista, quando o início da fila é removido, o ponteiro de início sobe uma posição em vez de mover os elementos, quando um elemento é inserido no final, o ponteiro do final move uma posição pra frente.

Importante notar que, em caso de overflow dos ponteiros para além do final da lista, este é corrigido por meio da operação de módulo, o novo ponteiro será o módulo da capacidade da lista no espaço de endereços.

Todavia, quando o array possui toda sua memória ocupada, para fazer inserção, ainda é necessário [[Lista em Array#Realocação Dinâmica|realocar]] todos os elementos.

//TODO faz um latex legal