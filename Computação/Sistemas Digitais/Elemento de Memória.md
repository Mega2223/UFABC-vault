---
tags:
  - computação
  - incompleto
  - circuitos-digitais
---
## Definição

É um elemento de memória uma parte de um circuito que é capaz de armazenar informação e repassar essa informação para alguma outra parte do circuito, o que causa uma variação no comportamento do mesmo até quando ele recebe a mesma entrada. O circuito que têm um componente de memória é chamado de [[circuito sequencial]].

## Flip Flop

É algum circuito digital que armazena e reproduz 1 de 2 estados. Tipicamente para flip-flops temos uma entrada de estado e uma entrada de controle, que serve para dizer ao circuito quando mudar o estado. Como entendemos que cada estado é a negação do outro, não são necessárias duas entradas de estado (ter uma entrada para cada estado pode causar problemas de estados inválidos no circuito.)

### Latch com portas NOR

Para um FF com portas NOR temos a princípio a seguinte arquitetura

![[FF NOR S-R.png]]

Onde o estado se preserva caso a entrada seja nula, e as entradas SET e RESET determinam o estado da máquina. A latch SR-NOR todavia têm um problema, se SET e RESET ambos estão ativos temos um estado inválido, onde tanto $\text p$ quanto $\neg \text{p}$ são 0, que é ilógico.

Para isso podemos fazer com que SET seja uma negação de RESET, mas isso remove o estado válido em que SET = 0 e RESET = 0, o que faz a máquina perder a propriedade de preservação de informação.

Para isso, o latch D implementa então duas entradas, D e C, D é a entrada de estado e C a entrada de controle, onde o estado do FF só mudará se C = HIGH.

![[FF nOR CT.png]]

Este modelo não tem estado inválido.
