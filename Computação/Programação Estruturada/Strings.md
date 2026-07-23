---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Strings são sequências de caracteres que formam sentenças, em línguas de alto nível, normalmente são tratadas como [[Programação Orientada a Objetos#Classe|classes]], enquanto em línguas de baixo nível são sequências contínuas de bytes.

Em C, cada char é exatamente um byte, uma sentença de $\large b$ caracteres tipicamente requer $\large b + 1$ bytes, uma vez que strings em C são terminadas em um byte nulo. Em implementações de alto nível, strings são tratados como structs ou classes, a principal vantagem sendo poder conhecer o tamanho da string sem precisar a percorrer. Em java Strings são imutáveis, e operações em strings geram uma classe nova.

## Implementação

```c
#include <stdio.h>

int main(){
	const char* string = "Ola mundo"; //literals são constantes em c
	const char* string2 = "Adeus mundo";
	
	printf("%s\n%s\n",string,string2);
	printf("%ld\n",sizeof("Teste")); 
	return 0; // 6 bytes contando com o caractére de término
}
```