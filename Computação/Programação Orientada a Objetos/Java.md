---
tags:
  - língua-de-programação
  - computação
  - incompleto
authors: Júlio César
aliases:
  - JVM
---
## Definição

É uma #língua-de-programação  multiparadigma com foco em [[programação orientada a objetos]] e tipagem forte, organizada em um sistema de [[Programação Orientada a Objetos#Classe|classes]] e métodos estáticos, com enfoque em estruturas de encapsulamento. Sua estrutura de tipagem e funções é similar ao [[C]].

## Propriedades

### Acesso Estático ou de Instância
Estruturas em Java devem fazer parte de uma classe e, por padrão, têm acesso instanciado, para acesso de forma independente de instância deve-se usar a keyword `static`.
```java
public class Pessoa{
	int idade = 12; // acesso de instância
	static int numeroDePessoas = 1; // acesso estático
}
```

### Funções
A identidade de uma função é determinada pelo seu nome e assinatura, isso é, funções de mesmo nome podem existir desde que usem parâmetros diferentes.
```java
public class Pessoa{
	public static void fazAlgo(){
		// ...
	}
	public static void fazAlgo(int algo){
		//...	
	}
}
```

### Primitivas
As primitivas em java são `int`,`long`,`float`, `double`,`char` e `byte`[^2]. A [[#classes|classe]] String embora não seja primitiva acaba por se comportar como uma em várias operações, por exemplo na comutação entre Strings;

A língua têm suporte para os mesmos operadores aritméticos, condicionais e bitwise que a língua C. O sistema de casting de Java também é similar ao de C, e o casting entre primitivas geralmente é possível.

```java
public class Main{
	public static void main(String args[]){
		int g = 2;
		int h = 3;
		System.out.println(g+h+h);
	}
}
```
### Classes

Java tem suporte a um sistema de [[Programação Orientada a Objetos#Classe|classes]] que servem como centro da língua, cada conjunto de dados pode ser representando em uma determinada classe, a língua também tem suporte a generalização e herança de métodos.

```java
import java.util.ArrayList;

public class Main{
	public static interface Animal{
		int getAge();
	}
	
	public static class Dog implements Animal {
		public int getAge(){return 4;}
	}
	
	public static class Cat implements Animal {
		public int getAge(){return 5;}
	}

	public static void main(String args[]){
		ArrayList<Animal> animals = new ArrayList<>();
		animals.add(new Cat());
		animals.add(new Dog());
		
		for(Animal act : animals){
			System.out.println(act.getAge());
		}
	}
}
```
### Interfaces

Interfaces são moldes para classes que em si não seguram valores. A sua finalidade é para que outras classes sejam implementadas encima da interface. Uma interface em si não pode ser instanciada caso todos os seus métodos não sejam definidos. Assim a interface permite a declaração de uma função sem uma definição.

```java
public static interface Mesh{
	float[] getData(); //funções em interfaces são publicas por padrão
	void setData(float[] data);
}
```

A interface também permite a implementação de funções nativas com a keyword `default`.
### Classes Abstratas

Similar a [[#Interfaces]], classes abstratas servem como molde para classes, todavia métodos abstratos devem ser explicitamente declarados com a keyword `abstract`. A maior diferença entre interfaces e classes abstratas é que classes abstratas em si podem segurar valores internos, ou seja, elas em si já tem estados.

```java
public static abstract class Mesh{
	protected int id = -1;

	public abstract float[] getData();
	public abstract void setData(float[] data);
}
```
## JVM

O código Java é compilado em código binário que pode rodar em uma Java Virtual Machine, outras línguas como [[Kotlin]] e [[Scala]] também compilam para binários JVM. Arquivos .jar podem ser lidos em qualquer sistema desde que o mesmo tenha um JVM compatível[^1].

## Paradigma Funcional em Java

Versões mais recentes do Java tem suporte a [[Programação Funcional#Características|funções de primeira classe]] e outros paradigmas [[Programação Funcional|funcionais]] de forma nativa.

[^1]: Tipicamente JVMs de versão superior são retrocompatíveis.

[^2]: Que eu me lembre.
	
