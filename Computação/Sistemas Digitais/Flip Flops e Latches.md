---
tags:
  - computação
  - incompleto
  - circuitos-digitais
authors: Júlio César
---

# Latch

As latches são [[Circuito Combinatório|circuitos combinatórios]] biestáveis com capacidade de armazenamento, podem ser construídas com portas NAND ou portas NOR. 
## Latch S-R

Uma latch de tipo S-R é um latch que aceita duas entradas, uma entrada SET e uma entrada RESET, e tem dá como saída o seu estado, para $\large(S=1, R=0)$, o circuito entra no estado HIGH, para $\large(S=0, R=1)$, o estado é forçado para LOW. Para os outros dois estados, o comportamento depende do tipo de latch.

### Latch S-R com portas NOR
O latch S-R com portas NOR é um latch onde $\large(S=0, R=0)$ preserva o estado do circuito, o estado $\large(S=1, R=1)$ é inválido e coloca o circuito em um estado indeterminado.

// TODO LaTeX
### Latch S-R com portas NAND

O latch S-R com portas NOR é um latch onde $\large(S=1, R=1)$ preserva o estado do circuito, o estado $\large(S=0, R=0)$ é inválido e coloca o circuito em um estado indeterminado. O input é pelo inverso de cada entrada, para $\large(\bar S=1, \bar R=0)$, o estado é colocado em HIGH, para $\large(\bar S=0, \bar R=1)$, o estado é colocado em LOW. 

// TODO LaTeX
## Latch D-C
# Flip Flop

O Flip Flop (FF) é um circuito lógico que armazena um de dois possíveis estados. O Flip Flop pode ter seu estado modificado por meio de entradas lógicas e deve se lembrar do último estado definido.

É um um circuito que é capaz de armazenar informação e repassar essa informação para alguma outra parte do circuito, o que causa uma variação no comportamento do mesmo até quando ele recebe a mesma entrada. O circuito que têm um componente de memória pode ter respostas diferentes para as mesmas entradas pois depende também de estados prévios, este é chamado de [[circuito sequencial]].

FFs com latches são utilizados principalmente para formar [[Registrador|os registradores]] de [[CPU|CPUs]], eles tendem a ter uma velocidade de acesso extremamente alta, mas pelo custo dos circuitos tendem a ser caros em capacidade de memória, assim a capacidade de cache de processadores modernos é extremamente baixa, a maioria das variáveis que necessitam de acesso rápido e frequente de um programa vão existir na [[Memória de Acesso Aleatório|memória RAM]].