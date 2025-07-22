---
tags:
  - computação
  - comunicações
  - algoritmo
authors: Júlio César
---
## Definição

Em [[Sistema Distribuído|sistemas distribuídos]] pode ser necessária a eleição de algum determinado coordenador do sistema, que possui alguma função especial. Quando não há um sistema específico para essa função, o coordenador deve ser decidido por meio de algum algoritmo do sistema.

Para qualquer algoritmo de eleição é necessário que os processos sejam distinguíveis e comparáveis uns aos outros, para isso pode-se presumir que dada processo $P$ tem algum identificador único $\text{id}(P)$ que pode ser usado pelos algoritmos de decisão. Tipicamente os algoritmos procuram a aplicação ativa com o maior identificador dentro do sistema. 
## Algoritmo de Valentão / Bully Algorithm

Dado um sistema de $N$ processos $\{P_0,P_1,\dots,P_{N-1}\}$, $\text{id}(P_k)=k$, quando um determinado processo $P_k$ percebe que o coordenador não está respondendo, ele convoca uma eleição.

Na eleição, $P_k$ manda uma mensagem de eleição para todos os processos de id maior, se nenhum deles responde, $P_k$ declara a todos os processos que ele é o novo coordenador.

Se algum processo recebe a mensagem de eleição, ele responde $P_k$. $P_k$ então para a eleição e o processo mais significativo convoca uma nova eleição.

## Algoritmo em Anel / Ring Algorithm

Quando os processos estão organizados em um anel lógico, onde cada um conhece seu sucessor, um determinado processo, ao perceber que o coordenador não responde, convoca uma eleição.

Na eleição, o processo $P_k$ manda uma mensagem de eleição para seu sucessor (se o sucessor estiver inativo, o sucessor seguinte até encontrar um host ativo). Nessa mensagem ele manda seu próprio identificador.

Conforme a mensagem circula, quando algum processo recebe a mensagem de eleição, ele repassa a mensagem, acrescentando seu próprio identificador junto a mensagem.

Após a mensagem ser repassada por todo anel, o processo $P_k$ recebe a mensagem de eleição com todos os ids de processos ativos, $P_k$ então declara qual processo ganhou a eleição e manda a mensagem para os demais processos (Tipicamente com a lista de todos os processos ativos).

Caso duas eleições em anel corram em paralelo por acaso, ambas irão convergir num mesmo coordenador.

