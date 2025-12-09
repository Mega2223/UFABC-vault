---
authors: Júlio César
tags:
  - computação
  - algoritmo
  - incompleto
---
## Definição

É uma implementação da [[lista]], o array dinâmico é um objeto que reserva um espaço contínuo na memória para o armazenamento dos componentes,  tipicamente via um array. O array dinâmico também é responsável por regular este espaço, como reservas de memória tem um número de bits máximo, o objeto deve alocar um espaço maior no evento de não ter espaço suficiente para acomodar um novo elemento.

## Complexidade

O array dinâmico se caracteriza por ter um acesso rápido em [[Complexidade Assintótica|tempo constante]], presumindo que todos os objetos sejam do mesmo tipo e consequentemente tenham o mesmo tamanho, basta saber a localização do elemento inicial e o índice do objeto.
### Acessar primeiro elemento
Ler o primeiro elemento tem complexidade de tempo $\large O(1)$ em todos os casos.
### Acessar i-ésimo elemento
O acesso a um elemento qualquer no array é extremamente rápido, em tempo $\large O(1)$. Sabendo o tamanho em bits $\large b$ de cada elemento, $\large i$ o índice do elemento e $\large s$ a localização do primeiro elemento na memória, basta calcular $\large i*b + s$, presumindo $\large n$ conhecido temos que a complexidade desse caso é $\large O(1)$.
### Acessar Ler ultimo elemento
Ler o último elemento é questão de saber o tamanho populado da lista, tendo ele em mente, a complexidade é a mesma de acessar qualquer outro elemento: $\large O(1)$.
### Inserir elemento no final
Depende da capacidade total do espaço de memória disponível na lista, se a lista reservou o suficiente para inserir o elemento, a nova inserção é em tempo $\large O(1)$. Caso a lista não tenha capacidade, é necessário criar alocar um novo espaço maior na memória e copiar todos os elementos ao novo espaço, esse processo roda em tempo $\large O(n)$.
### Inserir elemento em qualquer posição
Inserir um elemento no meio da lista envolve mover os elementos posteriores para frente, o pior caso é a inserção de elemento na posição 0, o custo de tempo é $\large O(n)$.
### Remover elemento no final
Remover o último elemento é só questão de remover o elemento da memória, tem complexidade $\large O(1)$.
### Remover elemento em qualquer posição
Remover o elemento em uma $\large i$-ésima posição envolve trazer os elementos de índice superior uma posição pra trás, no pior caso temos um custo $\large O(n)$.
## Expansão Dinâmica da Lista
//TODO
## Implementação
//TODO