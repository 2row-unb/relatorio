## 2RSystem

Para a aplicação de visualização e _interface_ do 2Row, 2RS-_Viewer_ sofreu diversas modificações, incluindo elementos arquiteturais e de modelagem. São elas:

1. Simplificação de cenas em árvore de nós:

    * Na versão da segunda entrega, 2RS-_Viewer_ utilizava herança de cenas para definir os estados de visualização;
    * A versão final utiliza de uma única cena com um nó de controle raíz que gerencia os estados através de mudanças de atributos de nós filhos;
    * Tal modificação diminuiu o uso de memória e melhorou a _performance_ da aplicação.
1. Mudanças na máquina de estados:

    * Na versão da segunda entrega, 2RS-_Viewer_ possuia os seguintes estados: **em espera**, **em atividade** e **resultados**;
    * A versão final possui três estados: **em espera**, **em calibração** e **em atividade**;
    * **Em espera** é o estado em que a aplicação não possui resposta do 2RS-_Controller_. Isso ocorre quando o usuário não iniciou o 2Row, ou quando o mesmo se encontra inativo;
    * **Em calibração** é um estado novo na qual orienta o usuário a permanecer na posição de calibração. Isso ocorre quando o 2RSuit não possui os eixos de orientação calibrados;
    * **Em atividade** é o estado em que o usuário realiza a atividade e monitora na interface seu desempenho e sua movimentação em tempo real;
    * **Resultados** era um estado de encerramento, na qual apresentava o desempenho médio do usuário ao longo da atividade.
1. Reformulação do modelo do atleta:

    * Na versão da segunda entrega, 2RS-_Viewer_ utilizava um modelo humano masculino de alta fidelidade;
    * Na versão da entrega final, 2RS-_Viewer_ utiliza um modelo robótico que segue o _design_ do atleta na logomarca do 2Row;
    * Tal modificação melhorou consideravelmente a _performance_ da aplicação, além de permitir a neutralidade de gênero e concordância com a folha de estilo e identidade do projeto.

2RS-_Viewer_, portanto, resultou em um projeto com:

* Capacidade de compilação para Windows, MacOS, Linux, Android e iOS;
* _Release_ para Linux ARM7, em uso embarcado no dispositivo Odroid XU4;
* Programado em GDScript, utilizando a _engine_ Godot;
* Mantido no GitHub, no endereço [https://github.com/2row-unb/2rs-viewer](https://github.com/2row-unb/2rs-viewer);
* Mantido no GitHub, no endereço [https://github.com/2row-unb/2r-sys](https://github.com/2row-unb/2r-sys);
* Licença GPL-3.0;
* _Interface_ de comunicação HTTP/TCP/IP e dados codificados em JSON;
* Três telas compostos por 76 nós em uma cena;
* Apresentação da logomarca do 2Row;
* Mensagens em português brasileiro;
* Modelo 3D de um robô que simula o movimento ideal do remo e o movimento atual do atleta;
* Painel informativo que apresenta a potência do atleta, a velocidade do atleta, o tempo de ativade e o grau de dificuldade.
