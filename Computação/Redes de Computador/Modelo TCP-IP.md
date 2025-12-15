---
tags:
  - internet
  - incompleto
  - computação
authors: Júlio César
aliases:
  - TCP/IP
  - TCP-IP
  - TCP IP
---
## Definição

Originalmente desenvolvido pelo Departamento de Defesa dos EUA, o TCP-IP é um modelo de [[Arquitetura de Rede|arquitetura]] de 4 camadas com propriedades de adaptação automática diante de uma falha local em algum dos pontos da rede de [[roteamento]]. É atualmente o padrão da internet.

## Camadas

### Camada de Aplicação
A camada de aplicação no TCP-IP é a comunicação de qualquer aplicação que faça uso do sistema de redes, cada aplicação é livre para estabelecer seus próprios protocolos.  Para navegação da internet o protocolo mais comum é o [[Protocolo HTTP|Protocolo HTTP e HTTPS]].

### Camada de Transporte
Similar à [[Camada de Transporte]] OSI, a camada de transporte do TCP/IP permite que pares dos hosts de origem e de destino mantenham uma sessão de comunicação mutual, são definidos dois protocolos principais ocupando a camada de transporte, o [[Protocolo TCP|TCP]] e o [[Protocolo UDP|UDP]].

### Camada de Rede / Camada Internet
A [[Camada de Rede]] responsável por lidar os procedimentos de navegação pela Internet, não é confiável. A camada de rede visa o transporte correto e rápido de pacotes entre máquinas. Para protocolos de endereçamento de rede são usados o [[Internet Protocol Version 4|IPv4]] e o [[Internet Protocol Version 6|IPv6]].

### Camada de Enlace
A [[Camada de Enlace]] é a última camada antes do [[Camada Física|meio físico]] e como tal ela vai lidar diretamente com questões relacionadas ao aparato de transmissão, como a atribuição de endereços MAC.