---
tags:
  - algoritmo
  - computação
  - incompleto
---
## Definição

Um autômato finito determinístico (AFD) é uma quíntupla $\large (\Sigma, S, s_0, \delta, F)$, onde
- $\large \Sigma$ é o [[alfabeto]] de entrada.
- $\large S$ é um conjunto finito de estados.
- $\large s_0 \in S$ é o estado inicial.
- $\large \delta : S \times \Sigma \to S$ é a [[função]] de transição de estados.
- $\large F \subseteq S$ é o conjunto de estados finais.

De forma geral, para cada estado, dado um símbolo do alfabeto $\large S$, a função $\large \delta$ vai determinar qual o próximo estado. Um autômato finito cuja a função de transição pode acatar em mais de um estado para a mesma tupla símbolo-estado é tido um autônomo finito não determinístico, nesse caso a função retorna o grupo de estados possíveis a partir da tupla, $\large \delta : S \times \Sigma \to \mathcal P (S)$.

Um AFD possuí um conjunto de sequências válidas, isso é, um grupo ordenado de membros do alfabeto tal que sua entrada resulta em um estado final no AFD.
### Tabela de Transição
Uma tabela de transição $\large T$ é uma representação de um AFD, é uma matriz onde cada coluna é respectiva a um símbolo de $\large \Sigma$ e cada fileira um estado de $\large S$, onde os valores são conjuntos dos próximos estados dada a combinação de um estado e um símbolo.

// TODO puxa uns latex ai sla