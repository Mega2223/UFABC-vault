---
tags:
  - computação
  - matemática
  - estatística
  - incompleto
authors: Júlio César
---
## Definição

É uma técnica de [[Aprendizado Supervisionado|aprendizado supervisionado]] que visa dividir o espaço dos preditores em um conjunto finito de $j$ regiões sem intersecção (denominadas $R_j$), e organizar essas em uma [[Árvore|árvore]] binária de $j$ folhas onde cada folha é uma categoria ([[classificação]]) ou uma região do conjunto de treinamento ([[regressão]]).

A árvore de decisão normalmente é construída por meio da divisão do conjunto em subconjuntos de forma binária ($X_j < S$). Divisões não-binárias são possíveis mas geralmente menos intuitivas e muito mais complexas de lidar.

## CART

O CART é um algoritmo de árvore que separa a região em regiões de forma que cada galho da árvore têm duas alternativas, assim o espaço é dividido de forma 'retangular'. É computacionalmente inviável encontrar avaliar todas as possíveis árvores de decisão uma solução ótima para o problema, então tentamos encontrar uma [[Algoritmos Gulosos|aproximação gulosa]]
### Regressão
A regressão CART visa minimizar de forma gulosa o [[Função de Perda#Risco Empírico|risco empírico]] em cada iteração
$$\Large\text{RSS} = \sum_{j=1}^J \sum_{i:x_i \in R_j} (y_i - \overline y_j) ^2$$
em que $\large \overline y_j$ é a resposta média em $\large R_j$

Começamos no topo da árvore e escolhendo algum $j \in \{1, ..., d\}$ e um ponto de corte $s$ que minimizaria o RSS local. O algoritmo repete este processo de forma recursiva até que a árvore tenha uma determinada altura ou cada folha contenha um número especifico do nosso conjunto de treinamento.
### Classificação


## Métodos em Comitê / Ensemble

Árvores de decisão tendem a variar muito com mudanças muito pequenas no conjunto de treinamento, o que contradiz o principio da generalização do aprendizado de máquinas, assim queremos reduzir essa variância, para que conjuntos similares produzam resultados similares. Os métodos em comitê consistem do treinamento de várias árvores de subconjuntos de $D_m$ e um determinado processo de decisão que leva todas as predições de todas as árvores em conta, como um voto majoritário ou um valor médio.
### Bagging
Bootstrap Aggregation, ou Bagging, é um método que consiste em treinar várias árvores de subconjuntos parciais de $D_m$ e criar um preditor que decide em comitê com base nessas várias árvores. Em regressão, podemos usar como predição a média das árvores treinadas
$$\large \hat f(x) = \frac{1}{B} \sum_{b=1}^{B} \hat f_b(x)$$
Em classificação, como não há como calcular a média de $y$, podemos usar métodos de voto majoritário ou métodos ponderados com base na probabilidade que cada árvore atribui a sua predição.
### Random Forests
Da tese de que existem preditores muito influentes para a classificação e preditores menos influentes, podemos inferir que métodos em bootstrap em geral vão sempre fazer uma divisão entre os preditores mais fortes primeiro. Isso pode causar uma certa semelhança indesejada em cada árvore e uma redução de generalização.

O método de Random Forests consiste em selecionar de forma aleatória os tipos de preditores a serem usados no treinamento de cada árvore. Isso é, reduzimos a dimensionalidade e descartamos certas informações para cada árvore. Selecionamos um parâmetro $p$ que será o número de variáveis preditoras para a nossa árvore e pegamos preditores aleatórios com base no nosso $p$, geralmente temos que $p = \sqrt d$.

### Boosting

## Regularização em Árvores

Árvores de decisão podem ter um alto número de variáveis de classificação, que gera overfitting, ou um número muito baixo, que gera uma falta de viés para o nosso modelo. Assim árvores de decisão têm seus próprios métodos de [[Regularização de Modelo|regularização]] para manter o modelo relativamente preciso e simples.