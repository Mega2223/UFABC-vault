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

O algoritmo de Huffman visa comprimir símbolos mais frequentes na mensagem em sequências binárias mais curtas e símbolos menos frequentes em sequências binárias mais longas. Uma mensagem é uma sequência de símbolos que pertencem ao conjunto de símbolos $\large S = \{s_1,s_2,\dots,s_n\}$, onde $\large f_i$ é o número de ocorrências de $\large s_i$ na sequência e $\large l_i$

Para evitar ambiguidades, nenhum símbolo codificado pode ser o prefixo de outro, a expansão de todas as cadeias comprimidas se dá por meio de uma [[árvore|árvore]] de prefixo, que é uma [[Árvore#Árvore Binária|árvore binária]] que codifica todas as sequências de caracteres, de forma que cada folha remete a algum símbolo da língua original.

A codificação visa diminuir / otimizar o tamanho da sequência binária final, para uma árvore de prefixo $\large T$, queremos minimizar o custo da sequência binária produzida pela árvore, dado por $\large \text C(T)$. Uma árvore que minimiza o custo da mensagem é dita uma Árvore de Huffman.

$$\large \text C(T) := \sum_{i=1}^n f_i l_i$$

Para o funcionamento do algoritmo é necessária que a árvore de codificação também seja compilada e transmitida ou armazenada como parte da mensagem.

### Construção da Árvore de Huffman
A Árvore de Huffman é construída por meio de um [[Algoritmos Gulosos|algoritmo guloso]], como passo inicial, é criado um nó para cada símbolo, ou seja, para cada folha. Após a criação, temos uma floresta formada por várias árvores, o algoritmo procura a melhor fusão possível de árvores até que só exista uma única árvore. Seja $\large T'$ uma árvore de prefixo qualquer, a frequência de $\large T'$, dada por $\large f(T')$ é a soma de todas as frequências das folhas de $\large T'$.

Em cada passo, as duas árvores de menor frequência, $\large T_1$ e $\large T_2$ são fundidas em uma árvore por meio de criação de um nó pai para ambas as subárvores, onde esse nó conecta para as raízes $\large r(T_1)\ r(T_2)$ das árvores, os objetos de maior frequência então terão um lugar mais alto na árvore final.

$$\large \begin{gather}
G' = (V', E') \\
V' = V \cup\{ e'\}\\
E' = E \cup \{(e',r(T_1)),(e',r(T_2))\}
\end{gather}$$
