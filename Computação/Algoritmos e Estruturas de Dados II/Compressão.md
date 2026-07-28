---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Modelo Geral

A codificação de uma mensagem qualquer $\large M$ é um processo $\large C(M)$ que transforma a disposição do conteúdo de $\large M$, quando o tamanho de $\large C(M)$ é menor que o de $\large M$, dizemos que $\large C(M)$ é uma compressão de $\large M$.

A decodificação de uma mensagem é o processo inverso a codificação, que dispõe de uma mensagem codificada $\large C(M)$ e a traz para o seu modelo de disposição inicial, se há garantia que a imagem original recuperada da decodificação $\large M'$ é igual a $\large M$, dizemos que a compressão é sem perda / _lossless_ ($\large M = M'$), caso contrário ela é com perda ($\large M \backsim M'$).
### Razão de Compreensão
A razão de compreensão de uma mensagem é a razão entre a mensagem comprimida, seja $\large |M|$ o tamanho em bits de $\large M$, a razão de compreensão se dá por
$$\large \text{RC} := \frac{|C(M)|}{|M|}$$
## Algoritmo de Frequência de Caracteres

Faz uso de Codificação por Sequências Repetidas / _Run-Length Encoding_, o algoritmo visa encontrar repetições contínuas de determinados símbolos e codificar cada repetição em termo somente de uma ocorrência do símbolo e o número de repetições.
$$\large CCCCDDDAAAAA \to 4C3D5A$$
Para símbolos que só ocorrem uma vez continuamente, basta omitir o número de repetições, assim a mensagem codificada nunca será menor que a mensagem original, mesmo no pior caso. Caso o alfabeto possua valores numéricos estes devem ser codificados com um caractere de escape. O algoritmo não é bom para a compressão de dialetos humanos pois estes não costumam ter muitas repetições contínuas de caracteres.

## Algoritmo de Huffman