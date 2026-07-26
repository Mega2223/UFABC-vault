---
tags:
  - computação
  - algoritmo
  - incompleto
---
## Definição

O hashing é a prática de mapear uma lista indexável em um grupo de chaves, aplicando um [[Função|mapa]] do tipo $\large h: N \to M$, onde $\large N$ é o espaço de chaves e $\large M$ o espaço de índices, $\large h$ é dito uma função de dispersão. De forma geral, o dicionário opera a partir das operações  $\large \mathbf {Insert}$,  $\large \mathbf {Search}$ e  $\large \mathbf {Delete}$.

## Tabela de Endereçamento Direto

Uma função de dispersão deve idealmente ser [[Função#Injetividade e Sobrejetividade|injetora]], se $\large h$ é [[Função#Injetividade e Sobrejetividade|bijetora]], o caso trivial é que $\large h(x) = x$, para uma tabela de valores $\large T$, temos que a chave $\large x$ se refere ao elemento $\large T[x]$, na forma de uma uma [[Lista em Array|array list]], a tabela de endereçamento direto implementa os procedimentos da forma:
```pseudo
\begin{algorithm}
\caption{Direct-Address Table}
\begin{algorithmic}
\Procedure{Insert}{$T,x$}
\State {$T[x.\text{key}] \leftarrow x$}
\EndProcedure
\Procedure{Delete}{$T,x$}
\State {$T[x.\text{key}] \leftarrow \text{NIL}$}
\EndProcedure   
\Procedure{Get}{$T,k$}
\Return $T[k]$
\EndProcedure
\end{algorithmic}
\end{algorithm}
```
Onde todas as operações apresentam [[Complexidade Assintótica|complexidade de tempo]] $\large O(1)$, todavia a complexidade de espaço dessa tabla é $\large O(|N|)$, como para a maioria dos casos reais, $\large |N| \gg \large |M|$, em casos onde o número de possíveis chaves é muito superior ao tamanho do conjunto de chaves, a alocação da tabela demanda muito espaço desnecessário.
## Hash Table


