---
tags:
  - computação
  - algoritmo
  - incompleto
authors: Júlio César
---
## Preâmbulo

[[Sistema Operacional|Sistemas Operacionais]] devem fornecer um serviço de alocação de memória rápido e confiável, e não devem negar memória a suas aplicações salvo casos extremos, é comum que em um sistema operacional o tamanho de todos os programas exceda o tamanho de memória disponível. 

Uma solução potencial é fazer [[Espaço de Endereçamento#Swapping|swapping]] entre aplicações, todavia este processo é extremamente caro em função de tempo, em vez disso, sistemas operacionais fazem uso de uma memória virtual para distribuir sua memória de forma mais rápida.
## Definição

A memória virtual é uma implementação de distribuição e alocação de memória [[Memória de Acesso Aleatório|RAM]] para programas de um sistema operacional, cada programa tem um [[Espaço de Endereçamento|espaço de endereçamento]] próprio que é dividido em unidades chamadas de páginas. Cada página é um espaço contínuo de endereços de memória, que podem ou não estar na memória física. Quando há um acesso de endereço, cabe ao sistema operacional carregar a página caso ela não esteja carregada.

A memória virtual então essencialmente divide o programa em porções discretizadas, um programa pode estar então somente parcialmente carregado, caso um programa faça acesso a uma variável que não esteja na memória física, o sistema operacional deve descarregar alguma página para o disco e em seguida carregar a página que falta o conteúdo para a memória física.

## Paginação

O [[Espaço de Endereçamento|espaço]] de endereços fornecidos as aplicações é chamado de espaço de endereçamento virtual, ele pode ser maior que o espaço de endereçamento físico devido ao algoritmo de paginação do sistema operacional. A [[CPU]] tipicamente decodifica os endereços virtuais do espaço em endereços físicos em um módulo chamado Unidade de Gerenciamento de Memória / _Memory Management Unit_ (MMU).

## Substituição de Página

Quando o programa faz uma chamada de acesso a um valor de memória, caso o valor não exista na memória física, ele deve estar no disco, o sistema deve então descarregar alguma página e carregar a página do endereço desejado.

Hipoteticamente, a melhor alternativa seria descarregar a página que mais vai demorar para ser executada, aquela que vai levar mais instruções até ser referenciada, todavia o sistema operacional não tem como saber qual é essa página, outros algoritmos visam então se aproximar desse algoritmo ótimo de paginação.

### Algoritmo de Substituição de Página Não Usada Recentemente
O algoritmo _Not Recently Used_ (NRU) dá a cada página um mapa de 2 bits que é periodicamente limpo, o bit referenciado (R) vai para 1 sempre que a página é referenciada, o bit modificado (M) vai para 1 sempre que há escrita na página. Isso divide todas as páginas em 4 classes de prioridade de remoção:

- Não referenciada e não modificada
- Não referenciada e modificada
- Referenciada e não modificada
- Referenciada e modificada

### Algoritmo First-In First-Out
Usa uma política de [[fila]] para decidir qual página deve sair da memória física, a página mais antiga é removida e a página necessária é inserida no final da lista.

### Algoritmo de Segunda Chance
Similar ao [[#Algoritmo First-In First-Out|algoritmo FIFO]] mas com uma mistura da implementação [[#Algoritmo de Substituição de Página Não Usada Recentemente|NRU]], o algoritmo verifica o bit R da primeira página, se ele é 0, ela é removida, caso contrário, ele seta esse bit para 0 e move a página examinada para o final da fila.

### Algoritmo de Página de Relógio
Similar ao [[#Algoritmo de Segunda Chance|algoritmo de segunda chance]], mas usa uma [[Lista#Lista Ligada Circular|lista circular]] afim de minimizar inserções e remoções desnecessárias, o algoritmo itera pela lista até achar um bit R que seja 0, todo bit R de valor 1 que ele acha ele seta para 0 antes de examinar o valor seguinte, garantindo que a iteração sempre cesse no máximo após uma volta na fila.

### Algoritmo de Substituição de Página Menos Usada Recentemente
O _Least Recently Used_ (LRU) presume que páginas mais importantes são usadas com mais frequência, o sistema mantém um contador de quando cada página foi utilizada, e, quando houver uma falta de página, ele remove a página que foi acessada há mais tempo, presumindo que esta seja a menos provável de ser referenciada.

### Algoritmo de Substituição de Página Não Usada Frequentemente
O _Not Frequently Used_ (NFU) faz um contador de acessos para cada página, na falta de página a página de menor contador é a que sai. Todavia, se uma página é muito referenciada no passado ela pode acabar persistindo, por conta disso também é adicionado um decaimento / _aging_ que corta esse número conforme o tempo de CPU avança.