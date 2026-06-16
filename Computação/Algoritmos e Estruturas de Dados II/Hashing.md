---
tags:
  - computação
  - algoritmo
  - incompleto
---
## Definição

O hashing é a prática de mapear uma lista indexável em chaves, aplicando um [[Função|mapa]] do tipo $\large h: N \to M$, onde $\large N$ é o espaço de chaves e $\large M$ o espaço de índices, $\large h$ é dito uma função de dispersão. De forma geral, o dicionário opera a partir das operações  $\large \mathbf {Insert}$,  $\large \mathbf {Search}$ e  $\large \mathbf {Delete}$.

Uma função de dispersão deve idealmente ser [[Função#Injetividade e Sobrejetividade|injetora]], se $\large h$ é [[Função#Injetividade e Sobrejetividade|bijetora]], o caso trivial é que $\large h(x) =x$. Todavia para a maioria dos casos reais, $\large |N| \gg \large |M|$, considerando uma lista indexável, em casos onde o número de espaços ocupados é muito superior ao número de possíveis chaves, a alocação da tabela pode demandar muito espaço.

## Hash Table
