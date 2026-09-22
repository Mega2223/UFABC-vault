---
tags:
  - computação
  - estatística
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

É qualquer método de [[aprendizado supervisionado]] que envolve encontrar a correlação entre um grupo de variáveis independentes e seu valor de resposta $\large(x_i, y_i)$ a fim de inferir o comportamento de um determinado processo em forma de função $\large f$, de forma geral, presumimos que existe uma $\large f$ real tal que:
$$\large Y = f(X) + \epsilon$$
Onde $\large \epsilon$ é o termo de erro, que possui média zero (geralmente, presume-se a distribuição de probabilidade de valores de $\large \epsilon$ se dá em uma [[Léxico de Distribuições de Probabilidade#Distribuição Normal|distribuição normal]]). De forma geral, a regressão é a inferência de um processo que possui uma resposta numérica.
### Predição
A predição do modelo se dá por
$$\large\hat{Y} = \hat{f}(X)$$
Onde $\large \hat{f}$ é a estimativa de $\large f$, cujo objetivo é gerar o $\large \hat{Y}$ de maior acurácia. ($\large \epsilon$ ausente pois têm média nula).
## Acurácia

São considerados dois tipos de erro para a avaliação da acurácia, erro reduzível e erro não reduzível, o erro reduzível é o erro que pode ser eliminado com uma $\large\hat{f}$ de melhor precisão, enquanto o erro não reduzível é derivado de $\large\epsilon$ e têm média $\large 0$. Dado um determinado $\large\hat{f}$, temos:
$$\large E(Y-\hat{Y})^2 = [f(X) - \hat{f}(x)]^2 + \text{Var}(\epsilon)$$
Onde $\large E(Y-\hat{Y})^2$ é o quadrado do [[Axiomas da probabilidade#Valor esperado|valor esperado]] do erro de $Y$ e a predição de $Y$.

## Medindo a acurácia de um modelo

Para medir a acurácia de um modelo dado um conjunto de treinamento ou um conjunto de testes, normalmente se usa o _mean squared error_ como [[Função de Perda|função penalizadora]]:
$$\large \text{MSE} = \frac{1}{n} \sum_{i=1}^n(y_i - \hat{f}(x_i))^2$$
