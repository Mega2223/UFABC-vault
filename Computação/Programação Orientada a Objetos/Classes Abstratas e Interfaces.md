---
tags:
  - incompleto
  - computação
authors: Júlio César
---
# Classe Abstrata

## Definição

A classe abstrata é uma [[Programação Orientada a Objetos#Classe|classe]] que não é suficientemente completa em seus métodos e variáveis para ser instanciada, uma instanciação da classe demanda que os seus métodos incompletos / abstratos sejam fornecidos por algum objeto filho da classe abstrata.

Classes abstratas podem ser filhas de outras classes abstratas, e elas geralmente não precisam implementar os métodos abstratos da sua super classe.

```java
public class Forest{
	public static abstract class Animal {
		int age;
		
		Animal(int age){
			this.age = age;
		}
		
		abstract void performAction();
	}
	
	public static class Dog extends Animal {
		public Dog(int age){
			super(age);
		}
		void performAction(){
			System.out.println("au");
		}
	}
	
	public static void main(String args[]){
		Animal d = new Dog(4);
		d.performAction();
	}
}
```

Classes abstratas podem:
- Ter suas próprias implementações de métodos
- Ter sua estrutura interna de dados por meio de variáveis
- Ter um construtor obrigatório
- Serem instanciadas de forma anônima

Não podem:
- Duas classes abstratas serem implementadas por um mesmo objeto

# Interface

## Definição 

A interface é uma [[Programação Orientada a Objetos#classe|classe]] que define alguma determinada implementação do objeto, e quais funções este deve implementar, assim a interface está para quais operações um determinado objeto suporta.

A interface em si não retém estados, pode ter implementações por meio da keyword `default` mas tipicamente queremos que nossas subclasses façam as implementações. Interfaces podem estender umas as outras, mas classes reais devem implementar interfaces.

```java
public class Forest{
	public static interface Animal {
		int getAge();
		void performAction();
	}
	
	public static class Dog implements Animal {
		int age;
		public Dog(int age){
			this.age = age;
		}
		public void performAction(){
			System.out.println("au");
		}
		public int getAge(){
			return age;
		}
	}
	
	public static void main(String args[]){
		Animal d = new Dog(4);
		d.performAction();
	}
}
```