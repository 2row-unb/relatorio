## Critérios de Aceitação do Projeto

<!--
Jonathan: [OK]
-->

Definir critérios de aceitação é uma atividade essencial para a validação do produto à ser desenvolvido em um projeto. Tais critérios aqui definidos são elementos _sine qua non_ que devem ser satisfeitos ao longo do desenvolvimento do produto.

### Critérios de Aceitação do 2RBoat

#### Critérios de Aceitação do 2RB-Primary

* **CA 2RB-Primary-1**: A estrutura não deve falhar (quebrar ou deformar plasticamente) em sua faixa de operação, limitada ao peso do usuário de até 150kg.
* **CA 2RB-Primary-2**: A estrutura deve comportar confortavelmente usuários que estejam  dentro do espectro de estatura compreendido até o percentil masculino $95^{th}$ americano.
* **CA 2RB-Primary-3**: A estrutura deve acomodar todos os demais subsistemas e suas necessidades.

#### Critérios de Aceitação do 2RB-Seat

* **CA 2RB-Seat-1**: Deve deslizar de maneira suave sobre o trilho.
* **CA 2RB-Seat-2**: O atleta não deve deslizar sobre o banco ao realizar o movimento de remada.

#### Critérios de Aceitação do 2RB-Row

* **CA 2RB-Row-1**: A restituição do movimento deve ser realizada de tal forma que o atleta realize  o movimento completamente.
* **CA 2RB-Row-2**: A resistência criada pelo gerador deve ser transmitida integralmente ao movimento da remada.
* **CA 2RB-Row-3**: A estrutura deve suportar sem falhar (quebrar ou deformar plasticamente) as cargas dinâmicas a que será submetida em seu uso natural.
* **CA 2RB-Row-4**: O manete não deve escorregar da mão do usuário durante a utilização do equipamento.

#### Critérios de Aceitação do 2RB-Case

* **CA 2RB-Case-1**: Deve comportar o subsistema 2RE-Kernel sem interferir em seu funcionamento.

### Critérios de Aceitação do 2RPower

Os _stakeholders_ da disciplina em comum acordo com o subsistema de energia definiram que alguns parâmetros serão aferidos e dimensionados após o Ponto de Controle 1 (PC1), devido as dificuldades de medir ou encontrar em bibliografias essas variáveis.

#### Critérios de Aceitação do 2RP-Generator

* **CA 2RP-Generator-1**: O gerador irá receber a potência mecânica da remada do atleta e gerar uma corrente elétrica que irá variar de acordo com a carga alimentada pelo gerador.

#### Critérios de Aceitação do 2RP-Resistance

* **CA 2RP-Resistance-1**: A variação dessa corrente irá gerar um conjugado elétrico nas bobinas do estator que se oporá ao conjugado mecânico da remada aplicado no rotor.

#### Critérios de Aceitação do 2RP-Battery

* **CA 2RP-Battery-1**: A energia excedente gerada será armazenada em uma bateria, que por sua vez irá alimentar o sistema eletrônico. A potência necessária para manter o sistema funcionando ainda será dimensionado.

### Critérios de Aceitação do 2RElectronic

#### Critérios de Aceitação do 2RE-Suit

* **CA 2RE-Suit-1**: A vestimenta deve ser posta no usuário para aquisição dos dados. Para execução de tal tarefa, a vestimenta deverá posicionar os sensores de forma firme para aquisição dos dados e que não atrapalhe o usuário na execução do movimento de remada.

#### Critérios de Aceitação do 2RE-Cardio

* **CA 2RE-Cardio-1**: O sensor de frequência cardiaca deverá fornecer dados filtrados, tratados e condicionados para o microcomputador (Raspberry Pi) presente no 2RE-Kernel.

#### Critérios de Aceitação do 2RE-IMU

* **CA 2RE-IMU-1**: Os sensores de unidades inerciais serão posicionados nas pernas do usuário e deverão entregar como informação o movimento realizado ao longo do tempo, utilizando ferramentas do IMU como acelerômetro, magnetômetro e giroscópio.

#### Critérios de Aceitação do 2RE-Volt

* **CA 2RE-Volt-1**: O sistema apresentará uma variação quanto às especificações de tensão na carga para aferição da potência exercida pelo atleta.

#### Critérios de Aceitação do 2RE-Relay

* **CA 2RE-Relay-1**: Os relés de acionamento farão parte do sistema de controle. Cada relé implicará em alterações na carga relativa às resistências.

#### Critérios de Aceitação do 2RE-Kernel

* **CA 2RE-Kernel-1**: Receber e processar os sinais recebidos pelos sensores(IMU e Cardíaco).
* **CA 2RE-Kernel-2**: Este é o sistema núcleo da eletrônica embarcada e deverá controlar e acionar os sistemas de relé.  

#### Critérios de Aceitação do 2RE-UI

* **CA 2RE-UI-1**: O acionamento do funcionamento das cargas deve ser feito utilizando três botões que estão presentes nesta seção. O controle e debounce dos botões será uma ação da interface física para o funcionamento do aparelho.

### Critérios de Aceitação do 2RSystem

* **CA 2RSystem-1**: O sistema deve possuir uma função _failsafe_ onde requisita a anulação da carga de dificuldade em caso de erro;
* **CA 2RSystem-2**: O sistema deve ser capaz de fornecer as informações de performance do atleta com atraso máximo de $ 600 ms $ (_milliseconds_);
* **CA 2RSystem-3**: O sistema deve ser capaz de realizar o _pipeline_ de início de treino (definido em características) na íntegra;
* **CA 2RSystem-4**: O sistema deve ser capaz de realizar o _pipeline_ de fim de treino (definido em características) na íntegra;
* **CA 2RSystem-5**: O sistema deve ser capaz de realizar o _pipeline_ de processamento de dados da 2RE-Suit (definido em características) na íntegra;
* **CA 2RSystem-6**: O sistema deve ser capaz de realizar o _pipeline_ de processamento de potência do atleta (definido em características) na íntegra;
* **CA 2RSystem-7**: O sistema deve ser capaz de realizar o _pipeline_ de controle de dificuldade (definido em características) na íntegra;

#### Critérios de Aceitação do 2RS-Controller

* **CA 2RS-Controller-1**: O subsistema deve ser capaz de ser integrado com todos os outros subsistemas do 2RSystem, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Controller-2**: O subsistema não deve, em hipótese alguma, modificar as informações recebidas pelos outros subsistemas.

#### Critérios de Aceitação do 2RS-Receiver

* **CA 2RS-Receiver-1**: O subsistema deve ser capaz de ser integrado com o 2RE-Suit, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Receiver-2**: O subsistema deve ser capaz de ser integrado com o 2RE-Kernel, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Receiver-3**: O subsistema deve ser capaz de ser integrado com o subsistema 2RS-Controller, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Receiver-4**: O subsistema deve ser capaz de desserializar os dados e convertê-las em variáveis/objetos modelos;

#### Critérios de Aceitação do 2RS-Processer

> [TODO: Software]

* **CA 2RS-Processer-1**: O subsistema deve ser capaz de ser integrado com o subsistema 2RS-Controller, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;

#### Critérios de Aceitação do 2RS-Viewer

> [TODO: Software]

* **CA 2RS-Viewer-1**: O subsistema deve ser capaz de ser integrado com o subsistema 2RS-Controller, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Viewer-2**: O subsistema deve ser capaz de fornecer as animações do atleta e do modelo ideal com taxa média de $ 20 fps $ (_frames per second_);

#### Critérios de Aceitação do 2RS-Transmitter

> [TODO: Software]

* **CA 2RS-Transmitter-1**: O subsistema deve ser capaz de ser integrado com o subsistema 2RS-Controller, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
