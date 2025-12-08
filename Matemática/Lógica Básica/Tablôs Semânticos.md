---
tags:
  - lógica
  - incompleto
---
## Definição

É um [[sistema dedutivo]] que serve para provar definidamente se uma fórmula é ou não é consequência lógica de outras fórmulas. Envolve presumir que as hipóteses sejam verdadeiras e as conclusões falsas e verificar se essa premissa é contraditória.

De forma geral, o sistema semântico parte da premissa que, seja $\large \Gamma$ um conjunto de fórmulas, para qualquer $\large \Gamma \vDash \alpha, \Gamma \cup \alpha$ não é satisfazível. 

## Algoritmo


### Ramo Fechado
Ramo onde é encontrada uma contradição do tipo $\large F A$ e $\large T A$, se todos os ramos estão fechados o tablô é dito fechado.
### Ramo Aberto
Ramo que não apresenta contradição do tipo $\large T A$ e $\large FA$, um tablô com pelo menos um ramo aberto é dito aberto.
### Ramo Saturado
Ramo que não pode ser expandido, um tablô com todos os ramos saturados é dito saturado.
### Ramo Completo
Ramo fechado ou saturado, um tablô com todos os ramos completos é dito completo.
## Regras de Expansão
### Língua Proposicional Básica
Na [[linguagem proposicional]], cada operador gera uma nova fórmula até chegarmos nas fórmulas atômicas, o operador atômico de negação simplesmente inverte o sinal da fórmula:

$$\large \begin{gather}
T \lnot A \over FA && F \lnot A \over T A
\end{gather}$$

Para fórmulas binárias, estas podem gerar outras fórmulas (tipo $\large \alpha$) ou bifurcar (tipo $\large \beta$), as regras de expansão para as fórmulas proposicionais são:

$$\large
\begin{gather}
\alpha & \alpha_1 \ & \alpha_2 &&& \beta & \beta_1 & \beta_1 \\
T A \land B & TA & TB &&& F A \land B & FA & FB \\  
F A \lor B & FA & FB &&& T A  \lor  B & TA & TB\\
F A \to B & TA & FB &&&  T A  \to   B & FA & TB\\
\end{gather}$$

Expansões de ramo único devem ser priorizadas para minimizar a complexidade do tablô.
### CQC
 No sistema do CQC, temos 3 operadores adicionais com regras de expansão mais