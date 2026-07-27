---
tags:
  - algoritmo
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Uma gramática é uma quádrupla do tipo
$$\large G := \langle N, \Sigma, P, S \rangle$$
Onde
- $\large N$ é o [[alfabeto]] de símbolos não terminais da gramática.
- $\large \Sigma$ é o [[alfabeto]] de símbolos terminais da gramática.
- $\large P$ é o conjunto de regras de produção da gramática.
- $\large S$ é o símbolo inicial da gramática.

Toda gramática produz um conjunto de sentenças válidas, que é denominada uma [[#linguagem]], os símbolos válidos da linguagem só podem ser símbolos terminais da gramática, enquanto. Enquanto $\large N, \large \Sigma$ e $\large S$ são conjuntos de símbolos arbitrários (alfabetos), $\large P$ é um conjunto de [[Função|mapas]].
### Comprimento
O comprimento de uma cadeia de símbolos é o número total de símbolos que a compõem.
$$\large ||aaa|| = 3$$
### Divergência
Uma determinada regra de produção de uma gramática pode, por meio do // TODO
## Linguagem

A linguagem é o conjunto de todas as cadeias alcançáveis a partir de uma determinada gramática, uma linguagem pode possuir somente símbolos terminais de sua gramática geradora.
// TODO
## Cabeça

Seja $\large A \in P$ uma regra de produção, a cabeça $\large \beta$, dada por $\large \beta =  \text{head}(A)$, //TODO 