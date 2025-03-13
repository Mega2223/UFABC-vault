---
tags:
  - internet
  - computação
  - algoritmo
  - incompleto
  - comunicações
authors: Júlio César
---
## Definição

É um protocolo[^1] que visa gerenciar sistemas de comunicação onde vários usuários autônomos competem pelo uso de o um único canal, ou seja, num sistema de disputa, a fim de resolver problemas de colisão.

## ALOHA Original

O ALOHA Original é um protocolo de transmissão em canal único onde cada transmissor simplesmente transmite sua mensagem no canal sem qualquer verificação de reserva, após mandada a mensagem o _sender_ aguarda uma resposta do destino verificando se o pacote de dados chegou de forma intacta (ou seja, se foi recebido o cabeçalho, rodapé e se o [[Camada de Enlace#Checksum|checksum]] é coerente).

//TODO: tem uma explicação no livro ligando isso à distribuição de [[Léxico de Distribuições de Probabilidade#Distribuição de Poisson|distribuição de Poisson]], dá uma olhada depois mas agr eu to na correria

## Slotted ALOHA

O Slotted ALOHA é um protocolo baseado no ALOHA original que visa maximizar o aproveitamento do canal por meio de um acordo mais robusto entre as máquinas do canal. Nessa versão do protocolo, o host utiliza de um cronômetro cíclico para distribuir determinadas faixas discretas de tempo aos usuários da rede, assim um usuário deve aguardar o período de seu slot para transmitir. O throughput desse método é aproximadamente o dobro do ALOHA original.

A reserva remete somente ao **inicio** da transmissão, caso uma transmissão dure mais que sua faixa de tempo ela irá interferir na próxima, então ainda é necessária a verificação da integridade do pacote por meio de um checksum.

//TODO: coloca as coisas matemáticas, página 166 do Tanenbaum

[^1]: Na verdade é um subprotocolo da [[camada de enlace]], mas tem protocolo no nome
