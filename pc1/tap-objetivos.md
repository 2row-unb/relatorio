## Objetivo do Projeto

<!--
Está na estrutura do pandoc?
- [NÃO]

Validações:

[OK]: Tudo certo!
[TODO]: Falta alguma coisa! Nesse caso, informe o que está faltando

- Software []
> Jonathan [TODO]
>> Cada engenharia definir os produtos e seus componentes;
---------------
- Eletrônica []

---------------
- Energia []

---------------
- Estrutura []

---------------
-->

O objetivo do projeto é desenvolver um sistema integrado de treinamento para o esporte do remo, focado para atletas iniciantes do esporte. O sistema é composto por um aparelho de remo _indoor_, uma vestimenta de sensores cinemáticos e de um simulador virtual cujo papel é disponibilizar o progresso do usuário e compará-lo com modelos ideais, proporcionando, assim, a possibilidade de otimização do treinamento.

### Definição do Produto

O aparelho de remo _indoor_, de nome **2Row Boat** (pronuncia-se "_to row_", do inglês: para remar) é uma máquina de alta durabilidade e que oferece conforto e segurança para o treinamento. A estrutura é composta por 4 subsistemas mecânicos:

1. **2RB-Primary** - A estrutura física primária do equipamento, composta pela trave que contem os demais subsistemas de todas as áreas;
2. **2RB-Seat** - A estrutura de acomodação do usuário, é ligada a estrutura primária por um trilho que permite movimento;
3. **2RB-Row** - Formada por um conjunto de polias e correias que transmitem o movimento da remada e do sistema de restituição feito por cordas elásticas;
4. **2RB-Case** - Estrutura que abriga os componentes eletrônicos responsáveis pelo controle dos sistemas embarcados.

Serão acoplados à estrutura do **2Row Boat**  os seguintes subsistemas:

1. **2RP-Generator** - O gerador elétrico fornece resistência mecânica à remada do atleta;
2. **2RP-Resistance** - O banco de resistências auxilia no controle de carga do gerador, que por sua vez atuará no sistema através do conjugado elétrico;
3. **2RP-Battery** - A bateria é responsável por armazenar a energia elétrica proveniente dos ciclos de remada, transformada pelo gerador. O 2RP-battery também tem a função de alimentar, ou seja, fornecer energia para o 2Row Boat.

* `(Definição de subsistema #n de energia)`;
* `(Definição de subsistema #1 de eletrônica)`;
* `(Definição de subsistema #n de eletrônica)`.

A vestimenta de sensores cinemáticos, de nome **2RSuit**, é um `(DESCRIÇÃO DA VESTIMENTA [Eletrônica])`.

Adicionalmente, um sistema de _software_ de nome **2RSystem** é um subproduto integrado ao **2Row** responsável pela inovação do simulador virtual e pelo controle do sistema de carga. Seus subsistemas são:

1. **2RS-Receiver** (2RSystem _Data Receiver_): Desserializa as informações dos sensores eletrônicos, as converte em modelo de dados do sistema e as transmite para a controladora (2RS-Controller);
1. **2RS-Controller** (2RSystem _Controller_): Recebe informações e as direciona para o subsistema responsável por lidar com aquele tipo de informação;
1. **2RS-Processer** (2RSystem _Processer_): Recebe os dados dos sensores cinéticos e aplica algoritmos matemáticos para definição da performance do atleta, retornando tais resultados para a controladora (2RS-Controller);
1. **2RS-Transmitter** (2RSystem _Data Transmitter_): Recebe o fator de mudança de carga de dificuldade, serializa-o e transmite para os componentes eletrônicos responsáveis pelo controle de carga;
1. **2RS-Viewer** (2RSystem _View_): Renderiza as informações de performance do atleta, o simulador de atividade ideal e o estado da carga de dificuldade, transmitindo a renderização para a interface de visualização.

<!--


### Objetivos de _Software_

A frente de _software_ tem como objetivo construir um sistema capaz de:
1. coletar os sinais emitidos pelos sensores do treinador virtual;
2. interpretar os sinais e mapeá-los para várias propriedades de treinamento, como: posição dos membros do atleta, angulação dos membros do atleta e intensidade das forças aplicadas pelo atleta;
3. comparar as informações do desempenho do atleta, construídas a partir dos dados coletados, com modelos matemáticos de treinamentos ideais;
4. disponibilizar visualmente as informações e as comparações feitas para o atleta em _real time_, para que o mesmo possa otimizar suas ações e, consequentemente, a qualidade do seu treinamento.


### Objetivos de Estrutura

Estruturalmente tem-se por finalidade a construção de uma aparelho de remo _in_ _door_ que seja capaz de integrar as cinco engenharias do curso da Faculdade Gama e através de análises estruturais realizar a validação estrutural. Tudo isso com o objetivo de proporcionar ao usuário:

1. Um aparelho de alta qualidade e durabilidade
2. Um aparelho seguro e confortalvel na hora do treinamento,

E assim, garantir um treino muito mais eficaz para que o atleta alcance melhores resultados durante o exercício.

### Objetivos de Eletrônica

O subsistema de eletrônica tem por finalidade projetar e construir um sistema de sensoriamento para o remo ergométrico para analisar parâmetros biomecânicos e biomédico. Como objetivos especifícos tem-se:

1. Adquirir sinais de frequência cardíaca;
2. Adquirir e condicionar sinais de movimento;
3. Construir o wattímetro de eixo;
4. Definir mecanismo de integração desse sistema com software;
5. Definir mecanismo de integração desse sistema com energia e estrutura;

-->
