## Objetivo do Projeto

<!--
Jonathan: [OK]
-->

O objetivo do projeto é desenvolver um sistema integrado de treinamento para o esporte do remo, focado para atletas iniciantes do esporte. O sistema, de nome **2Row** (pronuncia-se "_to row_", do inglês: para remar), é composto por um aparelho de remo _indoor_, uma vestimenta de sensores cinemáticos e de um simulador virtual cujo papel é disponibilizar o progresso do usuário e compará-lo com modelos ideais, proporcionando, assim, a possibilidade de otimização do treinamento.

### Definição do Produto

O aparelho de remo _indoor_, de nome **2RBoat**, é uma máquina de alta durabilidade e que oferece conforto e segurança para o treinamento. A estrutura é composta por 4 subsistemas mecânicos:

1. **2RB-Primary**: A estrutura física primária do equipamento, composta pela trave que contem os demais subsistemas de todas as áreas;
2. **2RB-Seat**: A estrutura de acomodação do usuário. É conectada ao 2RB-Primary por um trilho que permite movimento;
3. **2RB-Row**: Formada por um conjunto de polias e correias que transmitem o movimento da remada e do sistema de restituição feito por cordas elásticas;
4. **2RB-Case**: Estrutura que abriga os componentes eletrônicos responsáveis pelo controle dos sistemas embarcados.

É acoplado à estrutura do 2RBoat o sistema **2RPower**, composto pelos seguintes subsistemas:

1. **2RP-Generator**: O gerador elétrico que fornece resistência mecânica à remada do atleta;
2. **2RP-Resistance**: O banco de resistências que auxilia no controle de carga do gerador, que por sua vez atuará no sistema através do conjugado elétrico;
3. **2RP-Battery**: A bateria que é responsável por armazenar a energia elétrica proveniente dos ciclos de remada, transformada pelo gerador. O 2RP-Battery também tem a função de alimentar, ou seja, de fornecer energia para o 2Row.

Outro subproduto do 2Row é o sistema eletrônico embarcado de nome **2RElectronic**, este responsável pela instrumentação biomecância e biomédica, seus condionamentos e controle do acionamento do subsistema 2RP-Resistance. Seus subsistemas são:

1. **2RE-Suit**: É descrito como a vestimenta de sensores cinemáticos, onde estarão contidos dois sensores IMUs e o sensor de pulso cardíacos. Além de proteger os sensores, traz conforto ao usuário e possibilita que este continue realizando seus movimentos para que haja a coleta de forma segura;
2. **2RE-Cardio**: Subcomponente do 2RE-Suit, coleta os dados de batimentos cardíacos para calcular a frequência cardíaca e realiza o processamento desse sinal e o possível condicionamento, esse último, caso seja necessário;
3. **2RE-IMU**: Subcomponente do 2RE-Suit, está associado à instrumentação biomecânica, que comporta calibração, coleta de dados, condicionamento e processamento do sinal para  a obtenção do âgulo relacionado ao movimento do membro inferior do atleta;
4. **2RE-Volt**: Afere a tensão no banco de resistores do subsistema 2RP-Resistance e através de um modelo matemático calcula a potência condicionada pelo rendimento do atleta;
5. **2RE-Relay**: Recebe as informações do 2RS-Transmitter sobre a necessidade de mudança de nível de carga de dificuldade, com essa informação o microcontrolador responsável irá acionar os relés para ativar/desativar a carga de resistência;
6. **2RE-Kernel**: É o núcleo de todo o sistema embarcado. A atuação dos microcontroladores e microcomputador dar-se-ão nesse subsistema, assim como a integração entre 2RE-Suit e 2RS-Receiver, para que haja a transmissão de dados;
7. **2RE-UI**: O usuário ao apertar botões físicos determinam o nível de dificuldade da carga, e esse subsistema o remete ao subsistema 2RS-Transmitter. Essa aplicação é submetida a um tratamento de _debounce_ dos botões, para prevenir possíveis falhas de leitura.

Por fim, um sistema de _software_ de nome **2RSystem** é um subproduto integrado ao 2Row responsável pela inovação do simulador virtual e pelo controle do sistema de carga. Seus subsistemas são:

1. **2RS-Receiver**: Desserializa as informações recebidas do 2RE-Kernel, as converte em modelo de dados do sistema e as transmite para a controladora (2RS-Controller);
1. **2RS-Controller**: Recebe informações dos outros subsistemas e as direciona para o subsistema responsável por lidar com aquele tipo de informação;
1. **2RS-Processer**: Recebe os dados dos sensores cinéticos e aplica algoritmos matemáticos para definição da performance do atleta, retornando tais resultados para a controladora (2RS-Controller);
1. **2RS-Transmitter**: Recebe o fator de mudança de carga de dificuldade, serializa-o e transmite para o 2RE-Kernel;
1. **2RS-Viewer**: Renderiza as informações de performance do atleta, o simulador de atividade ideal e o estado da carga de dificuldade, transmitindo a renderização para a interface de visualização (monitor).
