---
authors: Júlio César
tags:
  - comunicações
---
## Definição

Em modelos de [[Arquitetura de Rede|redes]] de comunicação, a camada física é aquela que representa o meio físico o qual os dados passam, sejam eles um fio de cobre, de fibra ou ondas de rádio. A camada física é a fonte principal de ruídos de comunicação, assim o mesmo deve ser corrigido nas camadas superiores.

A camada física não possui protocolos em si, mas a [[camada de enlace]] pode ter premissas razoáveis sobre a natureza da camada física, por exemplo, uma rede de rádios provavelmente terá uma taxa de erro muito mais alta que um cabo de fibra, logo a camada de enlace pode implementar uma redundância mais robusta para redes de rádio.