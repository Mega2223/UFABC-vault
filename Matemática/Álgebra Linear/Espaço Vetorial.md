---
tags:
  - geometria-analitica
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

Um espaço vetorial é um espaço algébrico composto de um conjunto de elementos $\large V$ sob o qual estão definidas as operações de adição vetorial e multiplicação escalar

$$
\large \begin{gather}
&\Huge V \\ && \\
+: V \times V \to V &&
\ \cdot : V \times \mathbb R \to V
\\\\
\forall (u,v,w) \in V &&\forall(\alpha,\beta) \in \mathbb R\\
v + w = w + v &&(\alpha \beta) u = \alpha (\beta u) \\
(u+v)+w = u+(v+w) &&(\alpha + \beta) u = \alpha u + \beta u \\
\exists o \in V\ | \  v + o = v && (u+v)\alpha = \alpha u + \alpha v\\
\exists (-v\in V)\ |\ v + (-v) = o &&1u = u \\
\end {gather}
$$
## Propriedades

### Identidade e Negação
$$\large \begin{gather}
u = 1 \cdot u && u + (-1) \cdot u = 0
\end{gather}$$
## Espaços Vetoriais Válidos

### $\mathbb R ^d$
Qualquer conjunto $\large \mathbb R ^d$ para qualquer $\large d \in \mathbb N$ é um espaço vetorial válido, e todas as [[Vetor|operações padrão]] do $\large \mathbb R^3$ são coerentes com a definição de espaço vetorial. Tipicamente para o $\large \mathbb R^d$, denominamos o conjunto de vetores [[Produto Interno e Norma#Angulo, Ortogonalidade e Normalidade|ortonormais]] onde só há um elemento 1 de base canônica do $\large \mathbb R ^d$. Em $\large \mathbb R ^3$ notamos a base canônica como $\large\{\hat i, \hat j, \hat k\}$.

### Funções
Dado um intervalo contínuo $U$ e um conjunto de funções $f: U \to \mathbb R$, temos que, sejam $f$, $g$ e $h$ quaisquer funções definidas em todo $U$
$$
\large \begin{gather}
f(x) + g(x) = g(x) + f(x) \\
(f(x) + g(x)) + h(x) = f(x) + (g(x) + h(x)) \\
\forall k \in \mathbb R :k \cdot f(x) = kf(x) \\
0 f(x) = 0 \\
0 + f(x) = f(x)\\
k \cdot j \cdot f(x) = k (j \cdot f(x))
\end{gather}
$$
Logo, o conjunto de funções contínuas em $U$ constituem um espaço vetorial válido. Como não pode ser descrito em uma sequência finita de combinações lineares, este espaço é considerado infinitamente dimensional.
### Matrizes
Sejam $\large (A,B) \in \mathbb R ^ {d_1 \times d_2}$ [[matriz|matrizes]] de mesma dimensão, temos que a [[Matriz#Operações|a soma matricial e a multiplicação por escalar]] são o suficiente para qualificar o espaço $\large \mathbb R^{d_1 \times d_2}$ como um espaço vetorial.
## Subespaço Vetorial

Um subespaço vetorial é um determinado subconjunto do espaço vetorial que cumpre todos os requisitos necessários para ser um espaço vetorial. Seja $\large V$ um espaço vetorial, $\large U \subseteq \mathbb V$ um subconjunto, $\large U$ é um subespaço vetorial se todas as operações que tornam $\large V$ um espaço vetorial válido também servem para $\large U$, são subespaços vetoriais. Uma consequência dessa definição é que $\large U$ deve ter o vetor nulo para ser considerado subespaço.

- No $\mathbb R^2$, o conjunto $\large \{(x,y) \in \mathbb R ^2\ |\ x = y\}$ é um subespaço vetorial válido.[^1]

### Subespaços Triviais
São determinados subespaços triviais aqueles que pode-se razoavelmente assumir a partir de qualquer espaço vetorial, são os subespaços triviais de qualquer espaço $\large V$:
$$\Large \begin{gather}
 V &\{o\}
\end{gather}$$

### Propriedades
- Espaços de [[Matemática/Álgebra Linear/Combinação Linear#Dimensão|dimensões diferentes]] nunca são isomorfos entre si.

[^1]: Isso vale para todas as linhas em $\mathbb R ^2$ que cruzam a origem, de forma mais geral podemos afirmar que vale para a condição $x = ky$ onde $k$ é uma constante real qualquer.
