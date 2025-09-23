---
tags:
  - computação
  - incompleto
  - circuitos-digitais
  - matemática-discreta
  - matemática
authors: Júlio César
---
## Definição

A Unidade Lógica e Aritmética (ULA) / _Arithmetic Logic Unit (ALU)_ é um [[circuito combinatório]] capaz de realizar operações aritméticas e lógicas em duas sequências cada uma de $n$ bits, com os necessários efeitos de propagação.
## Design

A ULA recebe com entrada $A$ e $B$, que são sequências binárias de $n$ bits cada (numeradas de $0$ a $n-1$), algum input de carry $C_{\text{in}}$, seletores de operação $S_0$ e $S_1$ e o seletor de modo $S_2$[^1], como saída ela dá uma sequência binária de $n$ bits denominada $G$ e um valor carry $C_{\text{out}}$.
## Circuito Aritmético

Quando temos $S_2 = 0$, a ULA faz uso do circuito aritmético para realizar operações, o comportamento do circuito aritmético varia de acordo com $S_0$, $S_1$ e $C_\text{in}$.

O circuito constitui de 2 partes, o input $B$ é direcionado para um circuito que muda a saída dependendo dos seletores de operação, a saída desse circuito é levada a um circuito combinatório, junto com a entrada $A$ e $C_\text{in}$.
### Adição
Para $S_1 = 0$ e $S_0 = 1$, fazemos uma adição normal com uma cadeia de full adders.
### Subtração
Para $S_1 = 0$ e $S_0 = 0$ temos que, para um sistema de [[complemento de 2]], podemos fazer a subtração $A - B$ transformando a entrada $B$ em ${B'}$ (por meio do regulador de entrada do $B$) e introduzindo $C_{\text{in}} = 1$ no circuito aritmético.
### Incremento / Decremento
Para $(S_1=0, S_0=0, C_\text{in} = 1)$ temos como saída $A+1$, e para $(S_1=1, S_0=1, C_\text{in} = 0)$ temos $A-1$ como saída.
### Identidades / Transferências
Para $(S_1=0, S_0=0, C_\text{in} = 0)$ e $(S_1=1, S_0=1, C_\text{in} = 1)$, o circuito simplesmente dará $A$ como saída. A identidade é importante para levar o valor inalterado até algum outro lugar na memória, por exemplo para registrar o valor na memória de um [[datapath]].
## Circuito Lógico

Para operações lógicas, a ULA processa sequências _bitwise_ como valor de resultado. A unidade tem suporte a todas as operações lógicas básicas de circuitos digitais: AND, OR, XOR e seus respectivos complementos (NAND, NOR, XNOR). Essas usam dos seus próprios circuitos lógicos respectivos e portas logicas AND para a seleção de modo.

## Estágios da ALU

A ALU possui em cada operação por bit um circuito combinatório e um circuito lógico, junto com um circuito que avalia qual será a saída dependendo do estado de $C_2$, este pode ser repetido iterativamente $n$ vezes.

## Tabela Completa de Operações

// todo nao vou fazer isso agora não kkkkkkkkkkkkkkkkkkkkk

[^1]: Ele segue uma lógica de levar o bit mais significativo como o mais importante.
