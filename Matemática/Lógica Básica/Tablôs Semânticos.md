---
tags:
  - lógica
  - incompleto
---
## Definição

É um [[sistema dedutivo]] que serve para provar definidamente se uma fórmula é ou não é consequência lógica de outras fórmulas. Envolve presumir que as hipóteses sejam verdadeiras e as conclusões falsas e verificar se essa premissa é contraditória.

De forma geral, o sistema semântico parte da premissa que, seja $\large \Gamma$ um conjunto de fórmulas, para qualquer $\large \Gamma \vDash A, \lnot\Gamma \cup A$ não é satisfazível. 

## Algoritmo

### Ramo Fechado
Ramo onde é encontrada uma contradição do tipo $\large F A$ e $\large T A$, se todos os ramos estão fechados o tablô é dito fechado. Um tablô fechado é prova conclusiva de que $\large \Gamma \vDash_\text{TA} A$.
### Ramo Saturado
Ramo que não pode ser expandido, um tablô com todos os ramos saturados é dito saturado.
### Ramo Aberto
Ramo que não apresenta contradição do tipo $\large T A$ e $\large FA$, um tablô com pelo menos um ramo aberto é dito aberto. Um tablô saturado e aberto dá um contraexemplo à tese de que $\large \Gamma \vDash A$.
### Ramo Completo
Ramo fechado ou saturado, um tablô com todos os ramos completos é dito completo.
## Regras de Expansão
### Língua Proposicional Básica
Na [[linguagem proposicional]], cada operador gera uma nova fórmula até chegarmos nas fórmulas atômicas, o operador atômico de negação simplesmente inverte o sinal da fórmula:

$$\large \begin{gather}
T \lnot A \over FA && F \lnot A \over T A
\end{gather}$$

Para fórmulas binárias, estas podem gerar outras fórmulas em sequência (tipo $\large \alpha$) ou bifurcar (tipo $\large \beta$), as regras de expansão para as fórmulas proposicionais são:

$$\large
\begin{gather}
\alpha & \alpha_1 \ & \alpha_2 &&& \beta & \beta_1 & \beta_1 \\
T A \land B & TA & TB &&& F A \land B & FA & FB \\  
F A \lor B & FA & FB &&& T A  \lor  B & TA & TB\\
F A \to B & TA & FB &&&  T A  \to   B & FA & TB\\
\end{gather}$$

Expansões de ramo único devem ser priorizadas para minimizar a complexidade do tablô.
### CQC
No sistema do [[Cálculo de Predicados|CQC]] temos 3 operadores adicionais com regras de expansão mais complexas, que envolvem inserir sujeitos ao ramo por meio da [[Linguagem Proposicional#Substituição|substituição]], seja $\large \omega$ um sujeito qualquer, $\large \delta$ um sujeito que ainda não apareceu no ramo e $\large A$ uma fórmula do CQC em que $\large x$ ocorre, temos que as substituições de quantificadores de dá por 

$$\large
\begin{gather}
T\forall x A_x \over TA[x/\omega] &&  \large \checkmark{T \exists x A_x \over T A[ x/\delta] }\end{gather}$$

Ainda para as fórmulas do CQC marcadas com $\large F$, podemos fazer a substituição para uma das fórmulas acima

$$\large
\begin{gather}
F \forall x A_ x \over T \exists x \lnot A_x && F \exists x A_x \over T \forall x \lnot A_x
\end{gather}$$

Para uma expansão existencial de tipo $\large T \forall x A_x$, nunca a marcamos com $\large \checkmark$ pois sempre vão existir sujeitos para expandir, esse qualificador aceita sujeitos que já estão no tablô e aqueles que não estão. Para um existencial positivo, só colocamos um sujeito que ainda não está no tablô (o nosso hipotético sujeito que vale $\large A_x$) e marcamos a fórmula como $\large \checkmark$.

Ainda para o predicado de igualdade, temos que ele funciona a partir de [[Linguagem Proposicional#Substituição|substituições]], que são as mesmas para ambos os casos, seja $\large A$ uma fórmula onde $\large t$ ocorre, temos que

$$\large
\begin{gather}
{{T\ t_1=t_2, A_{t_1} \over T\ A[t_1/t_2]}} &&
{{F\ t_1=t_2, A_{t_1} \over F\ A[t_1/t_2]}} &&
F\ t \neq t \over  \times\end{gather}$$

A igualdade também não é marcada pois o processo pode ser repetido com várias fórmulas $\large A$. 