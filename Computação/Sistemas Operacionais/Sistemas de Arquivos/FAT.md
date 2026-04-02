---
tags:
  - computação
  - incompleto
---
## Preâmbulo

Um [[sistema operacional]] opera sobre uma linha contínua de bytes em sua unidade física, ele deve distribuir esse hardware em formato de arquivo para as aplicações, arquivos tendem a ter uma alta variância de tamanho.

O SO pode, em tese meramente alocar os endereços continuamente, onde um arquivo inteiro é um conjunto de bits que começa em um endereço físico e termina em outro, em unidades de leitura isso é suficiente, mas essa implementação tem os exatos mesmos problemas do [[Espaço de Endereçamento#Compactação de Memória|endereçamento contínuo de memória RAM]], isso é, esse algoritmo tende a fragmentar a memória e fechar os vãos deixados é computacionalmente caro.

Um arquivo pode ser composto então de uma [[Lista#Lista Ligada|lista ligada]], onde cada parte do arquivo é composto de um cabeçalho (que aponta para o próximo componente da lista) e o conteúdo da partição, o problema dessa implementação é que essa implementação não é de acesso aleatório, pois a lista ligada tem uma complexidade de acesso $\large O(n)$, arquivos muito grandes são muito lentos de ser acessados completamente.

## Definição

