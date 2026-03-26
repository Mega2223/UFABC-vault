---
tags:
  - computação
  - incompleto
authors: Júlio César
aliases:
  - Register File
---
## Definição

Um banco de registradores (_register file_) representa um conjunto endereçável de [[Registrador|registradores]], isso é, um banco consiste de um grupo de registradores em sequência onde ele armazena uma palavra binária como entrada e a replica como saída.

Tipicamente, um banco de registradores deve receber algum endereço de registrador (que é [[Codificação Digital|decodificado]] internamente, ou seja, um banco com $\large m$ endereços comporta $\large 2^m$ registradores), alguma palavra de entrada e alguma palavra de saída, além de variáveis de controle.

Todavia na maioria dos modelos de registrador incluem dois endereços de saída, como é o caso do banco de registradores do [[datapath]] que precisa tirar duas palavras simultaneamente para fazer certas operações na [[Unidade Lógica Aritmética|ULA]].

