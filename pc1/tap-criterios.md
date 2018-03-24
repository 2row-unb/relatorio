
## Critérios de Aceitação do Projeto

	TODO: Sintetizar as os critérios de aceitação de todas as frentes para usar como introdução desta seção

### Critérios de Aceitação de _Software_
 Serão definidos critérios de aceitação para cada um dos subsistemas do submódulo de _software, os quais estão listados a seguir em tópicos:

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

O sistema de eletrônica está bem distribuido para ação dos componentes para aquisição dos resultados esperados. Todo o sistema será projetado com boas vistas ao acoplamento dos sistemas de energia e de software.

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
