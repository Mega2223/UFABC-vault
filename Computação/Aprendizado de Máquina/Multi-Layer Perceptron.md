---
tags:
  - computação
  - incompleto
---
## Definição

Um Multi-Layer Perceptron (MLP) é uma [[rede neural]] que é constituída de um encadeamento de camadas de [[Perceptron|perceptrons]] e funções de ativação, de forma que o valor-saída calculado do perceptron na $\large n$-ésima camada se dá pela soma dos valores da camada $\large n-1$ passados por alguma determinada [[#Funções de Ativação|função de ativação]].

O MLP é um modelo que é constituído de uma camada de entrada, uma camada de saída e algum número de camadas internas, que são ditas camadas ocultas, cada camada possui uma determinada função de ativação não linear.

A rede neural é dividida em um determinado número de $\large L$ camadas, onde um perceptron de uma determinada camada $\large l$ comuta todos os perceptrons da camada anterior com seus pesos locais. Tendo $\large N_l$ o número de perceptrons na camada $\large l$, temos que existem $\large N_{l-1}$ vetores de pesos para cada perceptron em $l$, podemos representar essa relação em duas matrizes, onde a camada $\large l$ é representada pela matriz $\large W^l \in \mathbb R ^{N_l \times N_{l-1}}$ e a matriz $\large b^l \in \mathbb R^{N_l}$:
$$\large 
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
- $\large w^l_{nk}$ é o peso para uma determinada entrada $\large k$ no do $\large n$-ésimo nó da camada $\large l$
- $\large b_n^l$ é o viés[^1] do nó $\large n$ na camada $\large l$

Temos que a saída do nó $\large n$ na camada $\large l$ antes da [[#Funções de Ativação|ativação]] se dá por
$$\Large z_n^l = \sum^{N_{l-1}}_{k=1}w_{nk}^la_k^{l-1} + b^l_n$$
O valor de todas as saídas da camada é dada pelo vetor $\large z^l$ em forma da operação matricial:
$$
\large
\begin{align}
z^l \in \mathbb R^{N_l} :=  W^l a^{l-1} + b^l 
\end{align}$$
E a da camada $\large l$ dada uma determinada função de ativação $\large \sigma: \mathbb R \to \mathbb R$ é dada por $\large a^{l}$, de forma que
$$\large a^l \in \mathbb R^{N_l} := \sigma(z^l)$$
Notavelmente isso só funciona caso $\large 2 \le l \le L$, para $\large l=1$ estamos em uma camada de entrada, os valores são dados pelos dados do modelo, o resultado de $\large a^L$ é o nosso vetor de saída.
## Treinamento

Os hiperparâmetros de um MLP são os valores escalares das matrizes $\large W= \{W_1,W_2,\dots,W_L\}$ e dos vieses $\large b= \{b^2,\dots,b^L\}$, visamos encontrar um conjunto de hiperparâmetros que minimizem o [[Função de Perda#Risco Empírico|risco empírico]] do nosso conjunto de treinamento $\large D_m$
$$\large
\begin{gather}
\hat y_i = \hat f_{(W,b)} (x_i) \\ \\
J(W,b) = \frac{1}{m} \sum_{i=1}^m 
\ell\ (y_i,\hat f_{(W,b)}(x_i))
\end{gather}
$$
- Para problemas de [[regressão]] e [[classificação]] tipicamente se usa a [[Função de Perda#Função de Perda Quadrática|função de perda quadrática]] em $\large \ell$
- // cross entropy todo

### Taxa de Aprendizado e Backpropagation
Geralmente queremos otimizar a rede neural por meio de um [[Algoritmos Gulosos|algoritmo guloso]] que visa seguir um determinado gradiente a fim de minimizar nosso erro, assim, a [[Perceptron#Função de Perda|função de perda]] $\large \ell_{\text{pct}}$ não é ideal pois esta não é diferenciável em nenhum ponto[^2]. De forma geral, uma fase de treinamento é da forma
$$\large (W^*,b^*) = (W,b) - \eta \nabla (W,b) $$
Dizemos que $\large \eta$ é a nossa taxa de aprendizado. O gradiente $\large \nabla (W,b)$ é calculado por meio de retro-propagação, ou backpropagation, de forma geral, observamos algum determinado ponto $\large (x_i,y_i)$, considerando o uso da função de perda quadrática, temos que
$$\large j_i(W,b) = \sum^{N_l}_{s=1} \bigg( \overline
y - f_s(x_i) \bigg) ^2$$
O gradiente calculado para cada um dos elementos é dado por
$$\large \frac{\partial}{\partial\ w^l_{nk}} j_i (W,b)$$
// todo termina isso
// eu acho melhor generalizar a jacobiana para qualquer função de ativação em vez de fazer igual o saul fez, até pq me parece q a ReLU é mais comum

## Funções de Ativação

Procuramos uma função não-linear[^3] $\large \sigma$ que aumente junto com o risco empírico e seja diferenciável em todo seu domínio.
### Tangente Hiperbólica
$$\large\sigma(z) = \tanh (z)$$
Tem um formato semelhante à função logística / sigmoide, é limitada e diferenciável em todo seu domínio. Para graus muito altos de $z$ o gradiente é muito baixo.
### Função ReLU
É uma função linear onde 
$$\large \sigma(z) = \max\{0,z\}$$
Extremamente rápida, todavia para $z \lt 0$ temos um gradiente nulo, e o neurônio efetivamente morre e nunca é reativado, para retificar este problema pode-se usar a função Leaky ReLU
$$\large \sigma(z) = \max\{\alpha z,z \}$$
Onde $\alpha$ é um valor pequeno

## Todo lol
// TODO explica o que é tunagem

// TODO also cade o backpropagation? AH É NÉ NÃO TEM O ARTIGO DE DERIVADA PARCIAL smt

// TODO also vc consegue fazer uns latexes de redes eu acho


[^1]: Intercept

[^2]: Tecnicamente ela é diferenciável, mas a derivada é sempre 0, você entendeu o que eu quis dizer não seja pedante >:(

[^3]: Se a função de ativação é linear, a saída do MPL é meramente uma combinação linear da entrada e se esse é o caso oq estamos fazendo aqui né amg
