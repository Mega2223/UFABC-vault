---
tags:
  - computação
  - matemática
---
## Definição

O alfabeto é um conjunto arbitrário de símbolos que formam palavras.
## Palavra

Uma palavra é uma [[Conjunto#Par Ordenado e Sequência Ordenada|sequência ordenada]] de símbolos do alfabeto, o conjunto de todos os resultados de [[#concatenação]] em palavras do alfabeto é denominado Fecho de Kleene, esse conjunto se dá por
$$\large A^* := \{a_1,\dots,a_n | n \in \mathbb N, a_i \in A\}$$
## Concatenação

A concatenação é o processo de juntar duas palavras, de forma geral, sejam $\large \alpha = \{\alpha_1,\dots,\alpha_n\}$, $\large \epsilon = \{\epsilon_1,\dots,\epsilon_m\}$, a palavra concatenada $\large \alpha \epsilon$ se dá por

$$\large \alpha \epsilon := \{\alpha_1,\dots,\alpha_n, \epsilon_1,\dots,\epsilon_n\} $$
Sejam $\large X, Y$ alfabetos, a concatenação entre os alfabetos se dá por

$$\large XY := \{\alpha \beta | \alpha \in X, \beta \in Y\}$$

Que é o conjunto de todas as palavras que começam com um elemento de $\large X$ e terminam com um elemento de $\large Y$.
## Expressões Regulares

 Uma expressão regular é um conjunto de palavras em um determinado contexto, de forma geral:
- $\large \epsilon$ age como um conjunto que só contém a si mesmo.
- Sejam $\large r,s$ quaisquer expressões regulares, $\large rs$ é a expressão regular do conjunto de palavras que vem da concatenação de $\large r$ e $\large s$.
- $\large r*$ é o conjunto de zero ou mais concatenações de $\large r$ com ele mesmo.
- $\large r|s$ é o conjunto da [[Conjunto#União e Intersecção|união]] de $\large r$ e de $\large s$.

Uma expressão regular representa uma [[Gramática|gramática]] e forma uma [[Gramática#Linguagem|linguagem]].
