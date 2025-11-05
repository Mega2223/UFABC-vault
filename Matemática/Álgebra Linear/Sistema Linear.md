---
tags:
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

O sistema linear é um conjunto finito de equações $m$ lineares aplicadas sob um determinado conjunto finito de $n$ variáveis. É considerada uma solução viável $(s_1, \dots, s_n)$ um conjunto de $n$ números que satisfaz todas as equações do sistema.
$$\large
\begin{gather}
a_{11} x_1 + \dots + a_{n1} x_n = b_1
\\ \vdots
\\ a_{1m} x_1 + \dots + a_{nm} x_n = b_m
\end{gather}
$$
Um sistema linear é denominado consistente quando há alguma solução viável para o sistema, caso o contrário ele é denominado inconsistente.

O sistema linear é representado como uma equação entre uma [[matriz]] e um [[Vetor|vetor coluna]] onde
$$\begin{gather}\large  Ax = b
\end{gather}$$
- $A \in \mathbb{R}^{m \times n}, x \in \mathbb{R}^{1 \times n}, b \in \mathbb{R}^{1 \times m}$
- $b = \begin{bmatrix} b_1, b_2, \dots, b_m \end{bmatrix}^T$ são os termos independentes
- $x = \begin{bmatrix} x_1, x_2, \dots, x_n \end{bmatrix}^T$ são as incógnitas
- $a_{ij} =A_{ij}$

## Operações Elementares Em Matrizes

São um conjunto de operações matriciais de reposição

### Multiplicação Linha e Escalar
Multiplica todos os elementos da linha da matriz por um número real

$$\large E_{kLi} A:= L_i \leftrightarrow \alpha L_i\ \ \ \alpha \in \mathbb R$$

A determinante da matriz resultante será $\alpha$ vezes a determinante da matriz inicial, uma consequência dessa propriedade é que multiplicar todos os elementos de uma matriz por algum $\alpha$ implica que a matriz terá um determinante que é $\alpha^{m}$ o determinante da matriz original.
### Permutação de Duas Linhas
É a troca de elementos entre duas linhas da matriz
$$\large E_{ij} A:= L_i \leftrightarrow L_j$$
### Soma com Múltiplo de Outra Linha
É o ato de somar uma linha com os elementos de outra linha multiplicados por algum escalar real não-nulo
$$\large E_{i+\alpha Lj} A:= L_i \leftrightarrow L_i+\alpha L_j\ \ \alpha \in \mathbb R \backslash \{0\} $$

## Resolução do Sistema Linear

## Propriedades

### Consistência
Um sistema é denominado possível ou consistente quando existe algum conjunto de incógnitas que satisfazem a equação $Ax = b$.
### Sistema homogêneo
Um sistema é homogêneo quando todos os elementos de $b$ são 0. Todo sistema homogêneo admite pelo menos uma solução ($x_i = 0$), essa solução é denominada trivial.

