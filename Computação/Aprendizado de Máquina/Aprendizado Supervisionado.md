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
 x_i \in \mathcal{X} \subseteq \mathbb{R}^n \\ \\
y_i \in \mathcal{Y}
\end{gather}$$
$\mathcal{Y} \subseteq \mathbb{R}$ no caso de regressão, mas no caso de classificação $\mathcal{Y}$ é um número finito de categorias.
### Conjunto de treinamento
Conjunto de variáveis independentes e respostas conhecidas, geralmente com alguma flutuação aleatória.
$$\large \begin{gather}
D_m = \{(x_i,y_i)\}^m_{i=1} & x_i \in \mathcal{X}, y_i \in \mathcal{Y}
\end{gather}$$
### Função
A função é o processo que relaciona $X$ e $Y$, de forma geral não conhecemos o comportamento de $f$, e precisamos encontrar tal $\hat{f}$ que melhor replica o comportamento de $f$.
$$\large f: \mathcal{X} \to \mathcal{Y}$$
Para encontrar funções que replicam $f$ normalmente se busca matematicamente minimizar uma determinada [[Função de Perda|função penalizadora]] do modelo.

## Tradeoff Variância / Viés

Curvas de erros conforme parametrizamos certos modelos (como o [[KNN]]) têm um formato de hipérbole para o conjunto de testes conforme a complexidade do algoritmo aumenta, enquanto para o conjunto de treinamento o erro normalmente diminui a medida que a função se torna mais complexa.
$$\large \begin{gather}
\text{Bias} = \text{E}[\hat{f}(x_0)] - f(x_0) \\ \\
\text{Var} = \text{E}[\hat f(x) - \text E[\hat f(x)^2]\ ] 
\end{gather}$$
Em geral queremos encontrar uma $\hat{f}$ que generalize a relação entre os preditores e os rótulos como conjunto, levando em conta ainda que há uma variância incorrigível, logo a função gerada deve procurar replicar o comportamento da $f$ original, minimizando o erro de viés e a variância.
### Overfitting
Quando há uma alta variância de $\hat{f}$ e um baixo erro no conjunto de treinamento, mas não no de testes, temos um exemplo de overfitting, onde o algoritmo em vez de generalizar simplesmente encontra uma função que minimiza a função de perda somente para o conjunto de treinamento, modelos com overfitting tendem em ter uma alta diferença entre o erro no conjunto de treinamento e o de testes.
### Underfitting
Do outro lado do _tradeoff_, temos underfitting, que é quando o modelo falha em encontrar uma relação até mesmo dentro do conjunto de treinamento, ou seja, não é necessário comparar com o conjunto de testes. Modelos com underfitting normalmente sofrem de uma falta de complexidade de entendimento da relação entre as variáveis preditoras e os rótulos do problema.

## Validação do Modelo

A validação do modelo visa avaliar a performance de um determinado modelo de [[aprendizado supervisionado]] e gerar uma estimativa do erro que o modelo pode acabar gerando para dados futuros.
### Validação com Treinamento e Teste
Consiste em dividir o nosso conjunto de pontos conhecidos entre dois conjuntos, um usado para ao treinamento do modelo e o outro usado para o teste. Tipicamente temos o conjunto de treinamento sendo o maior (recomenda-se uma proporção 4-1). O conjunto de treinamento serve como amostra para o cálculo minimizador da [[função de perda]] do modelo, enquanto o conjunto de testes $T \subset D_m$ serve para avaliar o [[Função de Perda#Risco Empírico|risco empírico]] de variáveis que o modelo não conhece.

### Validação Cruzada
Para minimizar problemas de [[Aprendizado Supervisionado#Tradeoff Variância / Viés|overfitting]], se usa a validação cruzada dos dados, pegamos o conjunto $D_m$ e o dividimos aleatoriamente em $V$ conjuntos de tamanho idêntico (normalmente $V = 5$ ou $V = 10$).

São computadas $V$ iterações (_folds_) onde em cada uma:
- É treinado um modelo em $V-1$ partes ( _Analisys Set_ )
- A parte que ficou de fora do treinamento serve como conjunto de testes ( _Assessment Set_ )

Os valores finais são uma média aritmética dos valores encontrados em cada treinamento de modelo.
#### Erro de Validação Cruzada
Para casos de regressão, em validação cruzada se usa como [[função de perda#Risco esperado|risco]] o erro de validação cruzada:
$$
\begin{gather}
\large R_{CV}(\hat{f}) = \frac{1}{V} \sum_{i = 1}^V
\bigg\{
\frac{1}{m_i} \sum_{j=1}^{m_i}\ell(y_{i_j},\hat{f}(x_j))
\bigg\}
\end{gather}
$$
#### Leave-One-Out
De forma geral, o método Leave-One-Out é a validação cruzada onde $V = m$, ou seja, em cada _fold_ só é utilizado um ponto como conjunto de testes. É considerado computacionalmente caro para datasets muito grandes.

## Avaliação da Acurácia do Modelo

Em geral, queremos um modelo que minimize o [[Função de Perda|erro]] do conjunto de treinamento de forma matemática, mas ainda sim é necessário provar uma correlação significativa entre $\hat{f}$ e $f$. Uma forma comum de avaliar a acurácia do modelo é simplesmente colocar nosso conjunto de testes contra a nossa função de erro, a [[Variáveis Aleatórias Discretas#Variância|variância]], ou [[Variáveis Aleatórias Discretas#Desvio padrão|desvio padrão]].
## $p$-valor

O $p$-valor é a probabilidade de se obter uma estatística de teste mais extrema[^1] de uma observada sobre a hipótese nula[^2], ou seja, um $p$-valor muito pequeno (normalmente usa-se 5% como corte) indica que a obtenção de um valor de teste observado é muito improvável sob a hipótese nula, logo rejeita-se a mesma. O $p$-valor é um bom jeito de verificar se há correlação entre os rótulos conhecidos e a predição desses mesmos rótulos.

[^1]: Com um desvio do esperado.

[^2]: Presumindo nenhuma correlação entre dois eventos.
