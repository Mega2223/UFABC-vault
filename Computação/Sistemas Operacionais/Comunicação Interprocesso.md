---
tags:
  - computação
  - incompleto
authors: Júlio César
aliases:
  - IPC
---
## Definição

Envolve qualquer tipo de comunicação entre dois [[processo|processos]] distintos e não associados em um [[Sistema Operacional|sistema operacional]], processos frequentemente necessitam de coordenar alguma tarefa, enviar mensagens entre si ou de compartilhar algum recurso (como as streams de _input_ e _output_ da máquina).

## Condições de Corrida

Usadas para controlar acesso ao armazenamento compartilhado entre aplicações, a natureza assíncrona entre processos pode colocar o armazenamento em um estado inválido e difícil de debuggar, condições de corrida controlam o acesso a esse tipo de recurso compartilhado afim de evitar tal problema.

O compartilhamento de recursos entre programas deve seguir o princípio de exclusão mútua, dois programas não devem acessar o mesmo recurso ao mesmo tempo, se um programa está utilizando algum determinado arquivo todos os demais não devem ser autorizados a escreverem no mesmo.

A etapa em que um processo acessa um recurso compartilhado é denominada região crítica, sempre queremos que nenhum processo que não esteja em sua região crítica bloqueie algum outro processo de entrar na sua região crítica
### Desabilitação de Interrupts
Mecanismo de exclusão mutua que envolve desativar o [[Escalonamento|interrupt]] da [[CPU]] enquanto o programa estiver em sua região crítica, não é uma boa solução pois só funciona em sistemas uni-thread e torna todo sistema operacional vulnerável, uma vez que o SO não consegue fazer nenhuma operação enquanto a aplicação estiver em sua região crítica.

### Alternação Estrita
Os processos compartilham de um identificador que dita qual processo tem o direito a região crítica, é problemático pois caso um processo não possa entrar na região crítica, ele continuamente verifica o identificador até ter seu acesso liberado (_busy waiting_), o que gasta tempo de CPU.

// TODO