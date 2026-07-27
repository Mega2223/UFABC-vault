---
tags:
  - computação
  - incompleto
---
## Definição

A análise sintática é a segunda fase da compilação, um analisador sintático, ou _parser_, recebe tokens do [[Análise Léxica|analisador léxico]] e verifica quais cadeias de símbolos são coerentes para a linguagem.

O analisador léxico agrupa tokens válidos e verifica se a ordem é coerente para a língua, por exemplo, para a sentença
```d
int x = 2;
```

O analisador léxico irá apontar que os tokens são das famílias

```
LITERAL_S IDENT_S ATTRIB_S INTEGER_S SEP_S
```

Sendo isso uma sentença coerente, ela passa para a [[Análise Semântica|análise semântica]]. De forma geral o conjunto de tokens válidos para uma determinada língua formam uma [[gramática]], e toda sentença coerente faz parte dessa gramática.

