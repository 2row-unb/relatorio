## Características dos Produtos

	TODO: Sintetizar as características de todas as frentes para usar como introdução desta seção

### Características de _Software_
A arquitetura do submódulo de _software_ do projeto será baseada em uma divisão de subsistemas encapsulados, de tal forma que cada um realize suas tarefas específicas e, quando necessário, troquem dados e informações entre si.

Levando a arquitetura em conta, foram projetados 4 subsistemas: **Subsistema de Aquisição de Dados**, **Subsistema de Processamento de Dados**, **Subsistema de Controle** e **Subsistema de Visualização de Performance**. A interação entre eles pode ser visualizada na diagramação a seguir:
![Arquitetura de Software]^[Arquitetura de Software]](./imagens/arquitetura_software.png){#fig:arquiteturasoftware}

A listagem a seguir especifica sucintamente as atividades - presentes nos subsistemas citados acima - a serem realizadas pelo submódulo de _software_:
1. processamento de todos os dados feito por um Raspberry PI;
2. transmissão dos dados das ações do atleta coletados pelos sensores IMU, acoplados ao Raspberry PI;
3. utilização de algoritmos sofisticados para criação do modelo do corpo humano utilizando os dados coletados pelos sensores;
4. utilização de algoritmos sofisticados para comparação dos modelos matemáticos ideais de treinamento com o modelo gerado a partir das ações do atleta;
5. utilização de arquitetura de transmissão, compactação e tratamento inteligente de dados para possibilitar disponibilização dos modelos 3D em _real time_;
6. disponibilização de dois modelos 3D do corpo humano (um representando a movimentação ideal do treinamento e outro representando a movimentação atual do atleta) em um monitor acoplado ao Raspberry PI.

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
