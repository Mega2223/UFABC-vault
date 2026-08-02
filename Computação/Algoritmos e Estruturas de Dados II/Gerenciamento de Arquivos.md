---
tags:
  - computação
  - incompleto
---
## Definição

Um arquivo é um objeto que representa uma sequência de registros lógicos, um registro lógico sendo um conjunto de atributos que definem uma caracterítica do registro. Cada atributo possui um nome único, um tamanho e um tipo específico.

Tipicamente cada registro de arquivo possui um componente que é único para esse registro, esse componente é denominado uma chave primária, e é o principal identificador do registro. Operações de pesquisa em um arquivo visam então encontrar um determinado objeto a partir de sua chave primária ou algum critério em específico.

O arquivo armazena algum determinado tipo de informação durável, as informações armazenadas em um arquivo tipicamente são codificadas em algum protocolo de armazenamento, por exemplo o formato`uft-8` ou as extenções de arquivo multimídia. 

Um arquivo tipicamente implementa operações de busca, adição e remoção de dados. Na prática, o arquivo é formado por uma sequência contínua e indexável de bytes, um arquivo aberto tem um [[Espaço de Endereçamento|espaço de endereçamento]] individual fornecido pelo Sistema Operacional.
### Acesso Sequencial
O acesso sequencial é o ato de acessar os componentes do arquivo como uma sequência contínua, onde cada componente possui uma chave de ordenação, alguns formatos de _hardware_ favorecem esse formato, como fitas magnéticas, o acesso sequencial exige uma ordenação natural dos dados de um arquivo.

Embora SSDs modernos implementem uma política de acesso aleatório em tempo cosnstante, o acesso sequencial ainda é amplamente usado, a maioria dos [[Sistema Operacional|sistemas operacionais]] implementam a [[Chamada de Sistema|chamada de sistema]] `read`, que reporta a próxima sequência de $\large n$ bytes de um determinado arquivo para um buffer. Como espaços de endereçamento tipicamente possuem ponteiros ordenáveis, a maioria dos sistemas de arquivos podem implementar uma política de acesso sequencial.

As operações de inserção e remoção são mais complexas em arquivos de acesso sequencial, pois exigem essencialmente uma nova cópia do arquivo que possa ser intercalada com os novos dados, levando um tempo médio $\large O(n)$ para inserções, remoções e leituras aleatórias.
### Acesso Direto
Um arquivo de acesso direto é um arquivo cujo os componentes podem ser individualmente endereçados a partir de alguma chave primária, sem que os componentes anteriores precisem ter sido acessados, a promessa de acesso aleatório determina que o acesso para qualquer determinado componente se dá em tempo $\large O(1)$.

Em sistemas operacionais modernos, um arquivo terá um espaço de endereçamento específico onde cada byte possui um endereço individual, um grupo de bytes pode ser acessado por uma chamada de sistema.

### Acesso Indexado
Um arquivo indexado é um arquivo que armazena um determinado conjunto de registros, onde cada registro possuí uma entrada em uma tabela de índices, que também é presente no arquivo.

Um arquivo de acesso indexado não requer qualquer tipo de ordenação entre os registros em si, fazendo a operação de inserção ser bem mais rápida do que em um arquivo [[#Acesso Sequencial|sequencialmente ordenado]], só é necessário que os índices do arquivo sejam propriamente ordenados.

### Acesso Sequencial Indexado
Um determinado arquivo sequencialmente ordenado pode possuir uma tabela de índices como prefácio, determinado arquivo de índices, o arquivo de índices é formado por uma sequência de entradas, cada entrada é composta por uma tupla onde o primeiro elemento é uma chave de algum determinado registro e o segundo elemento o endereço do registro no arquivo.

É particulamente útil para arquivos que armazenem um conjunto de dados de algum determinado tipo, para consultar um determinado dado basta verificar a tabela de índices em vez de ler todos os dados anteriores.

// TODO ilustrações please