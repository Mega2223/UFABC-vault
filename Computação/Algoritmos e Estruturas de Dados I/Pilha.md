---
tags:
  - algoritmo
  - computação
authors: Júlio César
---
## Definição

A pilha, ou _stack_, é uma estrutura de dados que segue a filosofia de _last in, first out_, ou seja, o último a entrar na pilha é o primeiro a sair, ao contrário do formato de [[Lista]], cuja a ordem de saída é a mesma que a de chegada. É bastante usada em sistemas de busca, de hierarquia e de gerenciamento de cadeia de funções em línguas de programação.
## Operações

### Push
A operação insere um elemento no final da pilha, fazendo com que ele seja o primeiro a ser removido caso haja uma chamada `pop`.
### Pop
A operação remove e retorna o último elemento da pilha, ou seja, o último a ter sido inserido. Em implementações é importante implementar um _failsafe_ para o _edge case_ onde a fila está vazia, tipicamente nesse caso a função retorna `null` ou algum equivalente e a pilha não muda de estado.
### Peek
Uma operação que retorna o último elemento da pilha mas não o remove, sendo mais voltada para a consulta do atual valor mais recente da pilha.
## Implementação

Tipicamente, para a pilha, queremos otimizar o TAD para adições e remoções no final da pilha, o acesso direto ao começo da pilha é desprezível[^1] na maioria dos contextos. Uma forma muito comum de implementar pilhas é usando uma [[Lista Ligada|lista duplamente encadeada]], se sempre mantemos o último valor inserido na memória a remoção e a adição ambas podem ser feitas em tempo constante.

Uma [[Lista em Array|arraylist]] também pode ser uma opção viável desde que a implementação mantenha na memória o tamanho da lista, o desempenho em relação a lista encadeada vai depender do contexto.

Vale lembrar que embora ambas consigam implementar essas operações em $\large O(1)$, listas encadeadas tendem a ter acesso mais lento, pois precisam dereferenciar cada acesso, e o espalhamento de seus componentes pela memória pode fazer com que o dereferenciamento erre caches do sistema operacional com maior frequência.

Por outro lado, a arraylist, embora tenha um tempo de acesso real mais rápido, sempre tem um limite de memória predeterminado, se o limite é furado, é necessário copiar toda a lista para um novo endereço, que é uma operação $\large O(n)$ em todos os casos.

[^1]: A não ser que a pilha tenha tamanho 1, pq aí o começo é o fim etc. etc.
