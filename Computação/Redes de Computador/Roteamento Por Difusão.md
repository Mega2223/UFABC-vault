---
tags:
  - incompleto
  - internet
  - computação
  - comunicações
  - teoria-de-grafos
authors: Júlio César
---
## Definição

Chamamos de difusão o envio de um determinado pacote a todos os membros de uma [[Camada de Rede|rede]]. O roteamento por difusão visa otimizar a transmissão global de pacotes em uma determinada rede. 

Enviar um pacote diferente para cada membro da rede é computacionalmente exaustivo, e exige que o caminho ótimo entre o roteador remetente e cada membro da rede já seja conhecido. Assim em casos de difusão usamos algoritmos que visam minimizar o uso de banda.

## Escoamento

No algoritmo de escoamento, em cada roteador, o pacote é re-enviado a todos os roteadores adjacentes menos o de origem. Caso a rede possua algum ciclo, o número de pacotes enviados é efetivamente infinito, para isso usamos um contador de re-envios máximos para um determinado pacote, assim quando este contador chega a 0, o pacote é descartado.

Caso o pacote tenha um destino em mente, nosso número de re-envios máximo é o número de hops entre o remetente e o destinatário, caso essa distância não seja conhecida, presumimos o pior caso e usamos o [[Grafo#Diâmetro|diâmetro]] da rede.

Para um único destinatário, o algoritmo de escoamento usa uma quantidade excessiva de banda e processamento, ele é mais ideal para transmissão em difusão. Todavia o algoritmo de escoamento se adapta de forma extremamente robusta a mudanças na topologia da rede, um roteador só precisa saber os seus vizinhos imediatos, e, caso exista um caminho entre os roteadores de fonte e destino, é garantido que este caminho seja eventualmente encontrado, e este caminho sempre será o caminho mais curto[^1]. 

Alternativamente, podemos atribuir algum identificador único ao pacote e prevenir que o mesmo roteador transmita um determinado pacote duas vezes, assim melhorando (mas não otimizando) o uso de banda.

## Roteamento Multi-Destino

O pacote pode incluir uma lista de destinos desejados, e, quando este chega num roteador, para cada roteador que o pacote ainda não viu, o roteador verifica se o mesmo está no caminho ótimo entre o remetente original e o roteador de destino. Caso ele esteja, o pacote é atualizado e enviado para os próximos roteadores da rede.

Este meio de transmissão otimiza o uso de banda, mas ainda requer que o roteador de origem conheça o caminho ótimo entre todos os roteadores, ou seja, exige que já seja calculada uma [[árvore de amplitude]].
## Encaminhamento pelo caminho inverso

Quando um determinado pacote chega a um roteador, ele verifica se o pacote veio pelo nó usado é o nó que é tipicamente ativado para enviar pacotes ao roteador do qual o pacote se originou. Caso positivo, há uma alta chance de que este pacote seja o primeiro de sua instância a chegar no roteador atual. O roteador então manda o pacote para todos os seus nós adjacentes exceto aquele o qual ele recebeu o pacote.

Esse algoritmo também visa otimizar o uso de banda e processamento, um pacote nunca é enviado duas vezes pelo mesmo nó (terá um comportamento de [[Grafo#Árvore|árvore]]). Ele requer que cada roteador na rede conheça rota ótima para todos os demais roteadores, ou seja, exige que já seja calculada uma [[árvore de amplitude]].

[^1]: Na primeira vez que o pacote chega ao destinatário :p
