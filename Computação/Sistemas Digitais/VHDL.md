---
tags:
  - circuitos-digitais
  - computação
  - língua-de-programação
  - incompleto
authors: Júlio César
---
## Definição

VHDL é uma #língua-de-programação  de circuitos digitais com paradigma voltado ao paralelismo, todas as instruções são computadas de forma simultânea.
## Sintaxe

### Sintaxe Básica
A atribuição de um valor é dada com `<=`, a separação entre comandos é dada por `;` 
```VHDL
x <= y;
``` 

O comentário em VHDL começa com um `--`
```VHDL
-- Oi tudo bem?
```
### Entidade e Arquitetura
O VHDL usa de entidades (`entity`) e arquiteturas (`architecture`) como blocos para a construção do circuito. 

A entidade descreve a interface do circuito, é dividida em entradas (`in`) e saídas (`out`).
```VHDL
entity TESTE_ent is
	port(
		x: in bit;
		y: in bit;
		z: out bit
	);
end teste;
```

Uma arquitetura (`architecture`) representa o funcionamento do componente,

```VHDL
architecture behav of TESTE_ent is
begin
	z <= x and y;
end behav;
```
## Compilação e Uso

## Bibliotecas