---
tags:
  - incompleto
  - computação
authors: Júlio César
---
## Definição

O registrador é uma sequência contínua de [[#Flip Flop|flip flops]] que registram algum dado codificado em uma sequência binária, o registrador é a unidade de memória mais primitiva na programação de baixo nível. O tamanho do registrador é inerente ao tamanho da primitiva do sistema, um sistema de 64 bits implica que seus busses tem 64 sinais elétricos e cada registrador tem 64 flip flops.

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