---
tags:
  - algoritmo
  - computação
  - estatística
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

O perceptron é um #algoritmo de [[classificação]] binária, que mapeia uma determinada variável $x$ para um rótulo $\hat{y}$ com base em uma fronteira de decisão linear
$$\large
\hat f(x) = \begin{cases}
1 & w^Tx+b \ge0 \\
0 & w^Tx + b \lt 0
\end{cases}
$$
Onde $w$ e $b$ são os hiperparâmetros do [[hiperplano#Definição|hiperplano]] que forma a fronteira de decisão do algoritmo.
## Função de Perda

O perceptron usa a [[função de perda]]
$$\large \ell_{\text{pct}}(y,\hat y) = \max \{0,-y \cdot \hat y\}$$
Que é 0 caso não haja erro de classificação, mas aumenta linearmente caso exista erro de classificação. A ideia é reduzir a distância entre cada categoria e sua fronteira de decisão respectiva. Assim, buscamos minimizar
$$\large 
J(w,b) = \frac{1}{m} \sum_{i=1}^m \max \{0,-y_i(w^Tx_i+b)\}
$$
Se temos algum $(w_*,b_*)$ tal que $J(w_*,b_*) = 0$, dizemos que os dados são linearmente separáveis.
## Perceptron em Lote / Batch

Algoritmo para encontrar uma barreira de perceptron, se os dados são linearmente separáveis, este eventualmente converte. Ele calcula todo o gradiente antes de iterar encima dos hiperparâmetros.
## Perceptron Online

Algoritmo que encontra uma barreira caso o conjunto seja linearmente separável, trabalha com uma lista aleatoriamente ordenada de elementos de $C_m$ e atualiza os hiperparâmetros após ver cada variável de treinamento. É chamado de online pois ao contrário do [[#Perceptron em Lote / Batch|algoritmo em lote]] este pode ser usado sob um fluxo contínuo de dados.

## Classificador de Máxima Margem

O classificador de máxima margem visa maximizar a distância total da fronteira de decisão ao ponto mais próximo da margem, definimos nossa margem $\large\gamma$ pelo teorema da [[Hiperplano#Distância Ponto e Hiperplano|distância de um ponto e um hiperplano]]
$$\large 
\gamma = \min_{i = 1, \dots, m} \frac{|w^Tx_i+b|}{||w||} 
$$
O classificador então visa maximizar $\large \gamma$ pelos hiperparâmetros $w$ e $b$
## Multi Layered Perceptron

//todo
## Desempenho

### Classificação
O perceptron é um separador bem maleável, ao contrário do [[Regressão Logística|outro separador linear bem conhecido]], que têm solução única. Em geral é bom para um conjunto de dados linearmente separável. 