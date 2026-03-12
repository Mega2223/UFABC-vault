---
tags:
  - computação
  - incompleto
---
## Definição

Um processo representa um programa qualquer em um [[sistema operacional]], é um conjunto de procedimentos primitivos e chamadas de sistema. Cada processo possui
- Uma pilha de execução que representa os dados que o programa tem nos registradores do processador
- Um espaço de endereçamento que representa quais endereços de memória de acesso aleatório o programa pode acessar
- Uma entrada na tabela de processos do sistema operacional
## Árvore de Processos

Por meio da [[chamada de sistema]] `fork`, um processo pode gerar um filho o qual o processo pai tem vínculo, esses subprocessos também podem gerar processos, em distribuições _unix-like_, essas divergências geram uma [[Árvore#Árvore Enraizada|árvore enraizada]] com raiz no processo do sistema operacional

## Streams de Dados

Uma aplicação tipicamente possui 3 streams de dados, `stdout`, `stdin` e `stderr`, tipicamente representadas como [[Sistemas de Arquivo#Pseudoarquivos|pseudoarquivos]].