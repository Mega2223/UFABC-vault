---
tags:
  - computação
  - incompleto
  - internet
  - comunicações
authors: Júlio César
---
## Definição

A camada física é a [[Arquitetura de Rede#Camada|camada]] que liga de forma material os pontos de uma determinada rede e é responsável por lidar com todas as questões físicas da transmissão de dados (energia, ruído, distribuição de sinais no canal, codificação etc).

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