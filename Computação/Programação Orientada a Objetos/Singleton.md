---
tags:
  - incompleto
  - computação
authors: Júlio César
---
## Definição

Singleton é um padrão de [[programação orientada a objetos]] onde um determinado objeto só pode ter uma única instância, nesse caso tipicamente o construtor é oculto e o acesso à instância é estático.

```java
public class Session{
	
	private Session(){
		System.out.println("Instancia criada");
	}
	
	static Session instance = null;
	
	public static Session getInstance(){
		if(instance == null){
			instance =  new Session();
		}
		return instance; 
	}
	
	public static void main(String args[]){
		Session session1 = Session.getInstance();
		Session session2 = Session.getInstance();
	}
}
```