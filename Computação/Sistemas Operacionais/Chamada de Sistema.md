---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Chamadas de sistema são procedimentos chamados por um [[processo]] que fazem uso de um serviço provido por um [[sistema operacional]], são procedimentos bloqueantes que rodam em nível de kernel para prover algum determinado serviço do sistema.

Linguagens de baixo nível (principalmente [[C]]) implementam a chamada de sistema por meio de headers nativos da língua que trazem funções de mesmo nome da chamada, línguas de alto nível podem ofuscar a chamada de sistema com outros procedimentos ou objetos (como é o caso da classe `FileWriter` em [[Java]]).
## Chamada `fork`

A chamada `fork` cria uma cópia de execução do processo com um novo endereçamento de memória, o processo original é o [[Processo#Árvore de Processos|pai]] enquanto o novo processo é o seu filho. Para o processo pai, a chamada retorna o PID do novo processo, para o processo filho, a chamada retorna 0, assim sendo possível diferenciar qual processo é o novo.

```c
// <unistd.h>
pid_t fork(void); 
```

```c
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
  printf("Olá mundo\n");

  int PID = fork();

  if (PID == 0) {
    printf("Processo filho\n");
    for (int i = 0; i < 10; ++i) {
      sleep(1);
      printf("Processo filho trabalhando... (%d/10)\n",i);
    }
  } else {
    printf("Processo pai\n");
    waitpid(PID, NULL, 0);
    printf("Processo filho morreu, processo pai encerrando\n");
  }

  return 0;
}
```
## Chamadas `wait` e `waitpid`

Chamadas bloqueantes que aguardam alguma ação de um [[Processo#Árvore de Processos|processo filho]], a chamada `wait` aguarda que algum processo filho mande algum sinal ou evoque a chamada `exit`, enquanto a chamada `waitpid` aguarda que o processo com o PID encerre.

```c
// <sys/wait.h>
pid_t wait(int *_Nullable wstatus);
// retorna o PID do processo que terminou
// wstatus: armazena informações que podem ser interpretadas com macros
// pode ser NULL

pid_t waitpid(pid_t pid, int *_Nullable wstatus, int options);
// retorna o PID do processo que terminou
// options: possibilita algumas modificações no comportamento da função
// 0 é o comportamento padrão
```

## Chamadas `read` e `write`

Provém leitura e escrita à memória permanente do computador no sistema de arquivos do sistema operacional.

```c
// <unistd.h>
ssize_t read(int fd, void buf[count], size_t count);
```