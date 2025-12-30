---
tags:
  - teoria-de-grafos
  - algoritmo
  - incompleto
authors: Júlio César
---
## Definição

É um método para resolver o [[Controle de Fluxo|problema de fluxo máximo]]. É um método generalizado que pode ser implementado de diversas formas, ou seja, não chega a ser um algoritmo.

```pseudo
\begin{algorithm}
\caption{Ford-Fulkerson Method}
\begin{algorithmic}
\Procedure{FFS}{$G,s,t$}
\State $\large f \leftarrow 0$
\While{$\text{Existe um caminho aumentador }{\large p} \text{ em } {\large G_f}$}
\State $\large f \leftarrow (f \uparrow f_p)$
\EndWhile
\EndProcedure
\end{algorithmic}
\end{algorithm}
```

O algoritmo pode convergir em um fluxo máximo, todavia a implementação depende de como encontramos o nosso [[Controle de Fluxo#Caminho Aumentador|caminho aumentador]].
## Algoritmo

