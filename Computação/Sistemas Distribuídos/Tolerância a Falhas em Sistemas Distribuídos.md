---
tags:
  - algoritmo
  - computação
  - incompleto
  - comunicações
authors: Júlio César
---
# Definição

Um [[sistema distribuído]] deve tolerar falhas tanto do lado do servidor quanto to cliente, deve se adaptar de tal forma que idealmente a falha de um lado não é visível para o outro lado.

## Terminologia

- Falha / _Failure_ : Componente não segue suas especificações esperadas;
- Erro / _Error_ : O estado / memória do componente é invalido e pode levar a um erro.
- Falha / _Fault_ : Causa de um erro.

## Tipos de Falha

### Falha por Queda / _Crash Failure_

Ocorre quando cai um componente
### Falha por Omissão / _Omission Failure_

### Falha de Temporização / _Timing Failure_

### Falha de Resposta / _Response Failure_

### Falha Arbitrária ou Bizantina / _Arbitrary or Byzantine Failure_
## Confiabilidade

Dado um [[componente]] $C$, e um instante $t_0$ em que este componente estava funcionando corretamente, a confiabilidade $R(t), t \ge t_0$ é a probabilidade de $C$ estar funcionando corretamente durante todo o intervalo $[t_0,t)$, depende do tempo médio para uma queda (_Mean Time to Fail_) e do tempo médio para o componente se recuperar após a queda (_Mean Time to Repair_). Temos que o tempo médio entre falhas (_Mean Time Between Failures_) é a soma das outras duas estatísticas.

$$\large\begin{gather}
\text{MTBF} = \text{MTTF} + \text{MTTR}
\end{gather}$$
## Disponibilidade

Dado um [[componente]] $C$, e um instante $t_0$ em que este componente estava funcionando corretamente, a disponibilidade $A(t), t \ge t_0$ é a fração de tempo em que $C$ esteve funcionando corretamente durante todo o intervalo $[t_0,t)$ 

$$\large\begin{gather}
A(t) = \frac{\text{MTTF} }{\text{MTBF} }
\end{gather}$$

# Resiliência de Processos

//todo
# Chamadas Cliente-Servidor

## Falhas de Comunicação

Em um sistema de redes de computador falhas de comunicação podem ser trivialmente ocultas por protocolos já existentes na [[Camada de Transporte|entidade de transporte]], por exemplo, uma [[Protocolo TCP|conexão TCP]] já oculta os erros de comunicação por meio de protocolos de confirmação e confiabilidade.

Todavia o protocolo TCP falha em ocultar falhas de queda, uma vez que se um dos lados da conexão caí o _socket_ TCP simplesmente acaba com a conexão do outro lado após uma determinada quantidade de tempo.
## Comunicação Ponto-a-Ponto

Caso ocorra uma queda de conexão entre o cliente e o servidor, qualquer conexão entre os dois eventualmente não pode persistir, isso implica que o próprio canal não é mais capaz de enviar e receber mensagens. Para lidar com isso, o processo pode automaticamente tentar criar uma nova conexão, ou até mesmo levantar uma exceção para as camadas superiores do processo poderem lidar com a queda.
## Chamadas RPC

Uma [[Camada de Transporte#Chamada Remota de Procedimento (RPC)|RPC]] demanda que tanto o cliente quanto o host devem estar vivos durante toda a duração da chamada, uma vez que a chamada deve ser oculta para o cliente mas ainda sim deve tramitar o servidor normalmente.
### Falha de Cliente

Uma falha de cliente após uma chamada RPC pode gerar uma computação órfã, que não tem processo correspondente de origem. Mesmo que o processo eventualmente volte para o ar, se ele recebe o resultado da computação tendo chamada a mesma antes da queda pode haver algum tipo de confusão.

Para evitar esse problema podemos implementar as seguintes soluções:
#### _Orphan Extermination_[^1]
Fazer com que o processo mantenha todas as chamadas RPC ativas (deve guardar a declaração de chamada RPC _antes_ de chamar o servidor) em um log que persiste falhas (como um hard drive), quando o processo volta ao ar ele explicitamente pede ao servidor para que a chamada seja morta.
Pode gerar problemas em sistemas onde chamadas RPC geram outras chamadas RPC, essas chamadas 'de segunda ordem' ficam órfãs e conforme o grau aumenta, essas chamadas ficam cada vez mais difícil de localizar.
#### Reencarnação 
Quando um cliente se reconecta, ele declara um novo epoch, todas as computações são então erradicadas. Computações 'netas' apontam para computações inválidas e são mais fáceis de detectar, eventualmente as mesmas também são removidas.
#### Reencarnação Gentil
Similar a reencarnação, mas cada processo com computações ativas, ao receber uma mensagem de epoch novo, só extermina as computações que não conseguiu encontrar um processo válido como pai.
#### Expiração
Cada chamada RPC tem um número máximo de tempo $T$ para efetuar sua computação, quando ele está perto de estourar seu limite, ela pede outro _quantum_ de tempo, se o cliente demora mais que $T$ para retornar, pode-se garantir que todas as suas computações estarão ausentes do sistema.

##  Comunicação em Grupo

### Comprometimento Distribuído / _Distributed Commit_
No modelo de comprometimento distribuído, existem duas fases, na primeira fase, um determinado coordenador pergunta a todos os processos se eles são capazes de fazer o comprometimento da ação à base de dados, se todos os processos concordam em fazer, o coordenador manda então a mensagem que confirma o comprometimento de todos os processos.

[^1]: Toda a área de Computação existiu para eventualmente convergir nessa expressão.
