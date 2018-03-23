## Características dos Produtos

	TODO: Sintetizar as características de todas as frentes para usar como introdução desta seção

### Características de _Software_
A arquitetura do submódulo de _software_ do projeto será baseada em uma divisão de subsistemas encapsulados, de tal forma que cada um realize suas tarefas específicas e, quando necessário, troquem dados e informações entre si.

Levando a arquitetura em conta, foram projetados 5 subsistemas: **Subsistema de Controle**, **Subsistema de Aquisição de Dados**, **Subsistema de Processamento**, **Subsistema de Visualização de Performance** e **Subsistema Atuador**. A interação entre eles pode ser visualizada na diagramação a seguir:

![Arquitetura de Software^[Arquitetura de Software]](./imagens/arquitetura_software2.png){#fig:arquiteturasoftware}

Uma descrição sucinta de cada um dos subsistemas pode ser conferida nos tópicos seguintes:
#### 1. Subsistema de Controle
Este subsistema é responsável por intercambiar dados, informações e tarefas entre os outros subsistemas; ele pode ser visto como um delegador de tarefas que tem ciência de todas as operações que estão acontecendo no momento.

#### 2. Subsistema de Aquisição de Dados
Este subsistema é responsável por receber e preprocessar, se necessário, os dados oriundos dos sensores cinemáticos e cinéticos e dos botões de ação presentes na interface da estrutura. Após essas etapas, os dados são, então, repassados para o **Subsistema de Controle**, o qual dá sequência às próximas tarefas do submódulo de _software_.

#### 3. Subsistema de Processamento
Este subsistema é responsável por processar e calcular dados transmitidos pelo **Subsistema de Controle**, como por exemplo: comparar modelos de performance ideais e do atleta, fazer os cálculos necessários para a renderização dos modelos do corpo humano e geração de estatísticas. Os dados processados são devolvidos para o **Subsistema de Controle** subsequentemente.

#### 4. Subsistema de Visualização de Performance
Este subsistema é responsável por tornar visível as informações de interesse do atleta, as quais são providas pelo **Subsistema de Controle**. A renderização dos modelos do corpo humano, a disposição de elementos da interface gráfica e disponibilização visual de estatísticas são exemplos de tarefas delegadas a este subsistema.

#### 5. Subsistema Atuador
Este subsistema é responsável por mandar sinais para os microcontroladores eletrônicos, para que a ação de mudança de carga da estrutura, requerida pelo atleta, seja feita. Os pedidos de mudança (i.e., o aperto de botões na interface) são, primeiramente, recebidos pelo **Subsistema de Aquisição de Dados**, passados para o **Subsistema de Controle** e, então, delegados para o próprio **Subsistema Atuador**.

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
