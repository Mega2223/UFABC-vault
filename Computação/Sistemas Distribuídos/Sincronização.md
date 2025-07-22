---
tags:
  - algoritmo
  - computação
  - comunicações
  - incompleto
authors: Júlio César
---
## Definição

Em um [[sistema distribuído]], existe um problema de ambiguidade de tempo, onde não há consenso do tempo do sistema entre os processos, e cada um possui seu relógio interno. Devido a atrasos de comunicação é necessário saber a ordem lógica de cada mensagem na rede, caso contrário podemos resultar em perda de consenso da informação do sistema.

## Padrão UTC


## Sincronização de Relógio

Um determinado algoritmo de sincronização visa manter o desvio entre os relógios de quaisquer duas máquinas em um sistema distribuído menor que alguma borda, determinada precisão ($\pi$).
$$\large \forall t, \forall (p, q) : |C_p(t)-C_q(t)| \le \pi$$
- $t$ é o tempo [[#Padrão UTC|UTC]]
- $p$ e $q$ são processos
- $C_k(t)$ é o valor do relógio na máquina $k$ no instante $t$

Timers internos de computadores tendem a desviar entre si, causando um processo de defasagem. Tipicamente relógios tem uma taxa de defasagem máxima $\rho$
$$\large \forall (t): (1-\rho) \le \frac{F(t)}{F}\le(1+\rho)$$
- $F(t)$ é a frequência real do oscilador
- $F$ é a frequência ideal

A meta então é manter a taxa de desvio do horário de UTC dependente de $\rho$

$$\large \forall t: 1-\rho \le \frac{dC_p(t)}{dt} \le 1+\rho$$

Dizemos que se $\Huge\frac{dC_p(t)}{dt}$ é igual a 1, o relógio é idealmente perfeito, se é menor que 1, o relógio é lento, e se é maior que 1, o relógio é rápido.

## Network Time Protocol

Consiste em um procedimento onde um cliente contata um servidor que tem um relógio UTC preciso para determinar seu próprio tempo. O problema a ser solucionado é estimar a latência de resposta da requisição e ajustar o relógio do cliente de acordo.

O cliente $\text A$ manda uma mensagem para $\text B$ em um com um valor de tempo interno $T_1$ , $\text B$ ao receber essa requisição salva o instante de recebimento $T_2$ (do relógio interno de $\text B$). Quando $\text B$ envia sua resposta, ele manda o instante $T_3$ junto da resposta. $\text A$ finalmente recebe o pacote e guarda o tempo local de recebimento como $T_4$.

Presumindo que o atraso de propagação $\text A \to \text B$ é igual para $\text B \to \text A$, assim $T_{2} - T_{1} \approx T_{4} - T_{3}$, a pode presumir que seu atraso se dá por
$$\large \theta = T_3 -\frac{(T_2-T_1)-(T_4-T_3)}{2}-T_4$$
