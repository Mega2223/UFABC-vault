---
tags:
  - incompleto
  - computação
authors: Júlio César
---
## Definição

É a prática de um [[Sistema Operacional]]de distribuir o tempo de execução de uma [[CPU]] entre as aplicações de forma a não bloquear o funcionamento de nenhuma aplicação. Quando o sistema operacional troca de aplicação, ele deve salvar todos os registradores da CPU e transferir-los de volta para a CPU no próximo ciclo da aplicação.

O ciclo de aplicação envolve buscar uma instrução, interpretar-la, a executar e buscar a próxima de forma iterativa, todavia como o espaço de processamento é distribuído em função do tempo, o sistema operacional deve fazer uma transição _seamless_ entre todas as instruções de um programa de forma que ele não veja ele sendo colocado e tirado do processador.