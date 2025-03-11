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
$Y \in \mathbb{R}$ no caso de regressão, mas no caso de classificação $Y$ é um número finito de categorias.
### Conjunto de treinamento
Conjunto de variáveis independentes e respostas conhecidas, geralmente com alguma flutuação aleatória.
$$\large \begin{gather}
D_m = \{(x_i,y_i)\}^m_{i=1} & x_i \in X, y_i \in Y
\end{gather}$$

### Função
A função é o processo que relaciona $X$ e $Y$, de forma geral não conhecemos o comportamento de $f$, e precisamos encontrar tal $\hat{f}$ que melhor replica o comportamento de $f$.
$$\large f: X \to Y$$