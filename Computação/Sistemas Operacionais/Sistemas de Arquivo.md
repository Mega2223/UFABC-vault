---
tags:
  - incompleto
authors: Júlio César
---
## Definição

O sistema de arquivos é uma forma de ocultar o [[Gerenciamento de Disco|espaço físico do disco]] e representar arquivos do sistema, onde em vez de uma aplicação referenciar o endereço físico de um arquivo ela referencia um endereço do sistema, que tende a ser mais gerenciável. Tipicamente sistemas implementam um formato hierárquico por meio de pastas.

## Pseudoarquivos

São arquivos fornecidos pelo [[sistema operacional]] que não são arquivos no sentido físico, mas que executam alguma função do sistema operacional ao serem lidos/escrito, como o `/dev/random` do Linux.