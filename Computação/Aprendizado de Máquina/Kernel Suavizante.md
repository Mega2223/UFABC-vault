---
tags:
  - algoritmo
  - computação
  - estatística
  - matemática
  - internet
authors: Júlio César
aliases:
  - regressão local
---
## Preposição

Ao treinar um modelo de [[aprendizado supervisionado]], em vez de utilizarmos todo o conjunto de treinamento para a decisão do hiperparâmetro da função, podemos ter um processo de predição  local, onde para decidirmos algum $\hat y$, pegamos valores $y$ que estão perto do nosso preditor desejado.

## Regressão Local

Um método de [[regressão]] derivado do [[kNN#Regressão|KNN de regressão]], onde em vez de uma média aritmética, é calculada uma média ponderada sob os valores mais próximos do nosso preditor. Essa média é distribuída de acordo com alguma função da distância entre o nosso preditor e os preditores conhecidos mais próximos.

Em geral, o algoritmo encontra os pontos $s = k/m$ mais próximos do nosso $x$, atribui alguma função de peso em função da distância dos preditores de treinamento e ajusta uma [[regressão linear]] local para minimizar 
$$\large J(\beta_0, \beta_1) = \sum_{i=1}^m w_{i0}(y_i - \beta_0 - \beta_1x_i)^2 $$
## Funções de Kernel Suavizante

### Kernel Quadrático de Epanechnikov
$$\large 
D(t)=\begin{cases}
 (3/4) (1-t^2) & |t| \le 1 \\  0 & t \gt1
\end{cases}
$$
````tikz
\begin{document}
  \begin{tikzpicture}[domain=0:1, scale = 3]
    \draw[thin,color=gray] (-0.01,-0.01) grid (1.5,1.5);
    \draw[->] (-0.2,0) -- (1.4,0) node[right] {$x$};
    \draw[->] (0,0) -- (0,1.1) node[above] {$D(t)$};
    
    \draw[color=red]   plot (\x,{.75*(1 - \x^2)}) node[left] {$D(t) = (3/4) (1-t^2)$};
    
  \end{tikzpicture}
\end{document}
```
````
### Função Tri-Cubo
//todo
