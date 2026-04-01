---
tags:
  - incompleto
authors: Júlio César
aliases:
  - Arquivo
---
## Definição

O sistema de arquivos é uma forma de ocultar o [[Gerenciamento de Disco|espaço físico do disco]] e representar arquivos do sistema, onde em vez de uma aplicação referenciar o endereço físico de um arquivo ela referencia um endereço do sistema, que tende a ser mais gerenciável. Tipicamente sistemas implementam um formato hierárquico por meio de pastas, gerando uma [[Árvore#Árvore Enraizada|árvore enraizada]] em um ou mais diretórios.
## Posse e Acesso
## Arquivo

O arquivo é uma unidade de dados presente no disco, a localização física do arquivo deve ser abstraída para os processos, de forma que cabe ao sistema buscar os dados do arquivo quando algum determinado processo o exige. O processo então só é ciente do sistema de arquivos implementado pelo sistema, mas não da estrutura física do disco.

Todo arquivo deve ter um identificador único, que pode ser referenciado por aplicações, tipicamente sistemas de arquivo implementam um modelo de árvore para organizar os arquivos, logo o nome único de um determinado arquivo é o seu nome com todo o caminho até alguma raiz ou referência de unidade física.

## Diretório

O diretório, ou pasta, é um tipo especial de arquivo gerenciado pelo sistema operacional responsável por mapear a topografia do sistema de arquivos, um diretório contém uma lista de referências para outros arquivos, que podem também ser diretórios.

O sistema que implementa diretórios viabiliza que múltiplos arquivos tenham o mesmo nome, uma vez que existam em diretórios distintos, o nome absoluto do arquivo é composto não somente do nome do arquivo, mas o nome absoluto do diretório em que o arquivo é contido, este em si também é contido em um diretório, etc. Logo o nome absoluto é o caminho da raiz do sistema até o arquivo.
### Link Simbólico
O Linux permite a criação de ligações simbólicas entre diretórios, onde um diretório pode ser referenciado a partir de uma pasta que não seja o diretório que o inclui, por exemplo, a pasta `/usr/bin` normalmente possui um link simbólico de forma que possa ser acessada a partir do nome `/bin`. O link simbólico todavia viola a propriedade de cada diretório ter somente um pai, ou seja, levando links em conta a topografia do sistema de arquivo não é mais uma árvore, o que pode gerar problemas de exploração recursiva por exemplo. 
### Caminho Relativo
Toda ação é feita do ponto de vista de um diretório, denominado diretório de trabalho, uma referência de arquivo qualquer pode ser representada de forma relativa a algum diretório de contexto ou a partir do diretório raiz (`./` vs `/` em sistemas UNIX-like). Existem operações de acesso que possam fazer acesso relativo a diretórios: `..` é um diretório acima do atual e `.` é o diretório atual.
## Pseudoarquivo

Em implementações UNIX-like, pseudoarquivos são arquivos fornecidos pelo [[sistema operacional]] que não existem no disco físico, mas que agem como um arquivo normal para os processos. Esses arquivos são implementados pelo sistema operacional para fornecer algum tipo de interface de leitura/escrita para as aplicações ou para algum pipe, por exemplo, o `/dev/zero` é um pseudoarquivo cuja leitura sempre retorna uma sequência infinita de zeros, o `/dev/random` retorna uma sequência aleatória de bytes, o `/dev/null` sempre retorna um EOF na leitura, mas reporta toda escrita como um sucesso (embora ele nunca guarde o que foi escrito).

## Operações em Diretórios

O acesso ao sistema de diretórios para os programas é viabilizado por meio de [[Chamada de Sistema|chamadas de sistema]], que possibilitam a mudança ou leitura da topologia dos diretórios. Tipicamente um SO implementa as operações:
- `Create`: Cria um diretório vazio no diretório de trabalho
- `Delete`: Remove um diretório se e somente se ele estiver vazio
- `Opendir`: Abre um diretório para a leitura de seus conteúdos
- `Closedir`: Fecha um diretório aberto
- `Readdir`: Lê a próxima entrada de um diretório aberto
- `Rename`: Renomeia um diretório
- `Link`: Cria uma [[#Link Simbólico|ligação simbólica]]
- `Unlink`: Remove uma ligação simbólica ou um arquivo.