---
tags:
  - computação
  - incompleto
  - paradigmas
authors: Júlio César
---
## Definição

Paradigma de programação imperativa, é a programação por meio de lógica implementada por objetos, normalmente denominados classes, estes têm padrões funcionais próprios, como funções por instância. Línguas orientadas a objetos tendem a adotar padrões como a herança de funções, a generalização de tipos implementação de lógica por objetos.

Nessa categoria enquadram-se o sistema de classes de [[Java]], [[C++]]e [[Python]]. Embora [[Lua]] não tenha implementação direta de classes, sua implementação de dicionários e funções como objetos consegue replicar todos os padrões usuais de línguas OOP.

Nota-se que a mera existência de [[structs]] não implica que a língua seja OOP, pois estes são apenas formas de armazenar dados e não têm padrões funcionais de hierarquia para serem considerados OOP.
## Objeto

O objeto é um conjunto de dados e [[algoritmo|algoritmos]] que visam representar e abstrair um objeto, este normalmente fica encarregado de sua própria lógica por meio de funções por instância.

```lua
function Pessoa(idade, nome, id)
	return {
		id = id, idade = idade, nome = nome,
		addIdade = function(self)
			self.idade = idade + 1
		end
	}
end

felipe = Pessoa(10,"Felipe",12)
felipe:addIdade()
print(felipe.idade)
```

Tipicamente o acesso às funções que manipulam variáveis do objeto são feitas em funções ligadas à instância em vez de funções de acesso estático.
## Herança e Generalização

```java
public class Main{
	public interface Objeto{
		void fazerAlgo(int param);
	}
	
	public static class Pessoa implements Objeto{
		public void fazerAlgo(int param){
			System.out.println("oi :) " + param);
		}
	}

	public static void main (String[] args){
		Objeto o = new Pessoa();
		o.fazerAlgo(10);
	}
}
```
