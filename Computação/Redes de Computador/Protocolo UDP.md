---
tags:
  - computação
  - internet
  - incompleto
authors: Júlio César
---


```java
import java.net.*;

public class UDPServer{
	public static void main (String args[]) throws Exception {
		DatagramSocket serverSocket = new DatagramSocket(9876);
		while(true) {
			byte[] receiveData = new byte[1024];
			DatagramPacket receivedPacket = new DatagramPacket(receiveData, receiveData.length);
			serverSocket.receive(receivedPacket);
			InetAddress IPAddress = receivedPacket.getAddress();
			int port = receivedPacket.getPort();
			String sentence = new String(receivedPacket.getData(), 0, receivedPacket.getLength());
			System.out.println("MENSAGEM RECEBIDA"+IPAddress.getHostAddress()+": " + sentence);
			String capitalizedSentence = sentence.toUpperCase();
			byte[] sendData = new byte[sentence.length()];
			sendData = capitalizedSentence.getBytes();
			DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, port);
			serverSocket.send(sendPacket);
		}
	}
}
```

```java
import java.io.*;
import java.net.*;

class UDPClient {
	public static void main(String args[]) throws Exception {
		DatagramSocket clientSocket = new DatagramSocket();
		InetAddress IPAddress = InetAddress.getByName("localhost");
		System.out.println("mensagem???");
		BufferedReader inFromUser =	new BufferedReader(new InputStreamReader(System.in));
		String sentence = inFromUser.readLine();
		//String sentence = "cavalo";
		byte[] sendData = new byte[sentence.length()];
		byte[] receiveData = new byte[sentence.length()];
		sendData = sentence.getBytes();
		DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, 9876);
		System.out.println('g');
		clientSocket.send(sendPacket);
		DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
		clientSocket.receive(receivePacket);
		String modifiedSentence = new String(receivePacket.getData());
		System.out.println("RESPOSTA DO SERVIDOR: " + modifiedSentence);
		clientSocket.close();
	}
}
```