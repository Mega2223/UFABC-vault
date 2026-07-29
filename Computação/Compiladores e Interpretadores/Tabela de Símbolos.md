---
tags:
  - computação
  - incompleto
---
## Definição

A tabela de símbolos é uma tabela gerada pelo [[Análise Sintática|analisador sintático]] que guarda informações de todos os nomes declarados em um determinado programa, durante a compilação a tabela é pesquisada pelo compilador quando este nome é encontrado no texto fonte.

Uma tabela de símbolos precisa implementar operações de inserção, remoção e busca em um tempo razoável, assim elas normalmente são implementadas como [[Hashing|tabelas de hash]]. [[Árvore Binária de Busca|ABBs]] e [[|AVLs]] também podem implementar tabelas de símbolos, mas a operação de remoção em particular pode ser bem complexa.

## Escopo

Toda variável possuí um escopo válido, podendo múltiplas variáveis de mesmo nome existirem em um programa em escopos diferentes, cabe ao analisador sintático reconhecer o escopo de cada variável e a identificar unicamente no programa.