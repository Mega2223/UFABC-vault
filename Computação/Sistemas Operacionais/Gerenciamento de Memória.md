---
tags:
  - algoritmo
  - computação
  - incompleto
authors: Júlio César
---
## Definição

É a prática de um [[sistema operacional]] regular o acesso a [[Memória de Acesso Aleatório|memória RAM]] (ou equivalente) para as aplicações. 

Um sistema operacional que não implementa qualquer abstração de memória expõe os endereços físicos para cada aplicação, possibilitando então que aplicações danifiquem os estados umas das outras (e do próprio sistema).

Um sistema operacional deve então garantir que dois programas distintos jamais tenham acesso aos mesmos registradores, para isso o sistema divide sua memória em **espaços de endereçamento** para cada aplicação.

O espaço de endereçamento é uma abstração da memória física onde uma aplicação pode alocar e referenciar endereços para seu próprio uso por meio de [[Chamada de Sistema|chamadas de sistema]], a arquitetura da memória fica completamente oculta ao programa, uma mesma variável endereço em programas diferentes vão apontar para locais físicos diferentes na memória da máquina.
### Swapping
É o processo de um sistema operacional tornar alguma porção espaço de unidade física (disco) em uma pseudomemória para uso dos programas, para por exemplo quando toda a RAM esteja ocupada. Acessos para o disco são caros então isso afeta significativamente o desempenho dos programas. Sistemas Unix tipicamente permitem Swapping por meio de um arquivo _swapfile_ ou por uma partição dedicada.

Processos que não estão em atividade podem ser completamente movidos ao disco em todo seu estado para uma execução posterior, fazendo com que o SO possa mover outros processos mais importantes para a memória.

