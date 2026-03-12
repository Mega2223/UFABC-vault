---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Uma CPU é um circuito composto de [[datapath|datapath]] e uma [[unidade de controle]], a CPU é um circuito capaz de efetivar operações primitivas de processamento por meio de instruções de baixo nível (palavras de controle).

A CPU possui uma pilha de memória interna que, embora tenha uma velocidade de acesso muito alta, também é muito limitada, para operações de memória mais complexas deve-se usar a alocação do espaço de [[Memória de Acesso Aleatório|memória de acesso aleatório]].

A CPU também implementa registradores adicionais, notavelmente:
- _Program Counter_: Endereço de memória para a próxima instrução
- _Stack Pointer:_ Aponta para o topo da pilha de memória
- _Program Status Word_: Possui o nível de acesso de programação e outras variáveis de controle.