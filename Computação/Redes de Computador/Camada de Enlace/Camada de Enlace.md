---
tags:
  - internet
  - computação
  - incompleto
authors: Júlio César
aliases:
  - enlace de dados
---
## Definição

Nos protocolos [[Modelo TCP-IP|TCP/IP]] e [[Arquitetura de Rede#Modelo OSI|OSI]] a camada de enlace é a [[Arquitetura de Rede#Camada|camada]] responsável pela comunicação entre a [[Camada de Rede]][^1] e as demais camadas, é a camada de enlace que é responsável pelo fluxo de dados e a correção de erros de transmissão causados no [[Camada Física|meio físico]]. A camada de enlace têm a função de tomar dados da camada de rede e os encapsular em quadros para a transmissão.
A camada de enlace insere um cabeçalho, um campo de carga útil para guardar o pacote e uma cauda ao pacote.

## Tipos de Serviço

### Sem Conexão e Sem Confirmação
Há transmissão de dados sem acordo de conexão prévia e sem confirmação de recebimento pela máquina de destino. Mais adequada para redes locais.
### Sem Conexão e Com Confirmação
Não há uma conexão lógica estabelecida, mas há acusamento do recebimento de cada quadro, normalmente usada em redes de baixa confiabilidade, como redes de curta distância sem fio.
### Com Conexão e Com Confirmação
Conexão acordada entre as máquinas antes da transmissão da informação. Cada quadro têm um identificador único e a camada de enlace confirma o recebimento de todos os quadros, a ordem de recebimento e a não-repetição dos dados. É implementada como uma máquina de múltiplos estados.
## Controle de Erros

Para o controle de erros, a camada de enlace emprega de diversas ferramentas, após o recebimento do pacote, ela pode:
- Enviar alguns fragmentos dos quadros recebidos para verificar a existência de erros
- Usar de algum temporizador caso o pacote seja perdido numa rajada de interferência de sinal
- Solicitar o pacote novamente caso o mesmo não tenha sido recebido

### Distância de Hamming
A distância de Hamming entre duas sentenças binárias é a diferença de bits necessários para que uma sentença se torne a outra.
$$\large\text{dh }= \sum_i
\begin{cases}
0 & A_i = B_i \\
1 & A_i \ne B_i
\end{cases}$$
## Enquadramento

É o processo de codificação de dados em quadros para a [[camada física]].
### Cabeçalho
Contém informação pertinente à natureza do quadro.
#### Contagem de Caracteres 
Campo que especifica o número de caracteres no quadro.
### Preenchimento de Bytes
O enquadramento pode optar por inserir um byte de escape no dicionário, que serve para realinhamento caso o byte de contagem seja corrompido, para substituir o byte que normalmente seria o byte de escape é usada uma sequência de dois bytes de escape.
### Checksum
///todo

## Controle de Fluxo

Envolve o acordo de transmissão e recebimento de dados no canal
### Intervalo de Disputa
Para protocolos de [[#Subcamada de Acesso Ao Meio|acesso ao meio]], considerado o intervalo de disputa o tempo entre o início da transmissão de dados e o instante onde o remetente percebe a colisão de sinais, seja $\tau$ o tempo de propagação de um sinal entre as duas estações mais distantes, $t_0$ o instante em que um determinado remetente começa uma transmissão, uma outra determinada estação pode começar transmitir durante um tempo $t_o + \tau - \epsilon$. 

O tempo máximo para essa colisão ser percebida pela primeira estação se dá por $2 \tau - \epsilon$, ou seja, na pior das hipóteses, o intervalo de disputa se dá por $2 \tau$.

É interessante replicar o [[Protocolo ALOHA#Slotted ALOHA|protocolo de alocação de slots]] com slots discretos de duração uniforme $2 \tau$ para a maior eficiência do canal em situações onde o tempo do quadro for muito maior que o de propagação.

## Protocolos de Enlace de Dados

### Simplex sem restrição

### Simplex / Canal com ruído

### Protocolos de Janela Deslizante

## Subcamada de Acesso Ao Meio
//todo importante
//ALOHA, CSMA, BITMAP etc...

[^1]: OSI não tem camada de rede
