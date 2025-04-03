---
tags:
  - computação
  - incompleto
authors: Júlio César
---
## Definição

Strings são sequências de caracteres que formam sentenças, são armazenadas como [[Lista|listas]] na memória e, em línguas de alto nível, normalmente são tratadas como [[Programação Orientada a Objetos#Classe|classes]].
## Implementação

```c
#include <stdio.h>

void main(){
	const char* string = "Olá mundo"; //literals são constantes em c
	const char* string2 = "Adeus mundo";
	
	printf("%s\n%s",string,string2);
}
```