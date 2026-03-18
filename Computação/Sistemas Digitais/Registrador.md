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

### FF S-R com portas NOR
Para um FF com portas NOR temos o seguinte arranjo

![[FF NOR S-R.png|center|400]]

Onde o estado se preserva caso a entrada seja nula, e as entradas SET e RESET determinam o estado da máquina. A latch SR-NOR todavia têm um problema, se SET e RESET ambos estão ativos temos um estado inválido, onde tanto $\text p$ quanto $\neg \text{p}$ são 0, que é ilógico.
### FF D-C com portas NOR
Para remover a possibilidade de estados inválidos no [[#FF S-R com portas NOR|FF S-R]] podemos fazer com que SET seja uma negação de RESET, mas isso remove o estado válido em que SET = 0 e RESET = 0, o que faz a máquina perder a propriedade de preservação de informação.

Para isso, o latch D implementa então duas entradas, D e C, D é a entrada de estado e C a entrada de controle, onde o estado do FF só mudará se C = HIGH.

![[FF nOR CT.png|center|500]]


A inserção de latch de controle remove estados inválidos e inviabiliza a probabilidade de um estado indefinido durante a execução do circuito. Quando C = 0, o estado não muda, e para C = 1, o registrador salva o valor de D.

## Registrador

O registrador é uma sequência contínua de [[#Flip Flop|flip flops]] que registram algum dado codificado em uma sequência binária, o registrador é a unidade de memória mais primitiva na programação de baixo nível.

Tipicamente uma [[CPU]] tem sua pilha interna de dados formada por grupos de registradores, o que viabiliza um acesso rápido, todavia o custo de memória de registradores é muito elevado, então a pilha de execução não consegue armazenar muitos dados. 
## Sincronicidade

Circuitos digitais tipicamente operam junto de um relógio periódico que regula o fluxo de dados entre componentes do circuito, então muitos FFs tem implementação de clock em sua arquitetura. Para sua grande maioria, o FF muda de estado somente em uma transição alta, ou seja, do nível LOW para o nível HIGH.

Para isso é necessário que exista um circuito detector de bordas que detecte uma subida ou descida de clock e emita um output positivo somente durante a transição.     


![[CC FF.drawio 1.png|center|280]]

## Transferências entre registradores

### Transferência Síncrona
Uma operação comum entre registradores é a terferência de um registrador a outro, a transferência síncrona usa de dois relógios de período igual mas que trocam de estado em momentos diferentes para evitar que o circuito seja jogado em um estado indeterminado

![[SEQUEN.png|center|445]]

Registradores raramente são colocados um atrás do outro, realisticamente existiria um _bus_ que apontasse os dados da saída A para a entrada do próximo registrador.