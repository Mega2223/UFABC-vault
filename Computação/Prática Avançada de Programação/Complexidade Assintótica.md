---
tags:
  - algoritmo
  - computação
  - incompleto
  - matemática
authors: Júlio César
---
## Definição

A notação assintótica é o meio mais comum de descrever o número de operações básicas[^1] que um determinado #algoritmo usa para completar uma determinada tarefa. Embora possa-se avaliar qualquer função sob notação assintótica, seu principal uso é determinar o tempo e o uso de memória de um determinado algoritmo.[^2]

## Big-$O$

A notação Big-$O$ é uma notação que define o comportamento de uma determinada função quando seu parâmetro tende ao infinito. Em geral a notação serve como limite superior do tempo de execução do algoritmo dado um determinado parâmetro genérico.

Dadas as funções $\large f: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$ e $\large g: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$,
$$\large
\begin{gather}
f(n) \in O(g(n)) \iff \exists\ (c\in \mathbb{R}^{x\gt0},n_0 \in\mathbb{R}^{x\ge0})\ f(n) \le c\ \cdot\ g(n)\ \forall (n \ge n_o)
\end{gather}
$$

## Small-$o$

Small-$o$ define algum limite estritamente superior da função, de forma geral $f(n)$ é $O(g(n))$ quando $g$ cresce muito mais rápido que $f$ quando ambas tendem ao infinito.

Dadas as funções $\large f: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$ e $\large g: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$,
$$\large
f(n)\in o(g(n)) \iff \forall (c \in \mathbb{R}^{x\gt0})\ \exists(n_0\in \mathbb{R}^{x\ge0})\ f(n) \le c\ \cdot\ g(n)\ \forall (n \ge n_0)
$$
Nota-se que a função exige que a condição seja verdade para toda constante positiva $c$, ao contrário da notação [[#Big-$O$|Big-O]], conclui-se que $o(g) \subset O(g)$ para uma determinada função $f$. Presumindo $f$ e $g$ contínuas em $\mathbb{R}^+$, temos que
$$\large f(n)\in o(g(n)) \iff \lim_{n\to\infty} \frac{f(n)}{g(n)} = 0$$
## Big-$\Omega$

A notação Big-$\Omega$ define um limite _inferior_ no comportamento de função quando a mesma tende ao infinito. 

Dadas as funções $\large f: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$ e $\large g: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$,
$$\large f(n) \in \Omega(g(n)) \iff \exists(c\in \mathbb{R}^{x\gt0},n_0\in \mathbb{R}^{x\ge0})\ 0 \le c\ \cdot g(n) \le f(n)\ \forall (n \ge n_0)$$
A notação é utilizada para descrever o tempo de melhor caso de um determinado algoritmo. Possui uma propriedade de dualidade com a notação [[#Big-$O$|Big-O]], onde
$$\large f(n)\in \Omega(g(n)) \iff g(n) = O(f(n))$$
## Little-$\omega$

A notação Little-$\omega$ representa um limite mais estritamente inferior na função

Dadas as funções $\large f: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$ e $\large g: \mathbb{R}^{x\ge0} \to \mathbb{R}^{x\ge0}$,
$$\large
f(n)\in \omega(g(n)) \iff \forall (c \in \mathbb{R}^{x\gt0})\ \exists(n_0\in \mathbb{R}^{x\ge0})\ \ 0 \le c\ \cdot g(n) \le f(n)\ \forall (n \ge n_0)
$$
## Big-$\Theta$

//todo

## Equivalência Assintótica

Duas funções $f$ e $g$ são ditas assintoticamente equivalentes quando elas crescem em ordem similar
$$\large f(x) \sim g(x) \iff \lim_{x\to\infty} \frac{f(x)}{g(x)} = 1$$

[^1]: Também é usada pra medir a quantidade de memória e alguns outros parâmetros do algoritmo. Em tese você pode usar isso em qualquer função definida em $\mathbb{R}^{\ge0}$, mas é mais comum se usar ela em computação para funções discretas.

[^2]: Sim, também é bastante usada em teoria analítica dos números, mas eu sou um estudante de BCC e o personagem principal do mundo.
