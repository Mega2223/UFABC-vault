---
tags:
  - bioquímica
  - química
  - incompleto
authors: Júlio César
---
## Definição

A água $\ce{H2O}$ é uma molécula [[Geometria Molecular#Tipos de estrutura#Angular|angular]] e [[Geometria Molecular#Polaridade|polar]], formada por um átomo $\ce{H}$ central ligado por covalência a dois átomos $O$,  e um par eletrônico no átomo central que repele os elementos $\ce{O}$, formando assim um [[Geometria Molecular#Dipolo Permanente|dipolo]].

```tikz
\usepackage{chemfig}
\begin{document}
\color{white}
\huge
\chemfig{\Chemabove{H}{\Lewis{3:,}\ \Lewis{1:,}}([:-142.225]-O)([:322.225]-O)}
\end{document}
```
## Propriedades

A água possui uma alta [[constante dielétrica]] $\epsilon$, e, pela [[Lei de Coulomb|lei de coulomb]] possui uma força de ligação muito baixa, assim tem um grande potencial de solubilização de compostos.
## Ligações de Hidrogênio

As ligações de hidrogênio (que **não são** ligações mas sim interações intermoleculares) são interações entre átomos de hidrogênio e algum outro átomo muito eletronegativo.
Na água, esta ligação tende a ser fraca e instável, em temperatura ambiente ela se dissolve constantemente pois a energia cinética das moléculas tende a ser suficiente para quebrar a interação, todavia, quando há diminuição de temperatura, estas ligações tendem a se preservar, fazendo com que a água tome uma estrutura hexagonal e ocupe um volume maior que na sua forma líquida.

```tikz
\usepackage{chemfig}
\begin{document}
\large
\chemfig[bond offset=4pt, bond style={line width=1pt}]{

H([-1]-O)([-3]-O <: H([-1]-O)([-3]-O))
}
\end{document}
```
## Hidrofilia e Hidrofobicidade
### Polaridade
Moléculas apolares tendem a ser hidrofóbicas, isso é, tendem a repelir interação com a água, enquanto moléculas polares tendem a ser hidrofílicas e tendem a interagir com a água, assim, moléculas hidrofílicas tendem a ser solutos em meio aquoso. 
### Moléculas anfipáticas
Certas moléculas possuem estrutura parcialmente polar e parcialmente apolar, assim possuem propriedades tanto hidrofílicas quanto hidrofóbicas, seu lado hidrofílico procura maximizar interação com a água enquanto seu lado hidrofóbico tende a minimizar a interação, essas moléculas são então denominadas anfipáticas.

```tikz
\usepackage{chemfig}
\begin{document}
\large
\chemfig[bond offset=4pt, bond style={line width=1pt}]{(\-)-[1](\-)-[-1](\-)-[1](\-)-[-1](\-)-[1](\-)-[-1](\-)-[1](\-)-[-1](\-)-[1](\-)-[-1](\-)-[1](\-)-[-1]
O-[1]S(-[-1]O^{-}Na^{+})([2.75]=O)([1.25]=O)
}
\end{document}
```

<center><sup>Estrutura molecular do SDS</sup></center>

Quando inseridas em meio aquoso, estas moléculas tendem a ir para a superfície do líquido, afim de minimizar contato com a parte hidrofóbica, quando a superfície da água já não possui mais espaço para todas essas moléculas, estas vão tender a formar estruturas onde a parte hidrofóbica é isolada da água pela parte hidrofílica, estas estruturas variam conforme o formato molecular.
#### Micelas
Certas moléculas, como alguns [[Lipídeos#Ácidos Graxos|ácidos graxos soltos]], após uma determinada concentração micelar crítica, formam micelas no líquido, onde são formadas espontaneamente estruturas esféricas com o lado hidrofóbico para dentro.
#### Bicamada
Outras moléculas tendem a formar lençóis onde duas camadas moleculares se unem e colocam no seu centro seu lado hidrofóbico a fim de minimizar o contato com a solução.
#### Lipossomo
Quando uma [[#Bicamada|bicamada]] se dobra em torno de si mesma, ela tende a formar uma vesícula, esta possui uma cavidade aquosa em seu centro, esta é uma propriedade característica aos [[Lipídeos#Glicerofosfolipídeos|glicerofosfolipídios]], que constituem a estrutura da parede celular.
### Interação com ácidos
Ácidos fortes tendem a se desassociar totalmente em meio aquoso