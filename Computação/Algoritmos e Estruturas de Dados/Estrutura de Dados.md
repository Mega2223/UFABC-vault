---
tags:
  - computação
  - incompleto
---
## Definição

Estruturas de dados são abstrações feitas por línguas de programação para representar tipos relacionais de dados (que, na memória, tipicamente são sequências binárias). As estruturas transcendem as primitivas fornecidas por uma linguagem para permitir que sejam programados padrões mais avançados de manipulação de dados. [[Structs]] de [[C]], por exemplo, são sequências binárias armazenadas continuamente na memória do programa, cujo acesso as variáveis internas é rápido pois estes sempre tem tamanho fixo.
## Implementações ad-hoc

Implementações de estruturas ad-hoc são caracterizadas por serem altamente especificadas, são criadas para resolver somente um tipo de problema, tendem a ter um overhead baixo em troca de não poderem ser usadas em outros contextos. Esse tipo de implementação efetivamente não pode ser usado entre projetos por conta da sua alta especifidade.

## Implementações baseadas em abstração

Implementações baseadas a abstração tendem a abordar vários possíveis casos de uso de uma determinada estrutura de dados, aumentando o overhead mas também a facilidade de manutenção do código. É usado em bibliotecas de alto nível que tipicamente desconhecem m para quais fins elas serão usadas por quem referencia a API.