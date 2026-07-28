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

## Derivação

Uma análise sintática deve, por meio da derivação de uma cadeia, conferir se as sentenças pertencem a gramática da língua, ou seja, são geradas pela gramática. De forma geral a análise sintática pode fazer isso a partir da raiz da árvore de derivação (_top-down_) ou a partir das folhas (_bottom-up_).
### Análise Sintática Descendente
Consiste em uma derivação _top-down_ da árvore de derivação, o algoritmo gera uma árvore cuja a raiz é o símbolo inicial da gramática e tenta chegar as folhas de tal forma que a árvore de derivação gera a nossa cadeia. Uma análise sintática descendente (ASD) pode ser com retrocesso, preditiva recursiva e preditiva não-recursiva.
### ASD Com Retrocesso
É um [[#Análise Sintática Descendente|ASD]] baseado em [[Recursão#Backtracking|backtracking]], o algoritmo começa no topo da árvore, e em cada estado atual ele escolhe uma regra e aplica, criando uma subárvore, caso essa subárvore falhe em algum ponto, ela volta e cria uma nova subárvore com a próxima regra.

O algoritmo falha quando todas as subárvores da raiz foram esgotadas de regras, efetivamente esse algoritmo circula por todas possíveis cadeias até encontrar a correta. 

Uma gramática recursiva a esquerda não pode ser executada com o ASD Com Retrocesso, caso contrário o mesmo entra em um loop infinito.
## Gramáticas Livres de Contexto

O conjunto de formas de sentenças válidas em uma gramática é dito uma Gramática Livre Livre Contexto / _Context Free Grammar (CFG)_. Uma CFG nem sempre pode ser representada em termos de uma expressão regular pois ela pode exigir padrões de [[Recursão|recursão]], então costumam estas ser mais abrangentes que _Regexps_.

De forma geral uma CFG é uma gramática onde todas as regras de produção são da forma
$$\large A \to \alpha$$
- $\large A$ um símbolo não-terminal.
- $\large \alpha$ uma cadeia terminal ou não terminal.

Uma gramática que não cumpre essa regra é uma Gramática Sensível ao Contexto / _Context-Sensitive Grammar_ (CSG), que é uma gramática onde ambos os lados de uma regra de produção podem ser cercados por um contexto de símbolo terminal ou não terminal, uma regra do tipo $\large \beta A \to \alpha$ onde $\large \beta$ é um símbolo terminal já desqualifica nossa gramática de ser uma CFG. CFGs podem ser interpretadas de diversas formas e apresentar muitas ambiguidades.

Gramáticas podem ser classificadas de acordo com como elas podem analisadas, uma gramática de tipo $\large\textbf{LL}(k)$ é uma gramatica que pode ser parseada por um analisador sintático $\large\textbf{LL}$, que escaneia os símbolos da sentença da esquerda para a direita e produz uma [[Gramática#Derivação de Sentenças|derivação mais para a esquerda]] que precisa examinar no máximo as próximas $\large k$ tokens da entrada. Uma gramática $\large\textbf{LR}(k)$ é uma gramática que escaneia símbolos da esquerda para a direita mas que procura uma derivação mais para a direita examinando no máximo os próximos $\large k$ tokens de entrada.

Dois subconjuntos relevantes de gramáticas CFG são as gramáticas de tipo $\large\textbf{LL}(1)$ e $\large \textbf{LR}(1)$.
## Gramáticas $\large\textbf{LL}(1)$

Gramáticas de tipo $\large\textbf{LL}(1)$ são gramáticas [[#Gramáticas Livres de Contexto|de livre contexto]] não-recursivas na esquerda onde um _parser_ só necessita de no máximo um token a frente para aplicar uma regra de produção.  De forma geral, uma gramática não-recursiva na esquerda é uma gramática onde não existem regras $\large A,B$ tais que
$$\large \begin{gather}
A \to B \beta  & B \Rightarrow A \gamma
\end{gather}$$
$\large\textbf{LL}(1)$ gramáticas que podem ser valoradas somente em termo da regra atual e a próxima _token_ em um fluxo de caracteres Uma gramática $\large\textbf{LL}(1)$ pode ser interpretada com um Analisador Sintático Preditivo, cujo principal diferencial é que ele não requer [[Recursão#Backtracking|backtracking]] em sua implementação.
### Conjuntos $\textbf{FIRST}$ e $\textbf{FOLLOW}$


## Gramáticas LR(1)

// TODO

## Árvore de Derivação