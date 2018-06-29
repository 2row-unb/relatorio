## Solução final 2RElectronic

O MQTT, protocolo utilizado para o envio de mensagens do microcontrolador ESP8266 para o Kernel inicialmente foi desenvolvido 
com base em TCP/IP. Entretanto, ao fazer a integração com software e os possíveis testes do sistema de envio e recebimento de dados
observou-se que a taxa de amostragem estava muito abaixo do esperado, o máximo com esse protocolo chegou a 50 Hz, isso porque esse 
tipo de protocolo ao enviar uma mensagem recebe uma outra mensagem avisando que a mensagem foi entregue, isso de certo modo interfere 
no período de envio de outras mensagem. Para o desenvolvimento de um sistema em tempo real, esse resultado não estava satisfatório,
o processamento da ESP8266 estava de acordo com o esperado, porém, as publicações estavam ocorrendo de forma muito lenta. 

Para que a integração eletrônica/software fosse realizada o código de aquisição de leitura dos dados da IMU foi alterado para o 
protocolo MQTT-SN (MQTT for Sensor Network), isso porque esse protocolo em específico não depende do TCP/IP para que suas funcionalidades sejam atendidas. Esse protocolo é muito utilizado em projetos de IoT que precisam da utilização de baterias como fonte de alimentação. No caso desse projeto, foi preciso utilizarmos a camada de internet UDP, o tamanho mínimo da mensagem para esse protocolo é de 1 byte. Um ponto importante que auxilia a velocidade é que esse protocolo possibilita suporte ao ID, tornando a comunicação mais rápida, devido a resução de processamento e memória. Com a utilização desse protocolo  a taxa de amostragem do sistema ficou em 100 Hz, o que possibilitou receber os dados para o tratamento dos dados da IMU no sistema de software. É válido ressaltar que foi difícil de ser encontado materiais a respeito da biblioteca MQTT-SN e para que pudesse ser utilizada a função de publicação, o pessoal de software desenvolveu a biblioteca do MQTT-SN para o UDP. Assim, foi possível testar o código de leitura, tratamento e publicação dos dados da IMU.


