---
authors: Júlio César
tags:
  - computação
  - incompleto
---
## Definição 

O conceito de dividir uma determinada [[Processo|aplicação]] em vários processos rodando em paralelo. A implementação de multithreading é feita a partir da criação de subprocessos que desenvolvem tarefas diferentes para uma aplicação, é particularmente importante para aplicações que fazem uso de chamadas bloqueantes, uma aplicação pode alocar uma única thread a ficar esperando pelo desbloqueio enquanto o restante do programa roda normalmente.

Ao contrário de [[Processo#Árvore de Processos|subprocessos]], threads compartilham do mesmo espaço de memória, o que permite comunicação entre threads, todavia todo recurso compartilhado deve evitar que duas threads o alterem ao mesmo tempo para evitar um estado inválido de aplicação.

Em sistemas UNIX  as [[Chamada de Sistema|chamadas]] que oferecem o uso de threads são as _Pthreads_, definidas pelo IEEE 1003.1c, existem implementações que implementam threads no espaço do usuário, mas estas tendem a não suportar chamadas bloqueantes.

