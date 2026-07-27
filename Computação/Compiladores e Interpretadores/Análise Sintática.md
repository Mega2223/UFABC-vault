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

## Gramáticas Livres de Contexto

O conjunto de formas de sentenças válidas em uma gramática é dito uma Gramática Livre Livre Contexto / _Context Free Grammar (CFG)_. Uma CFG nem sempre pode ser representada em termos de uma expressão regular pois ela pode exigir padrões de [[Recursão|recursão]], então costumam estas ser mais abrangentes que _Regexps_.

De forma geral uma CFG é uma gramática onde todas as regras de produção são da forma
$$\large A \to \alpha$$
- $\large A$ um símbolo não-terminal.
- $\large \alpha$ uma cadeia terminal ou não terminal.

Uma gramática que não cumpre essa regra é uma Gramática Sensível ao Contexto / _Context-Sensitive Grammar_ (CSG), que é uma gramática onde ambos os lados de uma regra de produção podem ser cercados por um contexto de símbolo terminal ou não terminal, uma regra do tipo $\large \beta A \to \alpha$ onde $\large \beta$ é um símbolo terminal já desqualifica nossa gramática de ser uma CFG.

CFGs podem ser interpretadas de diversas formas e apresentar muitas ambiguidades, existem dois subconjuntos de gramáticas consideradas CFGs, estas são as gramáticas de tipo LL(1) e LR(1).
### Gramáticas LL(1)
Gramáticas de tipo LL(1) são gramáticas que podem ser valoradas somente em termo da regra atual e a próxima _token_ em um fluxo de caracteres Uma gramática LL(1) pode ser interpretada com um Analisador Sintático Preditivo, cujo principal diferencial é que ele não requer [[Recursão#Backtracking|backtracking]] em sua implementação.

### Gramáticas LR(1)

## Árvore de Derivação