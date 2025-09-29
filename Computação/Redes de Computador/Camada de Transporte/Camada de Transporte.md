---
tags:
  - computação
  - comunicações
  - internet
  - incompleto
authors: Júlio César
---
## Definição


## Protocolo Baseado em Pacotes
//todo nome?
Protocolos baseados em pacotes  são protocolos que visam transmitir de forma confiável uma sequência ordenada de dados. O _sender_ adiciona aos dados algum dado para a confirmação de recebimento do pacote (como um _checksum_) e um número de sequência, e quando o _receiver_ recebe este pacote, ele manda de volta somente o nosso dado de confirmação. Quando o sender recebe o pacote de confirmação, ele envia o próximo, caso contrário ele tenta re-enviar o pacote atual até receber uma confirmação, caso o _receiver_ receba um pacote duas vezes, ele descarta a repetição por meio do número de sequência.

## Protocolo de Janela Deslizante

É uma adaptação do protocolo baseado em pacotes para canais de alta latência, onde o transmissor possui um número de janela, manda todos os pacotes dentro da janela e mantém uma tabela interna de cada pacote reconhecido pelo receptor. Quando o menor pacote da janela é recebido, a janela aumenta e os novos pacotes são transmitidos.

O receptor também mantém uma janela dos pacotes recebidos, e só avança essa janela quando o pacote com menor número de sequência nessa janela é recebido.
### Go Back N
É o caso quando a janela é 1, ou seja, todos os pacotes subsequentes são descartados.

## Chamada Remota de Procedimento (RPC)

É um procedimento quando um computador (client) manda uma sub-rotina para ser executado em outro computador (host), similar ao fluxo de uma função. Essas chamadas são embrulhadas em _stubs_ que servem para o encapsulamento dessas requisições.

Algumas estruturas de dados complexas (como ponteiros de memória) não podem ser implementadas por RPC. Em linguagens de tipificação fraca, o encapsulamento do pacote pode não ser possível pela dificuldade de predizer o tamanho do pacote. Também existem dificuldades em presumir determinados tipos de variável.

Pode ser implementado em aplicações [[Protocolo TCP|TCP]] e [[Protocolo UDP|UDP]], mas tipicamente é necessário um certo grau de confiabilidade.