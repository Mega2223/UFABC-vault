---
tags:
  - computação
  - internet
  - comunicações
authors: Júlio César
---
## Definição

A camada física é a [[Arquitetura de Rede#Camada|camada]] que liga de forma material os pontos de uma determinada rede e é responsável por lidar com todas as questões físicas da transmissão de dados (energia, ruído, distribuição de sinais no canal, codificação etc).

Em modelos de [[Arquitetura de Rede|redes]] de comunicação, a camada física é aquela que representa o meio físico o qual os dados passam, sejam eles um fio de cobre, de fibra ou ondas de rádio. A camada física é a fonte principal de ruídos de comunicação, assim o mesmo deve ser corrigido nas camadas superiores.

A camada física não possui protocolos em si, mas a [[camada de enlace]] pode ter premissas razoáveis sobre a natureza da camada física, por exemplo, uma rede de rádios provavelmente terá uma taxa de erro muito mais alta que um cabo de fibra, logo a camada de enlace deve implementar uma redundância mais robusta para redes de rádio.

## Taxa máxima de dados em um canal

A taxa máxima de transmissão dados num hipotético canal físico sem ruído se dá por
$$\large
2H\log_2 V
$$
- $V$ = Número de níveis discretos de sinal
- $H$ = Frequência de corte (KHz)

A taxa máxima de transmissão de dados num canal com ruído em Kbps se dá por
$$\large
H \log_2 (1 + S/N)
$$
- $(S/N)$ = Relação sinal-ruído (dB)
- $H$ = largura de banda (KHz)
