## Características do Produto

<!--
Está na estrutura do pandoc?
- [NÃO]

Validações:

[OK]: Tudo certo!
[TODO]: Falta alguma coisa! Nesse caso, informe o que está faltando

- Software []
> Jonathan [TODO]
>> Cada frente mapear as características e features de cada subsistema

---------------
- Eletrônica []

---------------
- Energia []

---------------
- Estrutura []

---------------
-->

### Características de 2Row

<!-- Estrutura -->

### Características de `(Sistema de Energia)`

<!-- Energia -->

### Características de `(Sistema de Eletrônica)`

<!-- Eletrônica -->

### Características de 2RSuit

<!-- Eletrônica / Software -->

### Características de 2RSystem

A arquitetura do subproduto de _software_ do projeto, de nome **2RSystem**, é definida por um conjunto de subsistemas encapsulados, de tal forma que cada um realize suas tarefas específicas e, quando necessário, troquem dados e informações entre sí.

Levando a arquitetura em conta, foram projetados 5 subsistemas: **Subsistema de Controle** (**2RSC - 2RSystem _Controller_**), **Subsistema de Aquisição de Dados** (**2RSDR - 2RSystem _Data Receiver_**), **Subsistema de Processamento** (**2RSP - 2RSystem _Processer_**), **Subsistema de Visualização de Performance** (**2RSV - 2RSystem _View_**) e **Subsistema Atuador** (**2RSystem _Data Transmitter_**). A interação entre eles pode ser visualizada na diagramação a seguir:

![Arquitetura de Software^[Arquitetura de Software]](./imagens/arquitetura_software2.png){#fig:arquiteturasoftware}

#### 2RSC - Subsistema de Controle

Este subsistema é responsável por intercambiar dados, informações e tarefas entre os outros subsistemas. **2RSC** é um delegador de tarefas que tem ciência de todas as operações que acontecem no **2RSystem**.

Suas principais características são:

* **Característica 2RSC-1**: É um _software_ embarcado na **2Row**;
* **Característica 2RSC-2**: Possui otimização de uso de memória;
* **Característica 2RSC-3**: Não utiliza armazenamento de dados em disco rígido;
* **Característica 2RSC-4**: Possui interface de comunicação com todos os outros subsistemas do **2RSystem**;
* **Característica 2RSC-5**: Seu código-fonte é modularizado através do SRP (_Single-Responsibility Principle_, Príncipio da Responsabilidade Única);
* **Característica 2RSC-6**: Sua estrutura é definida de acordo com o _design pattern Delegation_.

Suas principais funcionalidades são:

* **_Feature_ 2RSC-1**: Receber informações do **Subsistema de Aquisição de Dados (2RSDR)** sobre requisições de início de treino e inicializar todos os subsistemas do **2RSystem**;
* **_Feature_ 2RSC-2**: Receber informações do **Subsistema de Aquisição de Dados (2RSDR)** sobre requisições de fim de treino e inicializar as ações de restauração para o estado inicial de todos os subsistemas do **2RSystem**;
* **_Feature_ 2RSC-3**: Receber informações do **Subsistema de Aquisição de Dados (2RSDR)** sobre requisições de mudança da carga de dificuldade e delegar para o **Subsistema Atuador (2RSDT)**;
* **_Feature_ 2RSC-4**: Receber informação do **Subsistema de Aquisição de Dados (2RSDR)** sobre a carga de dificuldade atual e transmitir a informação para o **Subsistema de Processamento (2RSP)**;
* **_Feature_ 2RSC-5**: Receber informações do **Subsistema de Aquisição de Dados (2RSDR)** sobre os sensores cinemáticos/cinéticos e delegar o processamento para o **Subsistema de Processamento (2RSP)**;
* **_Feature_ 2RSC-6**: Receber informações processadas pelo **Subsistema de Processamento (2RSP)** e delegar a apresentação para o **Subsistema de Visualização de Performance (2RSV)**;


#### 2RSDR - Subsistema de Aquisição de Dados

Este subsistema é responsável por receber e preprocessar, se necessário, os dados oriundos dos sensores cinemáticos e cinéticos e dos botões de ação presentes na interface do **2Row**. Após tais etapas, os dados são, então, repassados para o **Subsistema de Controle (2RSC)**, este que direciona os dados ao subsistema responsável pelas próximas tarefas do **2RSystem**.

Suas principais características são:

* **Característica 2RSDR-1**: É um _software_ embarcado na **2Row**;
* **Característica 2RSDR-2**: Possui otimização de uso de memória;
* **Característica 2RSDR-3**: Não utiliza armazenamento de dados em disco rígido;
* **Característica 2RSDR-4**: Possui interface de comunicação com o **2RSC**;
* **Característica 2RSDR-5**: Possui interface para receber dados do **2RSuit**;
* **Característica 2RSDR-6**: Possui interface para receber dados dos botões de ação do **2Row**;
* **Característica 2RSDR-7**: Possui interface para receber dados sobre a potência do atleta, enviada pelo sensor no **2Row**;
* **Característica 2RSDR-8**: Possui interface para receber dados do microcontrolador de controle de carga;
* **Característica 2RSDR-9**: Seu código-fonte é modularizado através do SRP (_Single-Responsibility Principle_, Príncipio da Responsabilidade Única);

Suas principais funcionalidades são:

* **_Feature_ 2RSDR-1**: Receber dados dos botões de ação do **2Row**, convertê-lo em modelo e transmitir a informação para o **2RSC**;
* **_Feature_ 2RSDR-2**: Receber dados do sensor de potência do **2Row**, convertê-lo em modelo e transmitir a informação para o **2RSC**;
* **_Feature_ 2RSDR-3**: Receber dados do **2RSuit**, convertê-lo em modelo e transmitir a informação para o **2RSC**;
* **_Feature_ 2RSDR-4**: Receber dados do microcotrolador do controle de carga, convertê-lo em modelo e transmitir a informação para o **2RSC**;

#### 2RSP - Subsistema de Processamento

Este subsistema é responsável por processar e calcular dados transmitidos pelo **Subsistema de Controle (2RSC)**, principalmente sobre o desempenho do atleta. Os dados processados são devolvidos para o **Subsistema de Controle (2RSC)**, este que direciona para o subsistema do **2RSystem** responsável pelo uso dos dados processados.

Suas principais características são:

* **Característica 2RSP-1**: É um _software_ embarcado na **2Row**;
* **Característica 2RSP-2**: Possui otimização de uso de memória;
* **Característica 2RSP-3**: Possui otimização em termos de complexidade de algoritmos;
* **Característica 2RSP-4**: Possui interface de comunicação com o **2RSC**;

Suas principais funcionalidades são:

* **_Feature_ 2RSP-1**: Receber informações do **2RSC** sobre as métricas do atleta e definir a performance do atleta;
* **_Feature_ 2RSP-2**: Definir o modelo de performance ideal;
* **_Feature_ 2RSP-3**: Comparar a performance do atleta com o modelo de performance ideal;
* **_Feature_ 2RSP-4**: Realizar cálculos de renderização e conversões lineares da performance do atleta e da performance ideal para um modelo de animação do corpo humano;
* **_Feature_ 2RSP-5**: Gerar estatísticas relevantes para o contexto do projeto.
* **_Feature_ 2RSP-6**: Transmitir as informações processadas para o **2RSC**.

#### 2RSV Subsistema de Visualização de Performance

Este subsistema é responsável por tornar visível as informações de interesse do atleta, as quais são providas pelo **Subsistema de Controle (2RSC)**.

Suas principais características são:

* **Característica 2RSV-1**: É um _software_ embarcado na **2Row**;
* **Característica 2RSV-2**: Possui interface para receber dados do **2RSC**;
* **Característica 2RSV-3**: Possui interface para transmitir dados para o _hardware_ de visualização (monitor);
* **Característica 2RSV-4**: Utiliza um motor (_engine_) para renderizar a interface gráfica de usário (GUI - _Graphic User Interface_).

A GUI é definida pelas seções:

* **_Feature_ 2RSV-1**: De apresentação do movimento atual do atleta;
* **_Feature_ 2RSV-2**: De apresentação do movimento ideal;
* **_Feature_ 2RSV-3**: De apresentação dos batimentos cardíacos;
* **_Feature_ 2RSV-4**: De apresentação da potência atual do atleta;
* **_Feature_ 2RSV-5**: De apresentação da velocidade atual do atleta, em $rev/min$ (RPM - _rotations per minute_);
* **_Feature_ 2RSV-6**: De apresentação do nível atual da carga de dificuldade;
* **_Feature_ 2RSV-7**: De apresentação do tempo de treino do atleta.

#### 2RSDT - Subsistema Atuador

Este subsistema é responsável por enviar sinais para os microcontroladores eletrônicos responsáveis pela ação de mudança da carga de dificuldade requisitada pelo atleta através dos botões de controle de dificuldade.

Os pedidos de mudança (i.e., o aperto de botões) são, primeiramente, recebidos pelo **Subsistema de Aquisição de Dados (2RSDR)**, repassados para o **Subsistema de Controle (2RSC)** e, então, delegados para este subsistema.

Suas principais características são:

* **Característica 2RSDT-1**: É um _software_ embarcado na **2Row**;
* **Característica 2RSDT-2**: Possui interface para receber dados do **2RSC**;
* **Característica 2RSDT-3**: Possui interface para transmitir dados para o microcontrolador de controle de carga;

Sua principal funcionalidade é:

* **_Feature_ 2RSDT-1**: Receber o fator de mudança de carga de dificuldade da **2RSC**, serializar o fator e transmitir o fator para o microcontrolador de controle de carga.

<!--
### Características de Energia

1.  disponibilização de resistência mecânica para o atleta, por meio da utilização de um gerador elétrico conectado a um banco de resistências elétricas;
2. fornecimento de diferentes níveis de dificuldade para o atleta durante o treinamento, através do controle de carga;
3. geração e armazenamento de energia elétrica.

### Características da Estrutura

A estrutura é caracterizada por ser um aparelho de remo _in_ _door_ que visa auxiliar atletas iniciantes no esporte de remo. Estruturalmente o remo indoor é composto basicamente por:
1. Suporte para os pés;
2. Transmissão de esforços através cabos;
3. Ajuste eletrônico da resistência;
4. Assento móvel deslizante;
5. Trilho guia para o assento;
6. Sistema de restituição da polia;

### Características da _Eletrônica_
1. Utilização de sensores IMU para extração de parâmetros relativos à posição das pernas durante os movimentos;
2. Utilização de encoder e torquímetro para medição de potência no eixo rotatório; ***Confirmar***
3. Utilização de sensor para caracterização dos batimentos cardíacos do indivíduo que utiliza o remo;
4. Aquisição dos sinais advindos dos sensores utilizando os microcontroladores ESP e MSP-430;
5. Sinais ruidosos necessitam de um circuito de condicionamento de sinal;
6. Calibração dos sensores IMU e cardíaco para a obtenção correta de daos;
-->
