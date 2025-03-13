---
tags:
  - computação
  - algoritmo
  - incompleto
  - comunicações
authors: Júlio César
aliases:
  - CSMA
---
## Definição

O protocolo CSMA é um [[Camada de Enlace|subprotocolo de enlace]] de transmissão em um canal onde, em contraste ao [[Protocolo ALOHA|ALOHA]], a máquina que quer transmitir uma determinada mensagem aguarda a desocupação do canal antes de enviar a mensagem a fim de maximizar o uso da banda do canal. São separados entre persistentes e não persistentes. Foi originalmente usado para a transmissão entre torres de rádio mas suas versões mais ótimas são frequentemente usadas em [[LANs]].
## CSMA 1-Persistente

No CSMA 1-persistente, a máquina remetente simplesmente verifica a disponibilidade do canal antes de mandar a mensagem e, se o canal estiver disponível, ela imediatamente envia o pacote. É denominado 1-persistente pois a probabilidade de envio do pacote é sempre $p(1)$ caso o canal esteja desocupado.

Há o problema da possibilidade de duas estações transmitirem ao mesmo tempo, e se a mensagem ter o mesmo tamanho para ambos os transmissores, eles também tentarão o re-envio do pacote de forma simultânea.
## CSMA Não Persistente

No CSMA não persistente, caso a estação transmissora detecte o uso do canal, ela vai esperar por uma quantidade aleatória de tempo antes de verificar pela disponibilidade do canal, a fim de evitar problemas de colisão imediata após a disponibilização de um canal no [[Protocolo CSMA#CSMA 1-persistente|CSMA 1-persistente]].

## CSMA $p$-Persistente

O CSMA $p$-persistente é um protocolo de canais segmentados. Quando um determinado usuário quer transmitir uma mensagem no canal, se o mesmo não estiver ocupado, ele transmite com uma probabilidade de $p$, e uma probabilidade de $1-p$ de adiamento de transmissão. Caso o canal comece uma transmissão durante o período de adiamento, o protocolo vai tratar a transmissão como perdida (de forma idêntica a uma colisão) e vai tentar transmitir novamente após a liberação do canal.

## CSMA Com Detecção de Colisão

O CSMA/CD[^1] é o caso do CSMA em que se duas estações começam a transmitir simultaneamente, elas têm a capacidade de detectar a colisão[^2] e acabar a transmissão prematuramente já que o pacote de dados já foi perdido (e irá subsequentemente esperar uma quantidade de tempo aleatória para verificar a disponibilidade do canal). É o protocolo padrão para a LAN-Ethernet clássica. Normalmente a detecção de colisão é combinada com um procedimento $p$-persistente.

[^1]: CSMA with Collision Detection

[^2]: Presumindo um canal analógico. A detecção é basicamente verificar se o sinal sendo recebido é o mesmo que o sinal transmitido.
