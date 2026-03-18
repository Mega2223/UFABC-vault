---
tags:
  - computação
  - incompleto
  - circuitos-digitais
authors: Júlio César
---
## Definição

Um circuito sequencial é um circuito que faz decisões baseados em um determinado estado, ou seja, é um [[circuito combinatório]] que usa de algum componente de memória para calcular a sua saída. Normalmente é alguma sequência de flip-flops.

O circuito sequencial segue então um comportamento baseado em um número finito de estados, que mudam de acordo com entradas ao sistema. Ele depende também de uma divisão discreta de tempo, normalmente sinalizada por um clock.

A saída de um circuito sequencial pode ser uma combinação do estado e da entrada (baseado em transições, modelo de Mealy) ou simplesmente uma combinação apenas do estado (Moore).
### Modelo de Moore
Um circuito no modelo de Moore é um circuito sequencial onde a saída depende exclusivamente do estado atual da máquina e a entrada só afeta a mudança entre estados. Circuitos no modelo são síncronos, pois a saída só muda durante o período de transição do circuito.

![[MOORE 1.png|center|500]]

### Modelo de Mealy
Um circuito no modelo de Mealy é um circuito cuja saída depende do estado e da transição do circuito, onde a entrada pode diretamente mudar a saída, o circuito no modelo de Mealy pode ser assíncrono, pois a entrada não precisa necessariamente estar alinhada ao período do ciclo da máquina.

![[MEALY 1.png|center|500]]

