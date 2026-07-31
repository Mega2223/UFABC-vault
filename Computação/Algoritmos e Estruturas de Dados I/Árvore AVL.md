---
tags:
  - incompleto
  - computação
cssclasses:
authors: Júlio César
---
## Definição

Árvores de tipo Adelson-Velsky e Landis (AVL) são [[Árvore Binária de Busca]] que implementa operações de modificação da topologia da árvore de forma a manter o balanceamento da árvore a fim de manter a altura na escala $\large O(\log n)$, garantindo o custo assintótico mínimo da operação de busca. A AVL é o melhor caso para uma árvore onde todo nó tem a mesma probabilidade de ser buscado, caso haja uma assimetria idealmente queremos que os nós mais buscados estejam [[Árvore de Difusão|mais perto da raiz da árvore]].
## Operações

### Busca
A busca em AVL é a mesma busca que [[Árvore Binária de Busca#Operações|em qualquer ABB]], possui custo de tempo $\large O (\log n)$ garantido pela propriedade de balanceamento da árvore.
### Inserção
A inserção em uma AVL pode causar um desbalanceamento na árvore, afim de manter a altura mínima é necessário recalcular o [[#Balanceamento|balanceamento]] de todos os nós da folha até a raiz, e caso haja um desbalanceamento, [[#Balanceamento e Rotações|rotações]] para rebalancear a árvore.

São necessárias $\large h$ verificações e no máximo $\large h$ rotações, cada rotação possui um número fixo de instruções, fazendo a operação de inserção ter um custo assintótico de pior caso $\large O(\log n)$. Como a implementação de inserção é um algoritmo [[Recursão|recursivo]] essa implementação custa $\large O(\log n)$ no espaço.
### Remoção
Caso o nó removido tenha um único filho, pode-se ligar o seu único filho diretamente ao seu pai, essa operação pode gerar desbalanceamento, então todo nó acima do filho deve ser rebalanceado caso necessário.

Para um nó com dois filhos, é necessária uma busca 

## Balanceamento e Rotações

A árvore binária de busca representa uma lista ordenada de elementos, embora sua estrutura não seja linear, ela é ordenável e indexável, para implementações típicas de lista, queremos suporte a operações de remoção e adição em um tempo razoável. 

Embora uma implementação ingênua dos métodos de inserção e remoção seja trivial, tipicamente queremos que a árvore mantenha tempos de acesso assintoticamente razoáveis durante todo o seu uso, como a pesquisa em árvores é linear em função de sua altura, o ideal é uma altura mínima. A árvore, em pior caso, tem a topologia de uma [[lista ligada]], e, no melhor caso, é uma [[#Altura|árvore completa]]. Caso a inserção perturbe o equilíbrio do objeto, é necessário fazer alterações que simultaneamente mantenham a otimalidade da altura e a ordenação da lista. Uma árvore que mantém esse balanceamento é dita uma árvore binária de busca balanceada (AVL).
### Balanceamento
O balanceamento define a tendência da árvore de ter elementos de forma desproporcional para algum lado, cada nó possui seu próprio coeficiente de balanceamento, se todos os nós possuem um balanceamento no intervalo $\large [-1,1]$, então a árvore está balanceada, caso contrário, ela precisa ser balanceada.
$$\large \text{bf}(v) := 
\text h(\text{left}(v)) - \text h((\text{right}(v))
$$
Existem quatro tipos de desbalanceamento em uma árvore, Left-Left (LL), Left-Right (LR), Right-Left (RL), Right Right (RR). Esses desbalanceamentos são de referência à subárvore do nó desbalanceado, um desbalanceamento LL é quando a sua subárvore esquerda possui um desbalanceamento na esquerda, um LR é quando sua subárvore direita possui desbalanceamento na direita, RL é quando sua subárvore direita possui desbalanceamento a esquerda e RR é quando sua subárvore direita possui desbalanceamento a direita.

A rotação é uma manobra de balanceamento que preserva a ordenação da árvore, o nó que é [[#Balanceamento|desbalanceado]] é denominado o nó critico, e uma rotação em relação a esse nó é aplicada. A rotação sempre é aplicada o nó crítico de menor altura na árvore.
### Rotação R e  L
Quando um nó $\large v$ possui desbalanceamento na esquerda e seu componente esquerdo $\large v_\leftarrow$ também possui desbalanceamento na esquerda, a operação visa, afim de manter a ordenação, colocar $\large v_\leftarrow$ acima dos demais nós da subárvore, onde $\large v_\leftarrow$ aponta para $\large v$ na direita e para seu lado desbalanceado na esquerda, o lado direito que antes era de $\large v_\leftarrow$ agora fica como lado esquerdo de $\large v$ .

// TODO
### Rotação LR

### Rotação RL

