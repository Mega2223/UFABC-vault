---
tags:
  - algoritmo
  - computação
  - internet
  - incompleto
  - comunicações
  - teoria-de-grafos
---
## Definição

É o roteamento de um pacote para múltiplos remetentes pertencentes a um determinado grupo dentro de uma [[Camada de Rede|rede]]. Em geral visamos minimizar o uso de banda, e de forma ideal queremos que cada pacote só circule uma vez cada nó, e que todo o caminho percorrido seja o caminho ótimo.

Para isso, fazemos uso da [[árvore de amplitude]], quando o pacote chega no primeiro roteador, ele consulta sua árvore de amplitude inteira e poda os nós que não levam a nenhum destinatário, essa nova árvore podada é então usada para o roteamento do pacote.

Se cada roteador tiver conhecimento absoluto da topologia da rede, incluindo quais hosts estão em cada grupo, pode-se podar a árvore do fim ao começo retirando todos os roteadores que não têm rotas úteis.

Usando o algoritmo de [[roteamento por vetor distância]]
// mensagem `PRUNE` todo

Redes baseadas em núcleo 