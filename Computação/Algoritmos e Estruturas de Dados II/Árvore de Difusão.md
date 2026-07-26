---
tags:
  - incompleto
  - computação
authors: Júlio César
---
## Definição

A árvore de difusão (_Splay Tree_) é uma [[árvore]] [[Árvore#Árvore Enraizada|enraizada]] [[Árvore#Árvore Binária|binária]] que visa melhorar o tempo médio de busca de uma [[Árvore Binária de Busca|ABB]] por meio de processos de amortização, enquanto a ABB é otimizada para acessos aleatórios, a árvore de difusão possui uma propriedade de autoajuste, onde ela tenta aproximar chaves mais recentemente buscadas a raiz, a fim de minimizar o número de níveis necessários para chegar em nós mais frequentes.

Para casos de acesso não-aleatório, a árvore de difusão pode apresentar resultados melhores, especialmente quando a maioria das buscas convergem em uma pequena minoria dos nós da árvore.

## Splaying

É a operação de rebalanceamento executada em cada acesso na estrutura, seja numa busca, adição ou remoção. No procedimento de acessar uma determinada chave $\large x$, o _spraying_ visa trazer $\large x$ para perto da árvore. A execução do splaying depende também do pai de $\large x$, denominado $\large p$, e o pai de $\large p$, denominado $\large g$.

A partir do lado que $\large x$ é de $\large p$, e do lado que $\large p$ é de $\large g$, efetuam-se [[Árvore Binária de Busca#Balanceamento e Rotações|rotações]] que visam aproximar $\large x$ a raiz.
- Se $\large x$ e $\large p$ são filhos esquerdos, uma rotação direita é feita em $\large g$ e outra em $\large p$. Caso ambos sejam filhos direitos, uma rotação esquerda equivalente é feita.
- Se $\large x$ é filho esquerdo e $\large p$ é filho direito, duas rotações direitas são feitas em $\large g$. Se $\large x$ é filho direito, 
- Caso $\large p$ seja a raiz, $\large g$ não existe, se $\large p$ é filho esquerdo deve ser feita uma rotação direita em $\large g$, caso contrário deve ser feita uma rotação esquerda.
- Caso $\large x$ seja raiz, nada deve ser feito.
## Custo de Execução

$$\large
\begin{gather}
& \text{Pior Caso}  & \text{Amortizado} \\
\text{Busca} & O(n) & O(\log n) \\ 
\text{Remoção}& O(n) & O(\log n)  \\
\text{Adição}& O(n) & O(\log n) 
\end{gather}$$

Uma árvore de difusão, pode, em tese, ter a topologia de uma [[lista ligada]] em casos raros, embora a [[complexidade assintótica]] do algoritmo seja tecnicamente inferior a de uma [[Árvore Binária de Busca|ABB]], em ambientes onde a maioria dos acessos é de um pequeno conjunto de nós teria um custo real muito melhor do que em uma ABB. Assim como suas estruturas semelhantes sua complexidade de espaço é $\large O(n)$.

//TODO ABBs binárias de busca? Não seriam as balanceadas? enfim