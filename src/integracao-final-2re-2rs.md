## Integração – 2RElectronic/2RSystem

A integração entre 2RElectronic e 2RSystem foi realizada de modo que todos os submódulos trabalhassem paralelamente. Para que a integração fosse possível fez-se modificações para otimizar o sistema. O 2RE-Kernel se dividiu em kernel e kernel_control, o primeiro núcleo é responável pelas publicações e recebimento de mensagens e o segundo núcleo realiza a verificação, tratamento dos botões e controle dos níveis de carga. O kernel envia os dados via protocolo MQTT para o 2RS-controller, que passou a ser o receptor do 2RSystem. O 2RS-controller, por sua vez, tem como objetivo receber e desserializar dados providos por outros módulos e repassá-los para os demais módulos de tratamento de dados e visualização.

Os dados da IMU são repassados para o 2RS-processor, em que aplica-se o madgwick para obter os ângulos de euler, e consequentemente determinar a posição a partir dos dados enviados da IMU. O código do madgwick apresentou uma singularidade que se tratava do tempo de recebimento dos dados, este tinha que está de acordo com a taxa de amostragem de dados enviados pela ESP8266 Node MCU. 

O 2RS-processor publica no 2RS-controller e este repassa os dados para o 2RS-Viwer. O submódulo 2RS-Viwe é responsável pela contrução da visualização do sistema, tanto o modelo ideal quanto o modelo real, nesse último caso os dados para a construção do modelo foi o advindo do processamento dos dados pelo software do madgwick, isso para o membro inferior. Para os membros superiores o movimento dos braços foi inferido a partir do modelo ideal. 

A comunicação entre os subsistemas 2RElectronic e 2RSystem, foi feita utilizando o protocolo MQTT. Toda a comunicação entre o 2RE-Kernel e o 2RSystem foi feita utilizando a biblioteca open source Paho-MQTT Client. Entretanto, é válido ressaltar que para que o funcionamento ficasse otimizado o submódulo 2RE-Kernel ficou embarcado na arquitetura do 2RSystem, em que ambos utilizaram a biblioteca gabby construida pelo 2RSystem para facilitar a comunicação entre os tópicos. 

É válido ressaltar que foi difícil de ser encontado materiais a respeito da biblioteca MQTT-SN e para que pudesse ser utilizada a função de publicação, o submódulo 2RSystem desenvolveu a biblioteca do MQTT-SN para o UDP para que o código de leitura e tratamento dos offsets fosse aplicado.


Os parâmetros de desempenho do atleta foram calculados e repassados para o 2RS-Viwer para serem apresentados no visualizador, os parâmetros foram: potência, velocidade da remada, tempo de treino, nível de dificuldade, como pode ser visto na [@fig:Visualizador].

![Visualizador do modelo real/ideal e parâmetros de desempenho.^[Fonte: Do_autor]](imagens/visu.jpeg){#fig:Visualizador width=350px height=250px}
