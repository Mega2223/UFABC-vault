---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Encapsulamento é a prática em [[programação orientada a objetos]] de regular o acesso de leitura e modificação de uma determinada variável por meio de um sistema de funções, se constitui da ação de conter um dado com métodos que operam sob esse dado. É considerada uma boa prática pois regula o acesso dos campos de cada classe.

```java
public class Account{
	private float balance = 0.0f;
	
	public Account(){
		System.out.println("Conta criada");
	}
	
	public void deposit(float amount){
		balance += amount;
	}
	
	public void withdrawal(float amount){
		balance -= amount;
	}
	
	public float getBalance(){
		return balance;
	}
	
	public void printBalance(){
		System.out.printf("R$%.2f\n",getBalance());
	}
	
	public static void main(String args[]){
		Account account = new Account();
		account.deposit(1000);
		account.withdrawal(400);
		account.printBalance();
		account.deposit(1000);
		account.printBalance();
	}
}
```