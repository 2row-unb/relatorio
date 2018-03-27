## Critérios de Aceitação do Projeto

<!--
Está na estrutura do pandoc?
- [NÃO]

Validações:

[OK]: Tudo certo!
[TODO]: Falta alguma coisa! Nesse caso, informe o que está faltando

- Software []
> Jonathan [TODO]
>> Sintetizar as os critérios de aceitação de todas as frentes
>> Definir uma introdução

---------------
- Eletrônica []

---------------
- Energia []

---------------
- Estrutura []

---------------
-->

### Critérios de Aceitação do 2RSystem

* **CA 2RSystem-1**: O sistema deve possuir uma função _failsafe_ onde requisita a anulação da carga de dificuldade em caso de erro;
* **CA 2RSystem-2**: O sistema deve ser capaz de fornecer as informações de performance do atleta com atraso máximo de $ 600 ms $ (_milliseconds_);
* **CA 2RSystem-3**: O sistema deve ser capaz de realizar o _pipeline_ de início de treino, conforme `{figura}`, na íntegra;
* **CA 2RSystem-4**: O sistema deve ser capaz de realizar o _pipeline_ de fim de treino, conforme `{figura}`, na íntegra;
* **CA 2RSystem-5**: O sistema deve ser capaz de realizar o _pipeline_ de processamento de dados da **2RSuit**, conforme `{figura}`, na íntegra;
* **CA 2RSystem-6**: O sistema deve ser capaz de realizar o _pipeline_ de processamento de potência do atleta, conforme `{figura}`, na íntegra;
* **CA 2RSystem-7**: O sistema deve ser capaz de realizar o _pipeline_ de controle de dificuldade, conforme `{figura}`, na íntegra;

#### Critérios de Aceitação do 2RS-Controller

* **CA 2RS-Controller-1**: O subsistema deve ser capaz de ser integrado com todos os outros subsistemas do **2RSystem**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Controller-2**: O subsistema não deve, em hipótese alguma, modificar as informações recebidas pelos outros subsistemas;

#### Critérios de Aceitação do 2RS-Receiver

* **CA 2RS-Receiver-1**: O subsistema deve ser capaz de ser integrado com o **2RSuit**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Receiver-2**: O subsistema deve ser capaz de ser integrado com o microcontrolador de controle de dificuldade do **2Row**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Receiver-3**: O subsistema deve ser capaz de ser integrado com os botões da interface de usuário do **2Row**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Receiver-4**: O subsistema deve ser capaz de ser integrado com o subsistema **2RS-Controller**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Receiver-5**: O subsistema deve ser capaz de desserializar os dados e convertê-las em variáveis/objetos modelos;

#### Critérios de Aceitação do 2RS-Processer

* **CA 2RS-Processer-1**: O subsistema deve ser capaz de ser integrado com o subsistema **2RS-Controller**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Processer-2**: O subsistema deve ser capaz processar os dados dos sensores fornecidos por X, <!-- TODO -->

#### Critérios de Aceitação do 2RS-Viewer

* **CA 2RS-Viewer-1**: O subsistema deve ser capaz de ser integrado com o subsistema **2RS-Controller**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Viewer-2**: O subsistema deve ser capaz de fornecer as animações do atleta e do modelo ideal com taxa média de $ 20 fps $ (_frames per second_);

#### Critérios de Aceitação do 2RS-Transmitter

* **CA 2RS-Transmitter-1**: O subsistema deve ser capaz de ser integrado com o subsistema **2RS-Controller**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RS-Transmitter-2**: <!-- TODO -->

### Critérios de Aceitação do 2RB-Primary

* **CA 2RB-Primary-1:** A estrutura não deve falhar (quebrar ou deformar plasticamente) em sua faixa de operação, limitada ao peso do usuário de até 150kg.
* **CA 2RB-Primary-2:** A estrutura deve comportar confortavelmente usuários que estejam  dentro do espectro de estatura compreendido até o percentil masculino $95^{th}$ americano.
* **CA 2RB-Primary-3:** A estrutura deve acomodar todos os demais subsistemas e suas necessidades.

### Critérios de Aceitação do 2RB-Seat

* **CA 2RB-Seat-1:** Deve deslizar de maneira suave sobre o trilho.
* **CA 2RB-Seat-2:** O atleta não deve deslizar sobre o banco ao realizar o movimento de remada.

### Critérios de Aceitação do 2RB-Row

* **CA 2RB-Row-1:** A restituição do movimento deve ser realizada de tal forma que o atleta realize  o movimento completamente.
* **CA 2RB-Row-2:** A resistência criada pelo gerador deve ser transmitida integralmente ao movimento da remada.
* **CA 2RB-Row-3:** A estrutura deve suportar sem falhar (quebrar ou deformar plasticamente) as cargas dinâmicas a que será submetida em seu uso natural.
* **CA 2RB-Row-4:** O manete não deve escorregar da mão do usuário durante a utilização do equipamento.

### Critérios de Aceitação do 2RB-Case

* **CA 2RB-Case-1:** Deve comportar o subsistema **2RE-Kernel** sem interferir em seu funcionamento.

### Critérios de Aceitação do 2RPower

Os Stakeholders da disciplina em comum acordo com o subsistema de energia definiram que alguns parâmetros serão aferidos e dimensionados após o Ponto de Controle 1, devido as dificuldades de medir ou encontrar em bibliografias essas variáveis.

#### Critérios de Aceitação do 2RP-Generator 

* **CA 2RP-Generator-1:** O gerador irá receber a potência mecânica da remada do atleta e gerar uma corrente elétrica que irá variar de acordo com a carga alimentada pelo gerador.

#### Critérios de Aceitação do 2RP-Resistance

* **CA 2RP-Resistance-1:** A variação dessa corrente irá gerar um conjugado elétrico nas bobinas do estator que se oporá ao conjugado mecânico da remada aplicado no rotor.

#### Critérios de Aceitação do 2RP-Battery 

* **CA 2RP-Battery-1:** A energia excedente gerada será armazenada em uma bateria, que por sua vez irá alimentar o sistema eletrônico. A potência necessária para manter o sistema funcionando ainda será dimensionado.

#### Critérios de Aceitação do 2RE-Suit 

* **CA 2RE-Suit-1:** O suit deve ser posto no usuário para aquisição dos dados. Para execução de tal tarefa, o suit deverá  posicionar os sensores de forma firme para aquisição dos dados e que não atrapalhe o usuário na execução do movimento de remada.

#### Critérios de Aceitação do 2RE-Cardio
* **CA 2RE-Cardio-1:** O sensor de frequência cardiaca deverá fornecer dados filtrados e tratados para o microcomputador(Raspberry Pi). 

#### Critérios de Aceitação do 2RE-IMU
* **CA 2RE-IMU-1:** O sensor de unidade inercial será posicionado nas pernas do usuário e veverá entregar como informação ao microcomputador(Raspberry Pi)

#### Critérios de Aceitação do 2RE-Watt
O wattimetro apresentará uma variação quando as especificações de tensão e corrente para aferição do atleta.

#### Critérios de Aceitação do 2RE-Relay
Os relés de acionamento farão parte do sistema de controle. Cada relé implicará em alterações na carga relativa às resistênicas.

#### Critérios de Aceitação do 2RE-Kernel

#### Critérios de Aceitação do 2RE-Cycle
O ciclo perfeito do movimento do atleta iniciante está ligado aos dados do IMU e do Wattímetro. Esta informação está ligada ao software com informações corretas para o acionamento. Para validação do ciclo, hardware e software deverão ligar à uma comparação de eficiência a ser mostrada em interface.

#### Critérios de Aceitação do 2RE-UI

<!--

Serão definidos critérios de aceitação para cada um dos subsistemas do submódulo de _software_, os quais estão listados a seguir em tópicos:

#### Critérios de Aceitação do Subsistema de Controle
1. o subsistema deve ser capaz de receber e transmitir dados para qualquer outro subsistema sem qualquer tipo de informação.

#### Critérios de Aceitação do Subsistema de Aquisição de Dados
1. o subsistema deve ser capaz de receber os dados oriundos dos sensores cinemáticos e cinéticos e dos botões de ação presentes na interface da estrutura sem qualquer tipo de perda de informação;
2. o subsistema deve ser capaz de transmitir os dados, então preprocessados, para o **Subsistema de Processamento** sem qualquer tipo de perda de informação.

#### Critérios de Aceitação do Subsistema de Processamento
1. o subsistema deve ser capaz de receber/transmitir informações do/para o **Subsistema de Controle** sem qualquer tipo de perda de informação;
2. o subsistema deve ser capaz de processar os dados recebidos e criar as informações necessárias para a renderização do modelo 3D a ser utilizado pelo **Subsistema de Visualização de Performance**.

#### Critérios de Aceitação do Subsistema de Visualização de Performance
1. o subsistema deve ser capaz de receber e interpretar as informações transmitidas pelo **Subsistema de Processamento de Dados** para construir os modelos 3D a serem mostrados;
2. o subsistema deve ser capaz de mostrar, em _real time_, um modelo 3D do corpo humano representando os movimentos sendo executados pelo atleta e um modelo 3D do corpo humano representando a movimentação ideal, para que comparações e, consequentemente, otimizações possam ser feitas no treinamento.

#### Critérios de Aceitação do Subsistema Atuador
1. o subsistema deve ser capaz de receber as demandas de alteração de carga do **Subsistema de Controle** sem qualquer tipo de informação;
2. o subsistema deve ser capaz de mandar sinais, sem qualquer perda de informação, para os microcontroladores eletrônicos, para que os mesmos possam alterar a carga da estrutura conforme especificado pelo atleta.

### Critério de aceitação de Eletrônica

O sistema de eletrônica está bem distribuido para ação dos componentes e para aquisição dos resultados esperados. Todo o sistema será projetado com boas vistas ao acoplamento dos sistemas de energia e de software.

1. A aquisição e tratamento dos sinais recebidos do sensor de frequência cardiáca e da unidade de medida inercial(IMU).

2. A ligação entre o reconhecimento da posição do usuário em conjunto com o funcionamento e acionamento das resistências.

3. Aferir a potência do sistema através de wattímetro ligado à eletrônica embarcadade informações de sinais e controle de acionamento.






A estrutura será dimensionada para que seja capaz de antender uma vasta gama de pessoas. Foi escolhido como parâmetro um homem americano do percentil 95, que possui 1.86 m de altura e pesa 102 KG. Assim, buscando uma margem de segurança, decidiu-se dimensionar a estrutura para que suporte o uso de um homem de até 2 metros de altura e de até 150 KG. Não há limite mínimo de estatura e de peso para o uso do aparelho. Com isso, foram definidos os critérios de aceitação da estrutura:

1. A estrutura não deve falhar (quebrar ou deformar plasticamente) ao ser utilizada dentro da faixa de operação definida.

2. A estrutura deve acomodar todos os outros subsistemas propostos.
-->
