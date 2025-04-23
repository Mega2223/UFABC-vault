---
tags:
  - algoritmo
  - estatística
  - matemática
  - incompleto
  - computação
authors: Júlio César
---
## Definição

A rede neural é um algoritmo de [[Aprendizado Supervisionado|aprendizado supervisionado]], um conjunto de [[Perceptron|perceptrons]] interligados entre si formando uma cadeia ponderada de perceptrons e nós. 
A rede neural é dividida em um determinado número de $L$ camadas, onde um perceptron de uma determinada camada $l$ comuta todos os perceptrons da camada anterior com seus pesos locais. Tendo $N_l$ o número de perceptrons na camada $l$, temos que existem $N_{l-1}$ vetores de pesos para cada perceptron em $l$, podemos resumir essa relação em uma matriz
$$\Large 
\begin{gather}
W^l = 
\begin{bmatrix}
w_{11}^l & w_{12}^l & \cdots & w_{1\ N_{l-1}}^l \\
w_{21}^l & w_{22}^l & \cdots & w_{2\ N_{l-1}}^l \\
\vdots & \vdots & \ddots & \vdots \\
w_{N_l\ 1}^l & w_{N_l \ 2}^l & \cdots & w_{N_l\ N_{l-1}}^l
\end{bmatrix} \in \mathbb R ^{N_l \times N_{l-1}} \\ \\
b^l = \begin{bmatrix} 
b^l_1 \\ \vdots \\ b^l_{N_l} 
\end{bmatrix}\in \mathbb R^{N_l}
\end{gather}
$$
- $\large w^l_{nk}$ é o peso do $n$-ésimo nó para uma determinada entrada $k$ na camada $l$
- $\large b_n^l$ é o viés[^1] do nó $n$ na camada $l$

Temos que a saída do nó $n$ na camada $l$ antes da [[#Funções de Ativação|ativação]] se dá por
$$\Large z_n^l = \sum^{N_{l-1}}_{k=1}w_{nk}^la_k^{l-1} + b^l_n$$
E a saída de toda a camada $l$ dado $\large \sigma$ como a função de ativação
$$
\Large
\begin{align}
z^l =  W^l a^{l-1} + b^l \in \mathbb R ^{N_l}
&& \rightarrow &&
\Large a^l = \sigma(z^l) \in \mathbb R^{N_l}
\end{align}$$
Procuramos encontrar um conjunto $W$ de matrizes de hiperparâmetro que minimizem o [[Função de Perda#Risco Empírico|risco empírico]] do nosso conjunto de treinamento $D_m$
$$\Large
\begin{gather}
\hat y_i = \hat f_{(W,b)} (x_i) \\ \\
J(W,b) = \frac{1}{m} \sum_{i=1}^m 
\ell\ (y_i,\hat f_{(W,b)}(x_i))
\end{gather}
$$
- Para problemas de [[regressão]] e [[classificação]] tipicamente se usa a [[Função de Perda#Função de Perda Quadrática|função de perda quadrática]] em $\ell$
- // cross entropy todo

## Taxa de Aprendizado e Backpropagation

Geralmente queremos otimizar a rede neural por meio de um [[Algoritmos Gulosos|algoritmo guloso]] que visa seguir um determinado gradiente a fim de minimizar nosso erro, assim, a [[Perceptron#Função de Perda|função de perda]] $\large \ell_{\text{pct}}$ não é ideal pois esta não é diferenciável em nenhum ponto[^2].
$$\large (W^*,b^*) = (W,b) - \eta \nabla (W,b) $$
Dizemos que $\eta$ é a nossa taxa de aprendizado.
## Funções de Ativação

Procuramos uma função $\large \sigma$ que aumente junto com o risco empírico e seja diferenciável em todo seu domínio.
### Tangente Hiperbólica
$$\large\sigma(z) = \tanh (z)$$
Tem um formato semelhante à função logística / sigmoide, é limitada e diferenciável em todo seu domínio. Para graus muito altos de $z$ o gradiente é muito baixo.
### Função ReLU
É uma função linear onde 
$$\large \sigma(z) = \max\{0,z\}$$
Extremamente rápida, todavia para $z \lt 0$ temos um gradiente nulo, e o neurônio efetivamente morre e nunca é reativado, para retificar este problema pode-se usar a função Leaky ReLU
$$\large \sigma(z) = \max\{\alpha z,z \}$$
Onde $\alpha$ é um valor pequeno

[^1]: Intercept

[^2]: Tecnicamente ela é diferenciável, mas a derivada é sempre 0, você entendeu o que eu quis dizer não seja pedante >:(
