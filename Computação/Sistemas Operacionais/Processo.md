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

Um processo gera um processo filho meio da [[chamada de sistema]] `fork`, esses subprocessos também podem gerar processos, em distribuições _unix-like_, essas divergências geram uma [[Árvore#Árvore Enraizada|árvore enraizada]].

A chamada `fork` duplica todas as variáveis da pilha do processo, a imagem de memória e os arquivos, efetivamente duplicando o processo, mas ela retorna valores diferentes para o pai e o filho, fazendo possível então distinguir qual é qual, notavelmente os processos terão espaços de endereçamento diferente.

Tipicamente o filho não quer rodar a mesma lógica do pai, então quando a `fork` sinaliza que um processo acabou de ser gerado, o filho faz a chamada `execve` para executar a lógica de algum outro programa.

## Término de Processo

Um processo pode ser terminado pelo sistema, por outro processo ou de forma voluntária, cada tipo de término possui um sinal associado.
## Streams de Dados

Uma aplicação tipicamente possui 3 streams de dados, `stdout`, `stdin` e `stderr`, tipicamente representadas como [[Sistemas de Arquivo#Pseudoarquivos|pseudoarquivos]].