---
tags:
  - geometria-analitica
  - matemática
  - incompleto
authors: Júlio César
---
## Definição

Um espaço vetorial é um conjunto $\large \mathbb V$ sob o qual estão definidas as operações de adição e multiplicação escalar

$$
\large \begin{gather}
&\Huge \mathbb V \\ && \\
+: \mathbb V \times \mathbb V \to \mathbb V &&
\ \cdot : \mathbb V \times \mathbb R \to \mathbb V
\\\\
\forall (u,v,w) \in \mathbb V &&\forall(\alpha,\beta) \in \mathbb R\\
v + w = w + v &&(\alpha \beta) u = \alpha (\beta u) \\
(u+v)+w = u+(v+w) &&(\alpha + \beta) u = \alpha u + \beta u \\
\exists o \in \mathbb V,  v + o = v && (u+v)\alpha = \alpha u + \alpha v\\
\exists (-v), v + (-v) = o &&1u = u \\
\end {gather}
$$
## Propriedades

### Identidade e Negação
$$\large \begin{gather}
u = 1 \cdot u && u + (-1) \cdot u = 0
\end{gather}$$

###
## Espaços Vetoriais Válidos

### $\mathbb R ^d$
Qualquer conjunto $\mathbb R ^d$ para qualquer $d \in \mathbb N$ é um espaço vetorial válido, e todas as [[Vetor|operações padrão]] do $\mathbb R^3$ são coerentes com a definição de espaço vetorial. 

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
Logo, o conjunto de funções contínuas em $U$ constituem um espaço vetorial válido.
### Matrizes
Sejam $(A,B) \in \mathbb R ^ {d_1 \times d_2}$ [[matriz|matrizes]] de mesma dimensão, temos que a [[Matriz#Operações|a soma matricial e a multiplicação por escalar]] são o suficiente para qualificar o espaço $\mathbb R^{d_1 \times d_2}$ como um espaço vetorial.
## Subespaço Vetorial

Um subespaço vetorial é um determinado subconjunto do espaço vetorial que cumpre todos os requisitos necessários para ser um espaço vetorial. Seja $\mathbb V$ um espaço vetorial, $U \subseteq \mathbb V$ um subconjunto, $U$ é um subespaço vetorial se todas as operações que tornam $\mathbb V$ um espaço vetorial válido também servem para $U$, são subespaços vetoriais

- No $\mathbb R^2$, o conjunto $\{(x,y) \in \mathbb R ^2\ |\ x = y\}$ é um subespaço vetorial válido.[^1]

### Subespaços Triviais
São determinados subespaços triviais aqueles que pode-se razoavelmente assumir a partir de qualquer espaço vetorial, são os subespaços triviais de qualquer espaço $\mathbb V$:
$$\Large \begin{gather}
\mathbb V &\{o\}
\end{gather}$$

## Isomorfismo Entre Espaços

Sejam $U$ e $V$ quaisquer espaços vetoriais, um isomorfismo entre eles é uma [[função]] [[função#Injetividade e Sobretividade|bijetora]] $f: U \to V$ que
- $f(v + w) = f(v) + f(w) \ \forall v,w \in U$
- $f(cv) = cf(v)\ \forall (v \in U, c \in \mathbb R)$

Caso haja isomorfismo entre $U$ e $V$, dizemos que são isomorfos.

### Propriedades
- Espaços de [[Matemática/Álgebra Linear/Combinação Linear#Dimensão|dimensões diferentes]] nunca são isomorfos entre si.

[^1]: Isso vale para todas as linhas em $\mathbb R ^2$ que cruzam a origem, de forma mais geral podemos afirmar que vale para a condição $x = ky$ onde $k$ é uma constante real qualquer.
