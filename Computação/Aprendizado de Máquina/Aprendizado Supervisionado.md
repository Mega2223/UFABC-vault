---
tags:
  - algoritmo
  - matemática
  - computação
  - estatística
authors: Júlio César
---
## Definição

São técnicas de aprendizado supervisionado aquelas que visam predizer o comportamento de uma determinada caixa preta (abstraída como função) com base em um determinado conjunto de dados conhecido, são técnicas de aprendizado supervisionado a [[classificação]] e a [[regressão]].

De forma geral, a partir de um número de medidas feitas queremos treinar um modelo para que ele possa generalizar a saída da nossa função desconhecida.

## Variáveis

### Conjunto de preditores e de rótulos
São considerado preditores as variáveis independentes que causa uma mudança nos rótulos na nossa função desconhecida, de forma geral:
$$\large\begin{gather}
 x_i \in X \subseteq \mathbb{R}^n \\ \\
y_i \in Y
\end{gather}$$
$Y \subseteq \mathbb{R}$ no caso de regressão, mas no caso de classificação $Y$ é um número finito de categorias.
### Conjunto de treinamento
Conjunto de variáveis independentes e respostas conhecidas, geralmente com alguma flutuação aleatória.
$$\large \begin{gather}
D_m = \{(x_i,y_i)\}^m_{i=1} & x_i \in X, y_i \in Y
\end{gather}$$

### Função
A função é o processo que relaciona $X$ e $Y$, de forma geral não conhecemos o comportamento de $f$, e precisamos encontrar tal $\hat{f}$ que melhor replica o comportamento de $f$.
$$\large f: X \to Y$$
Para encontrar funções que replicam $f$ normalmente se busca matematicamente minimizar uma determinada [[Função de Perda|função penalizadora]] do modelo.

## Tradeoff Variância / Viés

Curvas de erros conforme parametrizamos certos modelos (como o [[KNN]]) têm um formato de hipérbole para o conjunto de testes conforme a complexidade do algoritmo aumenta, enquanto para o conjunto de treinamento o erro normalmente diminui a medida que a função se torna mais complexa.

Em geral queremos encontrar uma $\hat{f}$ que generalize a relação entre os preditores e os rótulos como conjunto, levando em conta ainda que há uma variância incorrigível, logo a função gerada deve procurar replicar o comportamento da $f$ original, minimizando o erro de viés e a variância.
### Overfitting
Quando há uma alta variância de $\hat{f}$ e um baixo erro no conjunto de treinamento, mas não no de testes, temos um exemplo de overfitting, onde o algoritmo em vez de generalizar simplesmente encontra uma função que minimiza a função de perda somente para o conjunto de treinamento, modelos com overfitting tendem em ter uma alta diferença entre o erro no conjunto de treinamento e o de testes.
### Underfitting
Do outro lado do _tradeoff_, temos underfitting, que é quando o modelo falha em encontrar uma relação até mesmo dentro do conjunto de treinamento, ou seja, não é necessário comparar com o conjunto de testes. Modelos com underfitting normalmente sofrem de uma falta de complexidade de entendimento da relação entre as variáveis preditoras e os rótulos do problema.

## Validação Cruzada

Para minimizar problemas de [[Aprendizado Supervisionado#Tradeoff Variância / Viés|overfitting]], se usa a validação cruzada dos dados, pegamos o conjunto $D_m$ e o dividimos aleatoriamente em $V$ conjuntos de tamanho idêntico (normalmente $V = 5$ ou $V = 10$).

São computadas $V$ iterações (_folds_) onde em cada uma:
- É treinado um modelo em $V-1$ partes ( _Analisys Set_ )
- A parte que ficou de fora do treinamento serve como conjunto de testes ( _Assessment Set_ )

Os valores finais são uma média aritmética dos valores encontrados em cada treinamento de modelo.
### Erro de Validação Cruzada
Para casos de regressão, em validação cruzada se como [[função de perda#Risco esperado|risco]] o erro de validação cruzada:
$$
\begin{gather}
\large R_{CV}(\hat{f}) = \frac{1}{V} \sum_{i = 1}^V
\bigg\{
\frac{1}{m_i} \sum_{j=1}^{m_i}\ell(y_{i_j},\hat{f}(x_j))
\bigg\}
\end{gather}
$$

### Leave-One-Out
De forma geral, o método Leave-One-Out é a validação cruzada onde $V = m$, ou seja, em cada _fold_ só é utilizado um ponto como conjunto de testes. É considerado computacionalmente caro para datasets muito grandes.