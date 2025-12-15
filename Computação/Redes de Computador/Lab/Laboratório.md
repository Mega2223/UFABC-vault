Em laboratório foi discutido o protocolo UDP por meio das bibliotecas de Java, e foi solicitado fazer um protocolo de aplicação individual como tarefa de casa. Os arquivos de aula e os do protocolo estão nas pastas LabUDP e MeuProtocolo respectivamente.

## Cliente-Servidor UDP

Foram rodados 2 processos, um que replica o servidor e outro que replica o cliente, o cliente transmite uma mensagem e aguarda uma resposta, enquanto o servidor recebe a resposta do cliente em forma de String e simplesmente converte todas as letras da sequência para uppercase antes de enviar ao cliente.

Caso o servidor não esteja rodando ou não receba propriamente a mensagem, o cliente fica preso eternamente procurando uma resposta, isso pode ser retificado com algum timer que reenvia os dados caso não haja uma resposta em um grande intervalo de tempo.

### 1.1
O servidor respondeu e codificou propriamente as respostas ao client.

### 1.2
O servidor nunca recebeu a mensagem, logo nunca respondeu o cliente. O cliente fica permanentemente esperando a resposta do servidor.
### 1.3
O servidor não recebe a mensagem devido ao erro de encaminhamento e o cliente fica rodando permanentemente, uma vez que se a aplicação não está rodando na porta que o pacote foi destinado ele não é propriamente encaminhado pelo sistema operacional.

### 1.4
O console do servidor mostrou várias máquinas diferentes e respondeu de acordo a cada mensagem.
### 1.5
Só é necessário colocar um loop while do lado do cliente, uma vez que o servidor sempre responderá à qualquer mensagem.
```java
public static void main(String args[]) throws Exception {  
    for(;;){
	    // Código prévio da aplicação
    }
}
```
(Código completo presente nos arquivos)
### 1.6
Também foi discutido o bloqueio de certos endereços de IP, minha implementação está presente no arquivo, mas pra resumir:

```java
class UDPServer {  
    public static ArrayList<String> blacklist = new ArrayList<>();  
    //implementação da função de blacklist  
    public static void main(String args[]) throws Exception {  
       blacklist.add(""); // insira qualquer IP aqui  
	  //[...] 
       while(true) {  
	      //[...] 
          InetAddress IPAddress = receivedPacket.getAddress();  
          int port = receivedPacket.getPort();  
          if(blacklist.contains(IPAddress.getHostAddress())) { continue; }  
		  //[...] 
       }  
    }  
}
```

## Meu Protocolo

Para fazer minha codificação de nível de aplicação eu fiz uma classe separada com funções específicas para a codificação dos dois lados. 

```java
package MeuProtocolo;  
  
public class Encoder {  
    private Encoder(){}  
  
    public static void encode(byte[] data){  
        for (int i = 0; i < data.length; i++) {  
            // inverte todos os bits dos bytes em grupos de 3 sim e 3 não  
	        // num flow constante de bits 0, o resultado seria
	        // 000111000111000...           
	        if((i/3)%2 == 0){  
	            data[i] = (byte) (~data[i] & 0XFF);  
	        }  
	    }  
	}  
  
    public static void decode(byte[] data){  
        // como o dual do método de codificação é ele mesmo, para decodificar  
        // é só passar a sequência de bytes por ele de novo
        encode(data);  
    }
}
```

Para implementar esse codificador, basta alterar o código já existente para codificar os bytes pré-transmissão e decodificar eles após a transmissão tanto do lado do server quanto do client, todo o código está presente na pasta MeuProtocolo. 