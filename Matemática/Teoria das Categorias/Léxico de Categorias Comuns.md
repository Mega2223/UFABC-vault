---
authors: Júlio César
tags:
  - matemática
  - teoria-das-categorias
  - incompleto
aliases:
---
## Categorias Pequenas
São [[Categoria#Categoria Pequena|categorias pequenas]] aquelas em que $\large \text{Ob}_{\mathcal C}$ é um conjunto.
### Categoria 0
A [[categoria]] que não tem objetos ou morfismos, só existe uma.
### Categoria 1
A [[categoria]] que só tem um objeto e um morfismo, por definição, esse morfismo deve ser o morfismo [[Categoria#Definição|identidade]], toda categoria-1 tem as mesmas propriedades de forma que possamos considerar a categoria-1 como uma única categoria.
## Categoria dos Conjuntos

A categoria dos conjuntos, denominada $\large \textbf {Set}$ é a [[categoria]] onde seus elementos são [[Conjunto|conjuntos]] e seus [[Categoria#Morfismo|morfismos]] são [[Função|funções]] entre os conjuntos, a composição entre seus morfismos é a [[Função#composição|composição entre funções]].

## Categoria das Categorias Pequenas

A categoria das categorias pequenas, denominada $\large \textbf {Cat}$ é uma [[categoria]] onde seus objetos são [[Categoria#Categoria Pequena|categorias pequenas]] e seus [[Categoria#Morfismo|morfismos]] são [[Functor|functores]] entre essas categorias, como functores são mapas eles obedecem todas as regras de composição que exige uma categoria. $\large \textbf {Cat}$ é uma categoria grande, ou seja, não contém a si mesma. Existe um [[functor]] dessa categoria até a [[#categoria dos quivers]].
## Categoria dos Quivers

A categoria dos quivers, dada por $\large \textbf {Quiv}$, é a categoria dos [[Pseudografo#Pseudodigrafo|multidigrafos]], onde cada objeto é um vértice e cada arco é um morfismo de forma que $\large \text{dom}(e \in E) = s(e)$ e $\large \text{cod}(e \in E) = t(e)$.
## Categoria das Setas / Categoria dos Morfismos


## Categoria dos Functores

Entre dois objetos $\large C$ e $\large D$ (que são categorias), categoria dos functores entre eles, dada por $\large D^C$, ou $\large \text{Funct}(C,D)$ é a categoria onde objetos são [[functor|functores]] do tipo $\large F: C \to D$ e seus [[Categoria#Morfismo|morfismos]] são [[Functor#Transformações Naturais|transformações naturais]] entre esses functores, ou seja, do tipo $\large \eta : F \to G$.