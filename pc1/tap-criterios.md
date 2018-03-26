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

#### Critérios de Aceitação do 2RSC

* **CA 2RSC-1**: O subsistema deve ser capaz de ser integrado com todos os outros subsistemas do **2RSystem**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSC-2**: O subsistema não deve, em hipótese alguma, modificar as informações recebidas pelos outros subsistemas;

#### Critérios de Aceitação do 2RSDR

* **CA 2RSDR-1**: O subsistema deve ser capaz de ser integrado com o **2RSuit**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSDR-2**: O subsistema deve ser capaz de ser integrado com o microcontrolador de controle de dificuldade do **2Row**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSDR-3**: O subsistema deve ser capaz de ser integrado com os botões da interface de usuário do **2Row**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSDR-4**: O subsistema deve ser capaz de ser integrado com o subsistema **2RSC**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSDR-5**: O subsistema deve ser capaz de desserializar os dados e convertê-las em variáveis/objetos modelos;

#### Critérios de Aceitação do 2RSP

* **CA 2RSP-1**: O subsistema deve ser capaz de ser integrado com o subsistema **2RSC**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSP-2**: O subsistema deve ser capaz <!-- TODO -->

#### Critérios de Aceitação do 2RSV

* **CA 2RSV-1**: O subsistema deve ser capaz de ser integrado com o subsistema **2RSC**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSV-2**: O subsistema deve ser capaz de fornecer as animações do atleta e do modelo ideal com taxa média de $ 20 fps $ (_frames per second_);

#### Critérios de Aceitação do 2RSDT

* **CA 2RSDT-1**: O subsistema deve ser capaz de ser integrado com o subsistema **2RSC**, fornecendo um aviso de sucesso ou erro em sua tentativa de conexão;
* **CA 2RSDT-2**: <!-- TODO -->

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


### Critério de aceitação de energia

Os Stakeholders da disciplina em comum acordo com o subsistema de energia definaram que alguns parâmetros serão aferidos e dimensionados após o Ponto de Controle 1, devido as dificuldades de medir ou encontrar em bibliografias essas variáveis.

1. O gerador irá receber a potência mecânica da remada do atleta e gerar uma corrente elétrica que irá variar de acordo com a carga alimentada pelo gerador.

2. A variação dessa corrente irá gerar um conjugado elétrico nas bobinas do estator que se oporá ao conjugado mecânico da remada aplicado no rotor.

3. A energia excedente gerada será armazenada em uma bateria, que por sua vez irá alimentar o sistema eletrônico. A potência necessária para manter o sistema funcionando ainda será dimensionado.

### Critérios de Aceitação da _Estrutura_

A estrutura será dimensionada para que seja capaz de antender uma vasta gama de pessoas. Foi escolhido como parâmetro um homem americano do percentil 95, que possui 1.86 m de altura e pesa 102 KG. Assim, buscando uma margem de segurança, decidiu-se dimensionar a estrutura para que suporte o uso de um homem de até 2 metros de altura e de até 150 KG. Não há limite mínimo de estatura e de peso para o uso do aparelho. Com isso, foram definidos os critérios de aceitação da estrutura:

1. A estrutura não deve falhar (quebrar ou deformar plasticamente) ao ser utilizada dentro da faixa de operação definida.

2. A estrutura deve acomodar todos os outros subsistemas propostos.
-->
