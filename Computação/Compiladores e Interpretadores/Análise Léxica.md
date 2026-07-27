---
tags:
  - computação
  - incompleto
---
## Definição

A análise léxica é a primeira etapa na execução de um compilador, é a análise necessária para identificar aspectos da [[gramática]] da língua de programação, o e reconhecimento de _tokens_ da língua.

De forma geral, um analisador léxico lê as palavras de um programa e as separa em _tokens_, um _token_ é um objeto que representa os atributos de determinado trecho de texto, por exemplo, uma declaração

```c
int x = 2;
```

Possui
- Um token de tipo (`int`)
- Um token de identificador (`x`)
- Um token de atribuição (`=`)
- Um token de literal numérico (`2`)
- Um token de fim de sentença (`;`)

Cada _token_ tem um tipo específico o qual o analisador léxico deve identificar, cabe ao [[Análise Sintática|analisador sintático]] combinar os tokens e verificar a coerência das sentenças apresentadas (verificação de sintaxe). De forma geral, o analisador sintático encontra tokens das categorias

- Palavras-chave reservadas pela língua (`int`, `char`, `void`...).
- Comentários.
- Literais de número e texto.
- Identificadores, que representam nomes dado pelo usuário.

Cabe ao analisador léxico então ler os símbolos presentes no texto e retornar os _tokens_ ao analisador sintático, ou ignorar aspectos que são irrelevantes, com comentários, espaços e códigos de nova linha. Sequências de caracteres válidas são especificadas por meio de expressões regulares, por exemplo, um literal de float pode ser expresso por meio da expressão regular

```regex
((\d+(\.\d*)?)|(\.\d+))[fF]?
```
que compila as literais
```d
{0.2, .2f, 1.F, 1F, 3, 3.5f, 2.f, .3, .2f}
```

Como toda expressão regular é um [[Autômato Finito Determinístico|autômato finito determinístico]], a análise sintática deve então encontrar um estado final a partir de um estado inicial com os caracteres encontrados, caso a sequência não acate em um estado terminal, o analisador léxico deve sinalizar um [[#erro léxico]].
## Palavras Reservadas

São sentenças de texto específicas de uma língua, já conhecidas pelo compilador durante todo o tempo de compilação, precisam ser reconhecidas de forma eficiente, idealmente são postas em uma [[Hashing#Hash Table|tabela de hash]] sem colisões. 
## Erro Léxico

Um erro léxico é quando um determinado símbolo não pertence ao conjunto de símbolos terminais da linguagem, de forma que o analisador léxico não possa implicar seu tipo, como por exemplo um número mal formado: `x = 2v1;`.

Erros léxicos podem constituir:
- Identificadores muito longos.
- Identificadores mal-formados.
- String não acabada.
- Comentário não acabado.

Tipicamente um erro léxico fatal deve reportar com base em qual estado ele estava, por exemplo, um erro léxico que está lendo um valor número deve reportar um número mal-formado para o compilador.