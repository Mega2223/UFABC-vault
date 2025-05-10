---
tags:
  - internet
  - computação
  - incompleto
authors: Júlio César
---
## Definição

O TCP (_Transmission Control Protocol_) é um [[Arquitetura de Rede#Protocolo|protocolo]]  de [[Camada de Transporte|transporte]] confiável ponto a ponto orientado a conexões que visa a minimização de erros na transmissão de informações. A ideia por trás do TCP é prover um serviço confiável e robusto para uma rede não confiável. Ele fragmenta o fluxo de bytes de entrada em mensagens e passa cada uma separadamente pela internet. A informação é posteriormente remontada. 

Cada implementação do TCP usa de entidades TCP em seus dois fins, cada entidade ao receber um conjunto de dados fragmenta o mesmo em pacotes de no máximo 64KB, e envia cada pacote em datagramas [[Protocolo IP|IP]].

O TCP deve fazer todo o controle de erros e confirmação, controle de timer e reordenação dos pacotes caso eles cheguem fora de ordem.

## Serviço

Cada entidade TCP cria um _socket_, que possui um endereço IP e um número de 16 bits (porta). Portas abaixo de 1024 são reservadas para algumas funções do sistema. O TCP fornece uma abstração que basicamente cria um fluxo de dados _seamless_, onde o usuário não pode implicar como o TCP fez a fragmentação da mensagem pois os dados no destino são remontados de forma a serem idênticos na origem. Os datagramas TCP são denominados segmentos.

O segmento TCP possui um cabeçalho de tamanho fixo (20 bytes) seguido dos dados sendo transmitidos.

Quando a aplicação passa uma mensagem para a entidade TCP, ele pode optar por retardar os dados em vez de enviar imediatamente, a flag `PUSH` anula este comportamento.

## Cabeçalho

O cabeçalho do TCP 
//todo

## Estabelecimento de Conexão

Uma conexão TCP é estabelecida com um handshake de 3 vias, um fim envia um pacote com segmento  `SYN`, o outro fim pode recusar ou aceitar a conexão, caso aceite ele envia um pacote com segmento `SYN,ACK`, o número de sequência no pacote é medido a partir de um timer para evitar conflitos.

//todo aula 14
## Implementação