---
tags:
  - algoritmo
  - computação
  - incompleto
authors: Júlio César
---
## Definição

É prática comum de um [[sistema operacional]] regular o acesso a [[Memória de Acesso Aleatório|memória RAM]] (ou equivalente) para as aplicações. Um sistema operacional que não implementa qualquer abstração de memória expõe os endereços físicos para cada aplicação, possibilitando então que aplicações danifiquem os estados umas das outras (e do próprio sistema).

Um sistema operacional deve então garantir que dois programas distintos jamais tenham acesso aos mesmos registradores, para isso o sistema divide sua memória em **espaços de endereçamento** para cada aplicação.

O sistema deve distribuir a memória entre aplicações e somente negar acesso a memória em casos muito drásticos. Essa tarefa é particularmente desafiadora para programas de [[Alocação Dinâmica de Memória|alocação dinâmica]], cujo tamanho varia durante todo o runtime.
O espaço de endereçamento é uma abstração da memória física onde uma aplicação pode alocar e referenciar endereços para seu próprio uso por meio de [[Chamada de Sistema|chamadas de sistema]], a arquitetura da memória fica completamente oculta ao programa, uma mesma variável endereço em programas diferentes vão apontar para locais físicos diferentes na memória da máquina, pois cada programa tem seu próprio espaço de endereçamento virtual.
### Endereçamento Físico
Tipicamente cada espaço de endereçamento ocupa um espaço contínuo na memória da máquina, ou seja, cada processo constitui um 'bloco' contíguo de bytes na memória. Um efeito colateral é que, caso um processo solicite mais memória, a expansão de seu espaço de endereçamento pode acabar colidindo com outro processo, o sistema deve então mover um dos processos inteiramente (transferindo todos os dados fisicamente). Para minimizar esse tipo de ocorrência, o sistema operacional pode deixar vãos de endereçamento não alocado entre cada processo.
### Swapping
É o processo de um sistema operacional tornar alguma porção espaço de unidade física (disco) em uma pseudomemória para uso dos programas, para por exemplo quando toda a RAM esteja ocupada. Acessos para o disco são caros então isso afeta significativamente o desempenho dos programas. Sistemas Unix tipicamente permitem Swapping por meio de um arquivo _swapfile_ ou por uma partição dedicada.

Processos que não estão em atividade podem ser completamente movidos ao disco em todo seu estado para uma execução posterior, fazendo com que o SO possa mover outros processos mais importantes para a memória.
### Compactação de Memória
Consiste de evitar uma fragmentação excessiva da memória, quando existe um espaço de memória entre dois processos sendo executado, o sistema em tempo de runtime traz os processos para endereços menores afim de fechar esses vãos de memória. A técnica aumenta disponibilidade de memória mas é computacionalmente cara pois necessita que o sistema copie toda a memória de um programa (então raramente é utilizada).

## Mapa de Bits

É uma técnica de distribuição de memória para programas, a memória do dispositivo é distribuída em unidades de tamanho uniforme para a alocação. Existe um mapa de bits onde cada unidade alocável irá possuir um único bit indicando se este espaço está ocupado. 

Cada programa ocupa um determinado número de unidades contínuas na memória, para carregar um programa de $\large k$ unidades, é necessário que exista um espaço contínuo de $\large k$ unidades na memória, fazer essa busca pode ser um processo relativamente custoso. 

É necessário encontrar um bom tamanho de unidade, um tamanho muito alto resulta em desperdício de memória e um tamanho muito baixo exige um mapa de bits muito grande.

## Registradores Base e Limites

Muitas implementações de [[CPU]], afim de criar um [[#Espaço de Endereçamento|espaço de endereçamento virtual]] de acesso rápido para a máquina, implementavam registradores que eram capazes de fazer essa tradução, os registradores base e limite.

Os programas existem de forma contínua na memória e o registrador base aponta para o início do espaço de endereçamento, enquanto o limite diz o tamanho da memória do programa, quando a CPU faz uma requisição de memória, dependendo da aplicação, ela automaticamente adicionaria o valor de início ao ponteiro, efetivamente criando um espaço de endereçamento para cada aplicação.

Circuitos de adição podem ter um tempo de computação muito demorado devido a propagação da soma, então esse tipo de implementação não é comum.
## Lista Encadeada / Livre

A memória é dividida em uma [[Lista#Lista Ligada|lista encadeada]] de espaços de tamanho dinâmico, estes espaços ou estão livres ou são de algum programa, quando um programa encerra, o espaço que pertencia a esse programa se torna um espaço livre, espaços livres adjacentes sempre são juntados.

A complexidade de liberação de espaço é simples e cada divisão da memória tem exatamente dois vizinhos, encontrar um espaço com determinado tamanho também pode ser mais rápido (é necessário iterar para cada bloco da lista e não para cada bit do mapa), certas implementações usam de uma [[Lista#Lista Duplamente Ligada|lista duplamente encadeada]].

## Alocação

Quando um programa inicia faz uma requisição de memória, o sistema operacional pode ter de encontrar um espaço contíguo de memória que satisfaça o novo tamanho do programa, como trocar o programa de lugar é um processo caro queremos encontrar lugares que minimizem trocas futuras.
### First fit
Sistema operacional simplesmente encontra o primeiro bloco de tamanho o suficiente e insere o programa, dividindo o espaço inutilizado em espaço do programa e o espaço que ainda ficou inutilizado (a não ser que o bloco tenha o exato tamanho do programa).
### Best Fit
O algoritmo best fit visa encontrar o menor espaço em que cabe o programa, para fazer isso é necessário iterar toda a lista de blocos de memória, de forma análoga a achar o menor elemento de uma lista. Todavia, o best fit tende a ter problemas de fragmentação, pois gera espaços muito pequenos e difíceis de serem preenchidos na memória.
### Worst Fit
Faz o contrário do best fit e sempre aloca o programa no maior bloco possível, a rationale sendo que quanto mais espaço disponível para o programa menos vezes o sistema precisa o realocar, todavia também não é muito bom.
### Quick Fit
Divide as faixas de memória em 'categorias', de forma que cada tamanho de programa fica em uma categoria (4KB, 8KB, etc.). É rápido para achar blocos livres mas gerenciar blocos vazios após o encerramento de um programa tende a ser um processo muito caro (pois só se podem fundir blocos livres em certos casos específicos).