---
authors: Júlio César
tags:
  - incompleto
  - matemática
  - lógica
aliases:
  - cqc
  - sistema cqc
---
## Definição

O cálculo de predicados de primeira ordem é uma extensão da [[linguagem proposicional]], capaz de atribuir preposições a indivíduos.

## Sintaxe

Todas as regras e símbolos da [[linguagem proposicional]] (átomos e operações) valem, além dessas, temos:
- As constantes individuais, que designam indivíduos na língua, estas normalmente são notadas por $\large a, b, ..., t, a_1, b_1, ...$ (pois letras a partir de $\large p$ já usamos para preposições).
- As variáveis individuais, que não designam indivíduos específicos, mas permitem que façamos generalizações no cálculo, em vez de se referirem a algum algo elas se referem a algum domínio de possíveis constantes individuais, estas são designadas por $\large u,v,w,x,y,z,u_1,v_1,...$, gramaticamente se comportam da mesma forma que constantes individuais.
- Predicados, que são sentenças declarativas em relação a algum aspecto de uma constante / variável individual. São denominadas $\large A, B, ..., T, A_1, B_1, ...$

Temos que a relação de uma constante individual e um predicado unário é dada como
$$\Large Pc$$
$\large P$ um predicado qualquer e $\large c$ uma constante individual qualquer, uma união de constantes individuais e um predicado são essencialmente [[Linguagem Proposicional#Fórmulas|uma fórmula proposicional]]. Fórmulas atômicas podem ser representada por um predicado sem constantes (de grau 0). Essas expressões são denominadas fórmulas. Fórmulas podem ter várias constantes individuais, por exemplo $\large Fxy$.

## Quantificadores

São operadores que visam afirmar alguma propriedade em torno de algum universo, são quantificadores $\large \forall$ (quantificador universal, "para todo") e $\large \exists$ (quantificador existencial, "há algum"). Eles possuem um escopo interno que abrange as variáveis que operam, por exemplo:
$$\begin{gather}
\text{"Alguém é um filósofo"} \longrightarrow \large \exists x Fx \\ \\
\text{"Todo filósofo é humano"} \longrightarrow \large \forall x  Fx \to Hx
\end{gather}
$$
Existe uma relação inversa entre os quantificadores, onde afirmar que existe algum objeto cumpre alguma qualidade é a mesma coisa que negar que todo objeto não tem aquela qualidade. 
$$\large
\begin{gather}
\forall x Px \vdash \lnot \exists x \lnot Px \\
\exists x Px \vdash \lnot \forall x \lnot Px
\end{gather}$$
## Operador de Igualidade

O operador de igualdade é um predicado binário que relaciona algum individuo com ele mesmo e nenhum outro, ou seja, só valora positivamente quando ambos seus indivíduos são o mesmo. A notação do predicado é diferente dos demais, tipicamente colocamos cada individuo de um lado
$$\Large{ =_{xy} \over x=y}$$
Embora em tese seja um predicado como qualquer outro, o fato de conhecermos a propriedade da identidade possibilita fazer [[Tablôs Semânticos#CQC|deduções]] sobre o comportamento deste predicado, notoriamente que para um grupo de fórmulas $\large A_x, B_y, x=y$ então $\large B_x$.
