---
tags:
  - matemática
  - geometria-analitica
  - computação
authors: Júlio César
---
## Definição

Dado um determinado [[modelo linear]], para encontrar a solução ótima pode-se usar de da resolução gráfica. Para fazer a resolução gráfica do modelo precisamos:

- Criar o modelo completo.
- [[Derivada|Derivar]] a função objetivo em um vetor.
- Colocar a área de soluções válidas em [[Esboço de Gráficos|um gráfico]].
- Procurar o [[hiperplano]] perpendicular à derivada com o maior/menor coeficiente linear (dependendo se é um problema de maximização ou minimização)
- Encontrar o ponto ou linha de soluções ótimas dentro desta linha.

### Exemplo

Para resolver um problema de duas variáveis $x_1, x_2$ onde:
$$\large \max (g) = -x_1 + x_2$$
$$
-x_1 + x_2 \le 2 \ \ \ \ \ \ \ 2x_1-x_2 \le 6 \ \ \ \ \ \ \ x_1\ge0, x_2\ge0
$$

A derivada da função objetivo claramente é o vetor $(-1,1)$
Plotando $x_1$ pro eixo x e $x_2$ pro eixo y temos:

![[Pasted image 20241022235314.png]]

Com a linha ortogonal à função, temos

![[Pasted image 20241022235334.png]]

A reta mais acima é a reta $y = x + 2$, o que podemos concluir é que:
- Existem infinitas soluções ótimas para este problema, uma vez que a reta intercede infinitos pontos dentro das restrições do problema.
- Uma dessas soluções ótimas é em $(0,2)$, ou seja, quando $x_1 = 0$ e $x_2 = 2$
<div style="display:flex; align-items:center; justify-content: center">

</div>