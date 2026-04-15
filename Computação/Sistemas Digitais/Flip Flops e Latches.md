---
tags:
  - computação
  - incompleto
  - circuitos-digitais
authors: Júlio César
---

# Latch

As latches são [[Circuito Combinatório|circuitos combinatórios]] biestáveis com capacidade de armazenamento, podem ser construídas com portas NAND ou portas NOR. É necessário pela implementação de memória do circuito, servindo de base fundacional para [[Circuito Sequencial|circuitos sequenciais]].
## Latch S-R

Uma latch de tipo S-R é um latch que aceita duas entradas, uma entrada SET e uma entrada RESET, e tem dá como saída o seu estado, para $\large(S=1, R=0)$, o circuito entra no estado HIGH, para $\large(S=0, R=1)$, o estado é forçado para LOW. Para os outros dois estados, o comportamento depende do tipo de latch.

### Latch S-R com portas NOR
O latch S-R com portas NOR é um latch onde $\large(S=0, R=0)$ preserva o estado do circuito, o estado $\large(S=1, R=1)$ é inválido e coloca o circuito em um estado indeterminado.

// TODO LaTeX
### Latch S-R com portas NAND

O latch S-R com portas NOR é um latch onde $\large(S=1, R=1)$ preserva o estado do circuito, o estado $\large(S=0, R=0)$ é inválido e coloca o circuito em um estado indeterminado. O input é pelo inverso de cada entrada, para $\large(\bar S=1, \bar R=0)$, o estado é colocado em HIGH, para $\large(\bar S=0, \bar R=1)$, o estado é colocado em LOW. 

// TODO LaTeX
### Latch D
Um latch D é um latch que recebe dois sinais, D e E, onde o estado do latch é atribuído o mesmo que D quando E, servindo de variável de controle, está no modo HIGH.

// Todo LaTex
# Flip Flop

O Flip Flop (FF) é um circuito lógico sensível a bordas, enquanto o [[#Latch|latch]] muda seu estado exclusivamente de acordo com os seus níveis de entrada, um FF muda seu nível durante uma borda de transição de nível seja do tipo $\large \text{LOW} \to \text{HIGH}$ ou do tipo $\large \text{HIGH} \to \text{LOW}$, o canal cuja a transição é medida geralmente é um clock. Um circuito que usa de FFs com borda em algum determinado clock é dito um circuito síncrono.

Um FF é essencialmente um latch que usa de um detector de subida como variável de controle, a manutenção da voltagem do controle implica a preservação do estado do FF. Em sistemas que BUS de $\large n$ bits, uma sequência de $\large n$ FFs armazenando um dado é dita um [[Registrador|registrador]].

Em arquiteturas de [[CPU|CPUs]], o FF compõe o cache interno dos processadores, o FF é uma unidade de custo elevado em função do espaço e custo muito baixo em função do tempo, logo o seu uso primário é justamente nos núcleos de processamento da máquina, todavia é o principal fator que limita a memória de cache das CPUs, para procedimentos que exigem memória adicional, é necessário fazer uso da [[Memória de Acesso Aleatório|RAM]], que é menos cara mas mais lenta.