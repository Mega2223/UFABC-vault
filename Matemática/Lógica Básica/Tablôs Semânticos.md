---
tags:
  - lógica
  - incompleto
---
## Definição

É um [[sistema dedutivo]] que serve para provar definidamente se uma fórmula é ou não é consequência lógica de outras fórmulas. Envolve presumir que as hipóteses sejam verdadeiras e as conclusões falsas e verificar se essa premissa é contraditória.

De forma geral, o sistema semântico parte da premissa que, seja $\large \Gamma$ um conjunto de fórmulas, para qualquer $\large \Gamma \vDash A, \Gamma \cup A$ não é satisfazível. 

## Algoritmo

### Ramo Fechado
Ramo onde é encontrada uma contradição do tipo $\large F A$ e $\large T A$, se todos os ramos estão fechados o tablô é dito fechado. Um tablô fechado é prova conclusiva de que $\large \Gamma \vDash_T A$.
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
No sistema do CQC, temos 3 operadores adicionais com regras de expansão mais complexas, para algum sujeito $\large \omega$ fazemos a substituição

$$\large
\begin{gather}
T\forall x Px \over TP\omega && T \exists x Px \over T P \omega 
\end{gather}$$

Ainda para as fórmulas marcadas com $\large F$, podemos fazer a substituição para uma das fórmulas acima
$$\large
\begin{gather}
F \forall x P x \over T \exists x \lnot Px && F \exists x P x \over T \forall x \lnot Px
\end{gather}$$

Para a primeira expansão, nunca a marcamos com $\large \checkmark$ pois sempre vão existir sujeitos para expandir, para a segunda expansão só usamos sujeitos que já aparecem em ramos anteriores, eventualmente acabando com todos os sujeitos disponíveis.
