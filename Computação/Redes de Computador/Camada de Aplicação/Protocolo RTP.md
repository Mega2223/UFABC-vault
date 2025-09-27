---
tags:
  - internet
  - incompleto
  - computação
  - comunicações
authors: Júlio César
---
## Definição

O _Real-Time Transport Protocol_ (RTP) é um [[Arquitetura de Rede#Protocolo|protocolo]] de [[Camada de aplicação|aplicação]] comumente usado para stream de dados em tempo real, possui alguns aspectos semelhantes a um protocolo de [[Camada de Transporte|transporte]]. Como o RTP prioriza a velocidade, ele normalmente manda datagramas [[Protocolo UDP|UDP]] pela rede.

O RTP visa fazer a [[multiplexação]] de vários fluxos de dados em um único fluxo UDP, que pode ter um ou mais destinos. Ele manda um número de sequência junto ao pacote para o destinatário poder avaliar se houve alguma perda de pacotes, mas o serviço provido pelo RTP é sem confirmação, sem controle de fluxo, não confiável e sem re-envio de dados.

## RTCP

O _Real-time Transport Control Protocol_ (RTCP) é um protocolo que funciona com uma implementação RTP, ele visa a sincronização dos fluxos de transmissão e o feedback entre a interface e o usuário
//todo
## Cabeçalho

O header do RTP não têm tamanho fixo, mas tem um mínimo de 12 bytes.
- Versão do protocolo (2) (2 bits)
- Padding (1 bit)
- Extensão (1 bit) indica se o cabeçalho possui extensão.
- CSRC Count (4 bits) indica o número de identificadores CSRC.
- Marker (1 bit) Bit lidado no nível de aplicação, verdadeiro se a informação for relevante.
- Payload Type (7 bits) Algoritmo de codificação usado.
- Sequence Number (16 bits) Número sequencialmente crescente entre pacotes.
- Timestamp (32 bits) Anota quando a primeira amostra do pacote foi realizada.
- SSRC (32 bits) Informa a qual fluxo o pacote pertence para a demultiplexação dos dados.
- CSRC (32 bits) Fontes que contribuíram para um fluxo de múltiplas fontes.
- Header Extension (//TODO)