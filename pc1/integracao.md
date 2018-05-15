# Plano de Integração
## Integração – 2RBoat/2RPower

![Local da estrutura para acoplamento do eletroímã e disco](imagens/IMG_5119.JPG){#fig:estrutura-e-energia}


## Integração – 2RBoat/2RElectronic

 A integração do sistema de eletrônica  com estrutura consiste em duas situações. A primeira trata-se da estrutura, a qual supotará as células de cargas (Estrutura de apoio aos pés), adequada para comportar o sensor e a passagem dos fios do mesmo. A segunda, trata-se do fornecimento da estrutura do case para alocar os sistemas emcados, incluindo os botões, a raspberry Pi 3 e os demais sistemas da parte de software.
 
 Ademais, para validar o cálculo da força de reação para dimensionar a célula de carga, o sistema 2RBoat fez a simulação estática da força para o aparato dos pés, apresentado na figura [@fig:simuforca], observou-se que essa estrutura, suporta em cada lado uma força de 850 N. A força máxima é de aproximadamente 848 N para, vale ressaltar que o cálculo foi feito para a potência máxima de remada (600 W).
 
![Simulação estática da força para o apoio do pé.](imagens/simuforca.JPG){#fig:simuforca}

## Integração - 2RElectronic/2RPower

A integração do sistema de eletrônica com energia se baseia em fazer as conexões necessárias para chavear as bobinas utilizando o circuito com relés já mencionados anteriormente, testes já foram feitos para o acionamento de cada bobina separadamente e eles se mostraram nem executados.

![reles^[Fonte: Do_autor]](imagens/reles.png){#fig:Reles}


![Testes do código para acionamento dos níveis de carga do eletroímã](imagens/IMG_5696.JPG){#fig:estrutura-e-eletronica-1}

![Testes do código para acionamento dos níveis de carga do eletroímã](imagens/IMG_5698.JPG){#fig:estrutura-e-eletronica-2}

![Testes do código para acionamento dos níveis de carga do eletroímã](imagens/IMG_5699.JPG){#fig:estrutura-e-eletronica-3}

## Integração – 2RElectronic/2RSystem
A troca de informação entre Eletrônica e software é bastante importante para o correto funcionamento do projeto. Essa relevância se dá pelo fato de ocorrer a troca de várias informações referentes ao desenvolvimento do atleta.
Será entregue a parte de software os dados referêntes as IMU's, um tempo de ciclo, a potência desenvolvida pelo atleta e os estados dos botôes. A interação entre esses dados entregues tratá como retorno as ações que o kernel deverá delegar aos dispositivos as tarefas relacionadas ao movimento.

O vetor enviado como uma mensagem para software tem o seguinte formato:
vetor[]=(accelx1, accely1, accelz1, girox1, giroy1, giroz1, magnx1, magny1, magnz1, accelx2, accely2, accelz2, girox2, giroy2, giroz2, magnx2, magny2, magnz2, pot, t, estado 1,estado2,estado3)

### Paho Client
Toda a comuniação entre o Kernel e a parte de software será feita usando o paho client. Ele já tem métodos especificos para que essa comunicação eficiente.

## Integração dos sensores do projeto

Os dados gerados pelos sensores já estão chegando até o kernel, colocando a ESP como cliente e a Raspberry Pi como broker. O código que executa a tarefa inicia o cliente através de uma função padrão do protocolo MQTT, logo após isso as informações sobre a rede local e o IP do kernel são setados para realizar a conexão, também através de outra função padrão do MQTT, nessa situação uma função de reconexão garante que o existe a conexão entre o broker e o determinado cliente. Logo que todas essas etapas são estabelecidas todo o trabalho do cliente ESP8266 será realizado em relação aos dados da IMU por funções e determinadas em um setup, por fim um loop infinito vai garantir que as funções sejam devidamente invocadas para envio das mensagens ao kernel.
A imagem [@fig:Envio_IMU_ESP8266_MQTT] retrata o recebimento de dados pelo terminal da Raspberry Pi, como kernel. Os dados apresentados na imagem são de um vetor de 9 posições com a seguinte ordem dos dados da IMU: acelerômetro x, y e z, depois o giroscópio x, y e z, por fim o magnetômetro x, y , z.

![Celula_s^[Fonte: ]](imagens/teste_mqtt.png){#fig:Envio_IMU_ESP8266_MQTT}
