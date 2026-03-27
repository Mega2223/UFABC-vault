---
tags:
  - computação
  - incompleto
  - circuitos-digitais
authors: Júlio César
---
## Flip Flop

O Flip Flop (FF) é um circuito lógico que armazena um de dois possíveis estados. O Flip Flop pode ter seu estado modificado por meio de entradas lógicas e deve se lembrar do último estado definido.

É um um circuito que é capaz de armazenar informação e repassar essa informação para alguma outra parte do circuito, o que causa uma variação no comportamento do mesmo até quando ele recebe a mesma entrada. O circuito que têm um componente de memória pode ter respostas diferentes para as mesmas entradas pois depende também de estados prévios, este é chamado de [[circuito sequencial]].

## Latch

As latches são [[Circuito Combinatório|circuitos combinatórios]] com capacidade de armazenamento, se comportam como flip flops, podem ser construídas com portas NAND ou portas NOR. FFs com latches são utilizados principalmente para formar [[Registrador|os registradores]] de [[CPU|CPUs]], eles tendem a ter uma velocidade de acesso extremamente alta, mas pelo custo dos circuitos tendem a ser caros em capacidade de memória, assim a capacidade de cache de processadores modernos é extremamente baixa, a maioria das variáveis que necessitam de acesso rápido e frequente de um programa vão existir na [[Memória de Acesso Aleatório|memória RAM]].

### FF S-R com portas NOR
Para um FF com portas NOR temos o seguinte arranjo

![[FF NOR S-R.png|center|400]]

Onde o estado se preserva caso a entrada seja nula, e as entradas SET e RESET determinam o estado da máquina. A latch SR-NOR todavia têm um problema, se SET e RESET ambos estão ativos temos um estado inválido, onde tanto $\text p$ quanto $\neg \text{p}$ são 0, que é ilógico.
### FF D-C com portas NOR
Para remover a possibilidade de estados inválidos no [[#FF S-R com portas NOR|FF S-R]] podemos fazer com que SET seja uma negação de RESET, mas isso remove o estado válido em que SET = 0 e RESET = 0, o que faz a máquina perder a propriedade de preservação de informação.

Para isso, o latch D implementa então duas entradas, D e C, D é a entrada de estado e C a entrada de controle, onde o estado do FF só mudará se C = HIGH.

![[FF nOR CT.png|center|500]]


A inserção de latch de controle remove estados inválidos e inviabiliza a probabilidade de um estado indefinido durante a execução do circuito. Quando C = 0, o estado não muda, e para C = 1, o registrador salva o valor de D.

