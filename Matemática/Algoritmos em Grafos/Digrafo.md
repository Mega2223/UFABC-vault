---
tags:
  - matemática
  - matemática-discreta
  - algoritmo
  - incompleto
authors: Júlio César
aliases:
---
## Definição

O digrafo / grafo direcionado é uma estrutura relacional de dados finitos, em contramão ao [[grafo]], o digrafo permite relações assimétricas entre vértices, essas relações são denominadas de arcos.
$$\Large \text{G} =\{\text{V},\text{E}\}$$

- $\text{V}$ é o conjunto de vértices
- $\text{E}$ é o conjunto de arcos

Onde temos dois mapas $\large s,t: E \to V$ onde $s(e)$ é a fonte de $e$ e $t(e)$ é o alvo de $e$. O digrafo por definição permite um arco começar e acabar no mesmo vértice.

## Passeio

Em um digrafo, o passeio é 
## Caminho
## Propriedades

### Densidade
Para um grafo direcionado //todo
### Conectividade Fraca
Um digrafo é dito fracamente conexo quando o grafo produzido a partir da substituição dos arcos do digrafo por vértices é [[Grafo#Conectividade|conexo]].
### Conectividade Forte
Um digrafo é dito fortemente conexo se para cada par de vértices existe algum [[#caminho|caminho]] entre os vértices.
### Grau de Entrada
O grau de saída de algum $v \in V$ é o número de arcos que começam em $v$
$$\large \deg^+ (v \in V) = |\{d \in E / d_0 =v\}|$$
### Grau de Saída