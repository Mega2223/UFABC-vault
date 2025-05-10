---
tags:
  - internet
  - computação
  - comunicações
  - incompleto
  - algoritmo
authors: Júlio César
---
## Algoritmo de Balde Furado

O algoritmo salva todos os dados a serem roteados em um _buffer_ e visa liberar todos os datagramas em uma taxa fixa de bits. Caso os datagramas possam ter tamanhos diferentes, é necessário algum tipo de regulação para manter uma taxa média de dados constante.
## Algoritmo de Balde de Símbolos

A cada $\Delta t$ segundos, um 'símbolo' é adicionado ao balde, para cada pacote enviado na rede se gasta um símbolo. Tipicamente os primeiros pacotes entram para a rede como rajada, e depois os pacotes vão em velocidade constante.

## Controle de Admissão

O controle de admissão visa prevenir a formação de novos circuitos caso a rede tenha congestionamento. Ao invés de prevenir a formação de novos circuitos virtuais para toda a rede, podemos remover os roteadores congestionados da topologia da rede na hora de encontrar o caminho do circuito.
## Limitação de Banda /_Traffic Throttling_

//todo aula 8
## Pacote Regulador / _Choke_

//todo aula 8 also coloca quais vão pra redes de datagramas e qual para redes de circuitos
tem coisa na aula 9 tb