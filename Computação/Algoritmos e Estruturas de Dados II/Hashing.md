---
tags:
  - computação
  - algoritmo
  - incompleto
---
## Definição

É um algoritmo de pesquisa em tabelas que possui acesso rápido em função do tempo, embora sua [[Complexidade Assintótica|complexidade]] em função do tempo seja $\large O(n)$, sua complexidade média é $\large O(1)$.

De forma geral, a pesquisa em uma tabela de dados é uma [[função]] de tipo $\large h:N\to M$, onde $\large N$ é o espaço de chaves e $\large M$ o espaço de índices, de forma geral $\large h$ mapeia uma determinada chave a um determinado índice que representa a posição do dado requisitado na tabela de dados, $\large h$ é dita uma função de dispersão.

Uma função de dispersão deve idealmente ser [[Função#Injetividade e Sobrejetividade|injetora]], se $\large h$ é [[Função#Injetividade e Sobrejetividade|bijetora]], então o caso trivial é que $\large h(x) =x$. Todavia para a maioria dos casos reais, $\large |N| \gt \large |M|$, o que inviabiliza a função ser injetora.