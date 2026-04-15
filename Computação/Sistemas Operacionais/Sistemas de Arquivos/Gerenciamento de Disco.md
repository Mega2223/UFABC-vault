---
tags:
  - incompleto
  - computação
authors: Júlio César
aliases:
---
## Definição

O disco é a unidade de memória persistente de um computador, ao contrário de registradores (que usam [[Flip Flops e Latches|elementos de memória]] e necessitam de um fluxo elétrico constante), o disco é um espaço que preserva a memória da máquina fisicamente mesmo quando o sistema operacional não está em execução.

O disco notavelmente tende a ser a unidade mais abrangente de memória em uma máquina, mas também tende a ter um tempo de acesso muito elevado comparado com a [[Memória de Acesso Aleatório|memória RAM]], logo operações de manipulação do disco devem ser minimizadas sempre que possível por meio de técnicas de _buffering_.

## Particionamento

Um disco tipicamente é repartido em um ou mais partições, que são regiões distintas do disco que possuem cada uma o seu próprio [[Sistemas de Arquivo|sistema de arquivo]]. O setor 0 no disco é a partição ***Master Boot Record*** (MBR), a partição MBR contém dados para o boot da máquina, e, em seu final, uma tabela de endereçamento das demais partições

O MBR define uma das partições como ativa, durante a inicialização, a BIOS vai até essa partição ativa e executa seu bloco de inicialização, o que tipicamente é a lógica de inicialização de um [[sistema operacional]].