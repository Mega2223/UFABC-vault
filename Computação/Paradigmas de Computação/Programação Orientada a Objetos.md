---
tags:
  - computação
  - incompleto
  - paradigma
authors: Júlio César
---
## Definição

Paradigma de programação imperativa, é a programação por meio de lógica implementada por classes de objetos, estes têm padrões funcionais próprios, como funções por instância. Línguas orientadas a objetos tendem a adotar padrões como a herança de funções, a generalização de tipos implementação de lógica por objetos.

Nessa categoria enquadram-se o sistema de classes de [[Java]], [[C++]]e [[Python]]. Embora [[Lua]] não tenha implementação direta de classes, sua implementação de dicionários e funções como objetos consegue replicar todos os padrões usuais de línguas OOP.

Nota-se que a mera existência de [[structs]] não implica que a língua seja OOP, pois estes são apenas formas de armazenar dados e não têm padrões funcionais de hierarquia para serem considerados OOP.
## Classe

A classe é um conjunto de dados e métodos que visam representar e abstrair um determinado objeto, este normalmente fica encarregado de sua própria lógica por meio de funções por instância. 

Não há consenso do que separa uma classe de um [[structs|struct]], mas em geral classes tendem a implementar estruturas mais avançadas como funções próprias, modificadores de acesso e encapsulação de dados, enquanto em structs todo o gerenciamento funcional dos dados é feito de forma estática.

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
