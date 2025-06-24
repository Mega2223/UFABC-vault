---
tags:
  - computação
  - incompleto
  - circuitos-digitais
  - eletrônica
authors: 
aliases:
  - Digital Analogue Converter
  - DAC
---
## Definição

O Conversor Digital-Analógico / Digital-Analogue Converter (DAC) é um conversor que transforma um número de sinais digitais em um único sinal analógico, isso é, recebe um número de bits e dá como saída um sinal cuja corrente em Volts[^1] é proporcional ao valor digital recebido.

Como valores binários são discretos, a saída acabará por ser dividida em níveis discretos. De forma geral, dado um valor discreto binário $n$ temos que a saída em Volts se dá por
$$
\Large{
 V_{\text{out}}
} = K * n
$$
onde K é a [[#resolução]] do circuito.
## Resolução

O espaçamento entre níveis analógicos é fixo, e distribuído de acordo com o número de combinações de bits de entrada, sabemos que temos $2^N$ combinações para $N$ bits, de forma geral temos que a resolução $K$ de dá por
$$\large 
\begin {gather}
K = \frac {V_{\text{ref}}} {\text{n de degraus}} &&
\text {n de degraus} = \Large 2^{N-1}
\end {gather}$$
Uma resolução percentual / proporcional é dependente apenas do número de bits e está dentro de $(0,1)$. Note que como o sistema binário inclui o 0, o $n$ nunca chega a 1, ou seja, nunca teremos uma voltagem $V_{\text{ref}}$ saindo do circuito. (Por exemplo, num sistema de 4 bits embora hajam 16 combinações o maior número será 15, assim dando 16 Volts para o circuito ele mandaria no máximo 15 Volts).

[^1]: A saída não é necessariamente uma corrente, pode ser uma tensão também.
