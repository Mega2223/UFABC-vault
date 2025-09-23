---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Um datapath é um circuito computacional responsável por realizar as micro-operações de um computador básico, é composto por: 
- Um conjunto de registradores
- Uma lógica de implementação das micro-operações
- Uma interface de controle

As operações típicas de implementação do datapath são:
- [[Shifter de Bits|Shift binário]]
- Operações aritméticas e lógicas por meio de uma [[Unidade Lógica Aritmética|ULA]] interna

Em geral o datapath trabalha com vetores de algum $n$ número de bits e $m$ número de endereços de memória.
## Estrutura

O datapath é composto por um banco de registradores (_register file_) e uma unidade funcional (_function unit_).
### Banco de Registradores
Um [[Elemento de Memória]] com uma entrada de dados e duas saídas de dados, com entradas e saídas de ponteiros para os endereços relacionados com essas entradas, e uma entrada de write. É usado para armazenar resultados parciais.

$$\large 2^m \times n\ \  \text{Register file}$$
#### Entradas
- **D data**: Vetor resultante da operação da unidade funcional.
- **D address**: Endereço de memória para onde salvar D.
- **Write**: Quando está em HIGH, a placa vai escrever D data em D address.
- **A address**: Endereço de leitura de A
- **B address**: Endereço de leitura de B
#### Saídas
- **A data**: Vetor salvo em A address
- **B data**: Vetor salvo em B address
### Unidade Funcional
A unidade funcional é responsável pela implementação da computação dos resultados das micro-operações do datapath, é composta por uma [[Unidade Lógica Aritmética|ULA]] e um shifter de bits, a saída depende do modo da entrada.
#### Entradas
- **A**: Valor do vetor A
- **B**: Valor do vetor B
- **FS**: Vetor de 4 bits, seleciona a operação a ser feita.
	 - Para quando o bit mais significativo é 0, os outros 3 menos significativos são passados para a ULA e o resultado é o resultado da [[Unidade Lógica Aritmética#Tabela Completa de Operações|computação da ULA]].
	 - Para quando o bit mais significativo é 1, se o segundo mais significativo é 0, passa-se o valor então para a unidade lógica da ULA.
	 - Quando os dois bits mais significativos são 1, a computação será o resultado da computação do [[shifter de bits]].
#### Saídas
- **F**: Resultado da computação
- **V,C,N,Z**: Bits de status //TODO
## Palavra de Controle

A palavra de controle (_control word_) é a combinação de inputs 