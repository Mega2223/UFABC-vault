---
tags:
  - computação
  - algoritmo
  - incompleto
---
## Definição

O hashing é a prática de mapear uma lista indexável em um grupo de chaves, aplicando um [[Função|mapa]] do tipo $\large h: U \to K$, onde $\large U$ é o espaço de possíveis chaves e $\large K$ o espaço de índices em uma tabela, $\large h$ é dito uma função de dispersão. De forma geral, o dicionário opera a partir das operações  $\large \mathbf {Insert}$,  $\large \mathbf {Search}$ e  $\large \mathbf {Delete}$.

## Tabela de Endereçamento Direto

Uma função de dispersão deve idealmente ser [[Função#Injetividade e Sobrejetividade|injetora]], se $\large h$ é [[Função#Injetividade e Sobrejetividade|bijetora]], o caso trivial é que $\large h(k) = k$, para uma tabela de valores $\large T$, temos que a chave $\large k$ se refere ao elemento $\large x= T[k]$, na forma de uma uma [[Lista em Array|array list]]. A tabela de endereçamento direto implementa os procedimentos da forma:
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
Onde todas as operações apresentam [[Complexidade Assintótica|complexidade de tempo]] $\large O(1)$, todavia a complexidade de espaço dessa tabela é $\large O(|U|)$, como para a maioria dos casos reais, $\large |U| \gg \large |K|$, em casos onde o número de possíveis chaves é muito superior ao tamanho do conjunto de chaves, a alocação da tabela demanda muito espaço desnecessário.
## Hash Table

Uma _hash table_, ou tabela de dispersão, é uma tabela de valores que implementa uma função hash / _hash function_, de forma geral, uma _hash table_ $\large T$ possui um tamanho na ordem $\large \Theta (|K|)$, o custo de acesso para o caso médio é $\large O(1)$, mas para o pior caso é $\large O(n)$ (quando fazemos o endereçamento direto). Dizemos que $\large h(k)$ é o valor-hash da chave $\large k$, de forma geral o $\large x$ que procuramos é o objeto $\large T[h(k)]$.

$$\large \begin{gather}
 h: U \to K  & & K = \{ 0, 1, \dots, m-1 \}
\end{gather}$$

## Colisão de Chaves
Em alguns casos, $\large h$ não é [[Função#Injetividade e Sobrejetividade|injetora]] no nosso conjunto de índices, como $\large U \gt K$, sempre existem duas chaves $\large k_1, k_2 \in U$ onde $\large h(k_1) = h(k_2)$ para algum $\large k_1 \ne k_2$, se ambas essas chaves estão sendo usadas dizemos que há uma colisão de chaves, é necessário um algoritmo que possa diferenciar o objeto em $\large k_1$ do objeto em $\large k_2$. 

Como colisões implicam em um aumento de uso computacional, visamos sempre minimizar colisões na função de hash por meio de manter uma distribuição aleatória de membros de $\large U$ para índices em $\large K$, mantendo uma simetria entre o número de colisões em cada índice.
### Resolução por Encadeamento
Em uma resolução por encadeamento, em vez de $\large T[h(k)]$ armazenar um objeto, ele armazena uma [[Lista Ligada|lista ligada]] de todos os objetos que convergem nessa localização, após a execução da função de hash, deve-se fazer uma busca dentro da lista ligada que está no índice $\large h(k)$.

```pseudo
\begin{algorithm}
\caption{Chained Hash Table}
\begin{algorithmic}
\Procedure{Insert}{$T,x$}
\State {$T(h(x\text{.key}))\text{.insert}(x)$}
\EndProcedure
\Procedure{Delete}{$T,x$}
\State {$T[h(x\text{.key})]\text{.remove}(x)$}
\EndProcedure   
\Procedure{Get}{$T,k$}
\Return $T[h(x\text{.key})]\text{.find}(x)$
\EndProcedure
\end{algorithmic}
\end{algorithm}
```

Para inserção, ela é $\large O(1)$ presumindo que saibamos que $\large x$ não está na tabela, caso contrário é necessário verificar se $\large x$ já existe na tabela por meio de uma pesquisa.

No pior caso, todos os elementos alocados estão no mesmo índice, forçando todas as buscas a serem no mínimo $\large O(n)$, o caso médio depende da distribuição de elementos entre índices, idealmente a tabela de hash possui uma distribuição completamente simétrica de chaves entre seus índices.

Dada uma hash table encadeada, com $\large m$ _slots_ e $\large n$ elementos, definimos um fator de carregamento $\large \alpha = n / m$, que nos diz o número médio de elementos em cada _slot_. 

Uma busca de um elemento que não está em $\large T$ tem complexidade de tempo média de $\large \Theta (1 +\alpha)$ quando as chaves são uniformemente distribuídas em $\large T$, ainda, o caso médio de busca para um elemento que está em $\large T$ também é da ordem $\large \Theta (1 + \alpha)$[^1].

Se o número de elementos é proporcional ao número de slots, $\large \alpha = n/m \in O(1)$, e a pesquisa tem complexidade constante.

## Funções Hash

Uma função hash ideal é uma função onde a probabilidade de uma chave aleatória convergir em um determinado índice é a mesma de todos os outros índices, todavia isso depende da distribuição das chaves que serão usadas, que normalmente são desconhecidas na elaboração da função, funções de hashing visam então aumentar a aleatoriedade entre as chaves para se aproximar do caso ideal.

Quando sabe-se a distribuição das chaves, pode-se achar uma função de hashing que é ideal para o caso, por exemplo, se as chaves são números uniformemente distribuídos no intervalo $\large [0,1]$, a função $\large h(k) = \lfloor k m \rfloor$ é completamente uniforme.

### Hashing por Divisão
A função de hashing por divisão é uma função que interpreta o espaço das chaves como o conjunto dos naturais $\large U = \mathbb N = \{0,1,\dots\}$, para um número $\large k$ de slots, a função se dá por
$$\large h(k) := {k \text{ mod } m}$$

### Hashing por Multiplicação
A função de hashing por multiplicação funciona presumindo que o universo de chaves é o conjunto dos naturais, a função é definida a partir de uma constante $\large A \in (0,1)$.
$$\large h(k) := \lfloor m(k A \text{ mod } 1) \rfloor$$
Ou seja, o valor é o _floor_ do lado decimal de $\large kA$.

### Hashing Universal

//TODO


[^1]: Não vou provar isso kkkkkkk, veja o Cormen.
