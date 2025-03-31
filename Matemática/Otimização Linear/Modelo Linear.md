---
authors: Júlio César
tags:
  - matemática
  - "#computação"
---
## Definição

O modelo linear é toda a informação de um determinado problema de otimização linear e todas as variáveis que possam influenciar o resultado final.
## Modelagem

```mermaid
flowchart TB
    id1[Problema Real] --> id2[Modelo Matemático] --> id3[Solução do Modelo]
	id3 --> id4[Validação] --> id1
	id4 --> id5[Solução Aceitável]
```
#### Variáveis do modelo
- Variáveis de decisão $x_1,\ x_2,\ ...,\ x_n$ (e seus respectivos pesos) $a_1,\ a_2,\ ...,\ a_n$
- Função objetivo $(max \lor min)\ f$
- Restrições do modelo

#### Condições
Para um modelo linear ser válido é necessário:
- Todas as variáveis $x_1,\ x_2,\ ...,\ x_n\ \in \mathbb{R}$ 
- $x_i \ge 0\ \ \forall i \le n$ (não negatividade)
- Variáveis devem ser _lineares_ (polinômios de ordem 1)

#### Combinação Ótima
Dada essas condições, o resultado da função objetivo deve ser uma combinação linear de todas as variáveis do problema. A meta do modelo é encontrar a combinação ótima, isso é, combinação onde as variáveis, dentro das restrições, melhor cumprem a função objetivo.
$$X =\large \sum_{i} x_i a_i$$
## Propriedades
### Variáveis básicas e não básicas
Na [[Modelo Linear#Forma padrão|forma padrão]] o modelo terá um set de restrições, dependendo da função objetivo essas restrições podem ser básicas ou não básicas, isto é, se elas forem básicas elas são restrições ativas em uma determinada solução, se elas forem não-básicas logo elas não são ativas e seu valor respectivo é 0.
### Maximização e Minimização
$$\large \begin {gather} \max(f) = \min(-f) \\ \min(f) =\max(-f) \end{gather}$$

## Forma canônica

É a forma mais intuitiva do modelo, com todas as variáveis e pesos estabelecidos e restrições.
$$\begin{gather} \large (\max | \min) Z = \sum_i^n x_ia_i
\\ \text{sujeito a } m \in \mathbb{N} \text{ restrições de forma que}\\
\\ c_{11} x_1 + \dots + c_{n1} x_n\ (\le | \ge)\ k_1
\\ \vdots
\\ c_{1m}\ x_1 + \dots + c_{nm} x_n\ (\le | \ge)\ k_m
\end{gather}$$
## Forma padrão

Antes da resolução é usual estabelecer o problema pela forma padrão é a forma com todas as desigualdades convertidas para igualdade por meio de [[Variável de Folga|variáveis de folga]]. Também é costumeiro passar $Z$ para o outro lado da igualdade em alguns casos.
$$\begin{gather} \large (\max | \min) f = \sum_i^n x_ia_i
\\ \text{sujeito a } m \in \mathbb{N} \text{ restrições de forma que}\\
\\ c_{11} x_1 + \dots + c_{n1} x_n = k_1
\\ \vdots
\\ c_{1m} x_1 + \dots + c_{nm} x_n = k_m
\end{gather}$$
## Variáveis do modelo

Dado um modelo de $n$ variáveis $m$ restrições, temos
- $x$ como o vetor das variáveis do problema, $n$ variáveis.
- $c$ como os coeficientes (ou custos / pesos) de cada variável, $n$ variáveis.
- $b$ como o vetor das fronteiras de cada restrição, $m$ variáveis.
- $z$ como $c_B^T A_N$
- $A$: Para cada elemento de $b$ há um conjunto de constantes associadas aos pesos de cada variável na restrição, construindo esses coeficientes numa matriz temos a matriz $A$, de forma geral, $A_{ij} = a_{ij}$.
- $R$ ou $N$: Lado de $A$ com as colunas das variáveis iniciais do problema.
- $B$: Lado de $A$ com as colunas das variáveis de folga do problema.
- $A_B$: Colunas de $A$ referentes às variáveis básicas do problema ($A_B = I$).
- $A_R$ ou $A_N$: Colunas de $A$ referentes às variáveis não-básicas do problema.

Essas variáveis formam um tableau inicial pra solução do problema por [[Método Simplex|simplex]]
$$\large
\begin {align}
\begin{bmatrix}
A & b\\ -c^T
\end{bmatrix} && \text{ou} &&
\begin{bmatrix}
B & R & b\\ -c^T_B & -c^T_R 
\end{bmatrix}
\end{align}
$$
Assim o problema de forma padrão pode ser interpretado como
$$\large \begin{gather}
(\max | \min)\ c^Tx \\ Ax = b \\ x \ge 0
\end{gather}$$