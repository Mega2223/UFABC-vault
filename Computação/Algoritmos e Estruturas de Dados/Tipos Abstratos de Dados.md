---
tags:
  - computação
  - incompleto
authors: Júlio César
aliases:
  - Estruturas de Dados
---
## Preâmbulo

Estruturas de dados são abstrações feitas por línguas de programação para representar tipos relacionais de dados (que, na memória, tipicamente são sequências binárias). As estruturas transcendem as primitivas fornecidas por uma linguagem para permitir que sejam programados padrões mais avançados de manipulação de dados. [[Structs]] de [[C]], por exemplo, são sequências binárias armazenadas continuamente na memória do programa, cujo acesso as variáveis internas é rápido pois estes sempre tem tamanho fixo.
## Definição

Tipos Abstratos de Dados são abstrações que possuem:
- Um domínio de valores com alguma propriedade em comum.
- Uma interface de possíveis operações sobre esse domínio.

E tipicamente aderem aos paradigmas de:
- Ofuscação: a estrutura de dados em si não é exposta, mas as operações são.
- Abstração de comportamento: a implementação é baseada em promessas, os procedimentos internos da estrutura de dados não é exposta.
- Reusabilidade: a estrutura pode ser usada em várias implementações diferentes.

## Implementações ad-hoc

Implementações de estruturas ad-hoc são caracterizadas por serem altamente especificadas, são criadas para resolver somente um tipo de problema, tendem a ter um overhead baixo em troca de não poderem ser usadas em outros contextos, esse tipo de implementação é dito então ter acoplamento forte. Esse tipo de implementação efetivamente não pode ser usado entre projetos por conta da sua alta especifidade a um único problema em questão.

Quando um framework não deve impor nenhum overhead desnecessário ao usuário (política de zero overhead), implementações ad-hoc visam então minimizar completamente o uso de recursos computacionais para somente o necessário. Tal política é um pilar das implementações de baixo nível, que tem um conhecimento maior do hardware da máquina.
## Implementações baseadas em abstração

Implementações baseadas a abstração tendem a abordar vários possíveis casos de uso de uma determinada estrutura de dados, aumentando o overhead mas também a facilidade de manutenção do código. É usado em bibliotecas de alto nível que tipicamente desconhecem m para quais fins elas serão usadas por quem referencia a API.