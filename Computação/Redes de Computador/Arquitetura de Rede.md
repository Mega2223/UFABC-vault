---
tags:
  - computação
  - internet
authors: Júlio César
aliases:
  - camadas de rede
  - protocolos de rede
---
## Definição

A arquitetura de rede é um determinado conjunto de camadas e protocolos de acordo unânime dentro de uma determinada rede. A implementação da arquitetura não é considerada parte da mesma, pois pode variar de máquina pra máquina.

## Hierarquia de protocolos
### Camada
Uma determinada camada em geral oferece um determinado [[Arquitetura de Rede#Serviço|serviço]] às camadas superiores, e isolar camadas superiores de sua implementação específica, um pacote de informações passa por diversas camadas antes de ser enviado pela camada física e posteriormente passa por cada camada correspondente na máquina de destino.
### Protocolo
Os recursos implementados por uma determinada [[Arquitetura de Rede#camada|camada]] $n$ precisam ser interpretados por uma camada $n'$ correspondente na máquina de destino, ou seja, deve haver um conjunto de regras em comum entre a camada $n$ da máquina de origem e a camada $n'$ da máquina de destino. Camadas correspondentes são designadas pares ou _peers_. 
### Interface
Uma interface é o que liga uma determinada camada às suas camadas adjacentes em uma máquina, esta define os [[Arquitetura de Rede#Serviço|serviços]] que uma determinada camada $k$ oferece à camada $k+1$
### Serviço
Um serviço é um conjunto de operações que uma [[Arquitetura de Rede#camada|camada]] oferece á sua camada superior, ele define as operações que a camada pode executar, mas nada sobre como esses serviços serão implementados

## Modelo OSI

O Modelo de Referência ISO OSI é um modelo de [[arquitetura de rede]][^1] desenvolvido pela ISO em 1983 visado à conexões entre sistemas abertos, é um modelo dividido em 7 camadas. Embora ele não seja um _standard_ relevante atualmente, alguns de seus aspectos foram propagados a arquiteturas posteriores. O modelo nunca ganhou tração e eventualmente o [[Modelo TCP-IP|TCP/IP]] virou o  padrão da internet.



[^1]: Tecnicamente não é, uma vez que não há especificação dos serviços e protocolos, mas somente das funções de cada camada.
