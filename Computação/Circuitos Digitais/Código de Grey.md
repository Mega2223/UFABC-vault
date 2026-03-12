---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

É uma codificação de estados por variáveis binárias, o código associa cada estado a uma combinação de variáveis binárias, ao contrário de códigos binários naturais que usam de referência a aritmética inteira, o código de grey visa minimizar o número de transições necessárias para trocar estados consecutivos, assim então o código mantém uma [[Camada de Enlace#Distância de Hamming|distância de Hamming]] igual a 1 para estados adjacentes (o último estado também é considerado adjacente do primeiro).

$$\large \begin{gather}
\text{Aritmética Binária} & \text{Código de Grey} \\
0 \to 000 & 0 \to 000 \\ 
1 \to 001 & 1 \to 001 \\
2 \to 010 & 2 \to 011 \\ 
3 \to 011 & 3 \to 010 \\
4 \to 100 & 4 \to 110 \\ 
5 \to 101 & 5 \to 111 \\
6 \to 110 & 6 \to 101 \\ 
7 \to 111 & 7 \to 100 \\
\end{gather}$$
## Geração

O código de Grey para um sistema de $\large n$ bits pode ser gerado a partir de um algoritmo recursivo de reflexão, onde para acrescentarmos um bit adicional ao sistema espelhamos a sequência de $\large n-1$ bits para frente mas com um novo bit mais significativo $\large 1$:
$$\large
\langle0, 1\rangle \to \langle 00, 01, 11, 10\rangle \to \langle 000, 001, 011, 010, 110, 111, 101, 100 \rangle \to \cdots
$$
