## Definição

Uma adaptação do paradigma de [[Programação Orientada a Objetos]] para a [[Programação Funcional]], visa suprir a necessidade de estruturas de dados complexas sem a quebra do paradigma funcional.

Uma estrutura de dados funcional é aquela que obedece os paradigmas da programação funcional, em geral tem as características 
- Imutabilidade: Uma estrutura de dados funcionais possui somente valores imutáveis, operações de alteração geram um novo objeto.
- Persistência: Estruturas podem manter versões anteriores para acesso barato a estados anteriores do objeto.
- Compartilhamento Estrutural: Fazer uma cópia de memória a cada operação é um processo caro, o compartilhamento estrutural visa que somente as alterações de uma operação sejam salvas, e o resto dos dados podem simplesmente apontar para os dados do objeto original.
- Casamento de Padrões: //TODO
- Funções de Ordem Superior: Estruturas de dados funcionais utilizam de funções de ordem superior em seus métodos.

## Estrutura de dados puramente funcional

É uma estrutura que, além de garantir [[#Definição|os padrões de estrutura funcional,]] também deve ser **referencialmente transparente**, ou seja, não gera qualquer efeito colateral e deve ser completamente determinística (duas operações com os mesmos parâmetros devem ter o mesmo resultado).

## Lista Recursiva

A lista recursiva é uma implementação [[#Estrutura de dados puramente funcional|puramente funcional]] de uma lista ordenada, similar a uma [[Lista#Lista Ligada|lista ligada]], mas é mais atrelada a uma definição matemática recursiva

$$\large L = \begin{cases}
\text{nil} && \text{se não houverem elementos} \\
\text{head :: tail} && \text{se houverem elementos}
\end{cases}$$

Onde head é o primeiro elemento da lista e tail uma lista contendo os elementos restantes.
