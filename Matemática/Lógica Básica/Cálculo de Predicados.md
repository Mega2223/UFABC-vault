---
authors: Júlio César
tags:
  - incompleto
  - matemática
  - lógica
---
## Definição

O cálculo de predicados de primeira ordem é uma extensão da [[linguagem proposicional]], capaz de atribuir preposições a indivíduos.

## Sintaxe

Todas as regras e símbolos da [[linguagem proposicional]] (átomos e operações) valem, além dessas, temos:
- As constantes individuais, que designam indivíduos na língua, estas normalmente são notadas por $\large a, b, ..., t, a_1, b_1, ...$ (pois letras a partir de $\large p$ já usamos para preposições).
- As variáveis individuais, que não designam indivíduos específicos, mas permitem que façamos generalizações no cálculo, em vez de se referirem a algum algo elas se referem a algum domínio de possíveis constantes individuais, estas são designadas por $\large u,v,w,x,y,z,u_1,v_1,...$, gramaticamente se comportam da mesma forma que constantes individuais.
- Predicados unários (de primeiro grau), que são sentenças declarativas em relação a algum aspecto de uma constante / variável individual. São denominadas $A, B, ..., T, A_1, B_1, ...$

Temos que a relação de uma constante individual e um predicado unário é dada como
$$\Large Pc$$
$P$ um predicado qualquer e $c$ uma constante individual qualquer, uma união de constantes individuais e um predicado são essencialmente [[Linguagem Proposicional#Fórmulas|uma fórmula proposicional]]. Essas expressões são denominadas fórmulas. Fórmulas podem ter várias constantes individuais, por exemplo $\large Fxy$.

## Quantificadores

São operadores que visam afirmar alguma propriedade em torno de algum universo, são quantificadores $\large \forall$ (quantificador universal, "para todo") e $\large \exists$ (quantificador existencial, "há algum"). Eles possuem um escopo interno que abrange as variáveis que operam, por exemplo:
$$\begin{gather}
\text{"Alguém é um filósofo"} \longrightarrow \large \exists x Fx
\end{gather}
$$
