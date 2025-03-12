---
tags:
  - computação
  - estatística
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

É qualquer técnica que envolve encontrar a correlação entre um grupo de variáveis individuais $X$ e suas variáveis de resposta $Y$ a fim de inferir o comportamento de uma determinada função $f$, de forma geral:
$$\large Y = f(X) + \epsilon$$
Onde $\epsilon$ é o termo de erro, que possui média zero (geralmente em uma [[Léxico de Distribuições de Probabilidade#Distribuição Normal|distribuição normal]]).
## Predição

Nas situações onde há um grande número de variáveis em $X$ mas não em $Y$, temos a predição do modelo
$$\large\hat{Y} = \hat{f}(X)$$
Onde $\hat{f}$ é a estimativa de $f$, cujo objetivo é gerar o $\hat{Y}$ de maior acurácia. ($\epsilon$ ausente pois têm média nula).
## Acurácia

São considerados dois tipos de erro para a avaliação da acurácia, erro reduzível e erro não reduzível, o erro reduzível é o erro que pode ser eliminado com uma $\hat{f}$ de melhor precisão, enquanto o erro não reduzível é derivado de $\epsilon$ e têm média $0$. Dado um determinado $\hat{f}$, temos:
$$\large E(Y-\hat{Y})^2 = [f(X) - \hat{f}(x)]^2 + \text{Var}(\epsilon)$$
Onde $E(Y-\hat{Y})^2$ é o quadrado do [[Axiomas da probabilidade#Valor esperado|valor esperado]] do erro de $Y$ e a predição de $Y$.

## Medindo a acurácia de um modelo

Para medir a acurácia de um modelo dado um conjunto de treinamento ou um conjunto de testes, pode-se usar o _mean squared error_ como [[Função de Perda|função penalizadora]]:
$$\large \text{MSE} = \frac{1}{n} \sum_{i=1}^n(y_i - \hat{f}(x_i))^2$$
