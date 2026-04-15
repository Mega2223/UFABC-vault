---
tags:
  - computação
  - algoritmo
authors: Júlio César
---
## Preâmbulo

Um [[sistema operacional]] opera sobre uma linha contínua de bytes em sua unidade física, ele deve distribuir esse hardware em formato de arquivo para as aplicações, arquivos tendem a ter uma alta variância de tamanho.

O SO pode, em tese meramente alocar os endereços continuamente, onde um arquivo inteiro é um conjunto de bits que começa em um endereço físico e termina em outro, em unidades de leitura isso é suficiente, mas essa implementação tem os exatos mesmos problemas do [[Espaço de Endereçamento#Compactação de Memória|endereçamento contínuo de memória RAM]], isso é, esse algoritmo tende a fragmentar a memória e fechar os vãos deixados é computacionalmente caro.

Um arquivo pode ser composto então de uma [[Lista#Lista Ligada|lista ligada]], onde cada parte do arquivo é composto de um cabeçalho (que aponta para o próximo componente da lista) e o conteúdo da partição, o problema dessa implementação é que essa implementação não é de acesso aleatório, pois a lista ligada tem uma complexidade de acesso $\large O(n)$, arquivos muito grandes são muito lentos de ser acessados completamente.

## Definição

A alocação de tipo FAT (_File Allocation Table_) é um algoritmo de alocação de memória para [[Sistemas de Arquivo|sistemas de arquivo]] baseado em [[Lista#Lista Ligada|lista ligada]] com tabela, onde cada bloco que ocupa um determinado bloco possui um ponteiro para o próximo bloco e o conteúdo do bloco. O arquivo consiste com uma tabela contendo todos os blocos em uma tabela, denominada tabela FAT, como não é necessário passar por todo ponto anterior antes de chegar em algum bloco no arquivo, o acesso é [[Complexidade Assintótica|assintoticamente constante]][^1]. Esse tipo de alocação viabiliza que um arquivo esteja distribuído por vários blocos distintos no disco, que não são necessariamente vizinhos.

O tamanho da FAT cresce de acordo com o arquivo, um arquivo muito grande terá uma tabela também muito grande, um arquivo de 1 TB teria mais de 2 GBs de memória dedicado somente para a tabela de endereços.

[^1]: Praticamente uma [[Lista#Lista em Array|array list]].
