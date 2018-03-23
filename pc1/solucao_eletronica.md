
# Solução de eletrônica

O subsistema de eletrônica possui a finalidade de criar  os circuitos de aquisição dos parâmetros vinculados ao desempenho dos atletas de base do esporte, os quais são de suma importância para a avaliação de cada movimento realizado. A aquisição será realizada de forma não-invasiva. 

Outrora era realizado uma avaliação do atleta a partir da observação do treinador ao olhar um vídeo feito durante o movimento. A nova formulação permitirá uma padronização dos parâmetros adquiridos e possível comparação entre o desempenho de diversos atletas, dessa forma, um iniciante teria seu desempenho aumentado em relação aos outros, pois a forma de treinar desde o início, com os movimentos corretos, contribuiria para uma melhor performance. 

Para  que seja possível a padronização dos parâmetros o subsistema eletrônica dividiu a solução em três tópicos: sistema de sensoriamento, aquisição e embarcado.


## Sistema de sensoreamento

Para analisar os fatores biomecânico e biomédico e consequentemente a influência que isso causa no desempenho, de um atleta ou iniciante no esporte remo, é necessário ter a atuação da instrumentação eletrônica, em que são aplicados os sensores e suas respectivas calibrações. A seguir, está descrito as tecnologias que foram selecionados para resolver o problema proposto.

### Sensor inercial (IMU)

A postura é um parâmetro essencial para aprender e aprimorar nesse esporte. Além de se sentir confortável, o remador tem de ser capaz de realizar os quatro ciclos principais, em suma podem ser ditos como entrada, propulsão, finalização e recuperação. Cada ciclo possui uma postura adequada. para iniciantes no remo é importante que as devidas correções nesse quesito sejam realizadas para que o rendimento seja garantido. 

Desse modo, é necessário avaliar o movimento dos membros para identificar um modelo padrão. Para que isso, serão utilizados sensores de medidas inerciais...
Os IMUs são capazes de realizar o monitoramento da velocidade e aceleração, tanto linear, quanto a angular. Isso porque ele é composto por acelerômetros e giroscópios. O giroscópio é comumente usado em sistemas de estabilização e orientação, principalmente no controle de motores de drone. entretanto sua função nesse trabalho será de obter a velocidade das remadas realizadas. Ademais, de acordo com os estudos de  …., esse tipo de tecnologia vem sendo empregada para analisar o movimento tanto dos remador quanto do barco. Nesse trabalho, será adquirido e analisado apenas o movimento do membro inferior do remador.

O acelerômetro é regido pela Segunda Lei de Newton, ou seja, pode-se obter a partir dele medições de aceleração, linear ou angular e possíveis inclinações. Dessa forma, esses dados serão utilizados  para a obtenção dos ângulos do membro inferior direito. Será realizado esse estudo em apenas um membro inferior, pois no esporte os ciclos da remada são bem síncronos. 

### Sensor de batimento cardíaco

O módulo de frequência cardíaca possibilita obter informações acerca de como o atleta iniciante está se portando fisiologicamente, dados como fadiga rápida e excessiva podem ser vistas como indicativos de um exercício não tão bem realizado. Para ter esse acompanhamento será utilizado o sensor de frequência cardíaca 4MD69, com tamanho 16 x 2,7mm, baixo consumo de energia (cerca de 4 mA) e tensão de operação de 3 a 5 V.

### Wattímetro de eixo


## Sistema de aquisição e condicionamento

A aquisição dos sinais será realizado por meio de circuitos de instrumentação, filtros, conversores, microcontroladores e microcomputadores, quando for o caso. Inicialmente, os sensores O sensor IMU será englobado em uma vestimenta de velcro que o remador deverá utilizar. Esse tipo de instrumento vestível foi escolhido por ser de baixo custo e prático.

## Sistema embarcado e de interface
O sistema eletrônico será integrado juntamente com o de software pelo microcomputador Raspberry Pi 3.

Para a atuação de captação e processamento de sinais a Raspberry será fundamental, integrada com outros dispositivos como MSP430 e display próprio para Raspberry será possível adquirir sinais inclusive analógicos, visto que a Raspberry não possui conversor A/D utilizando o conversor do MSP430, transmitir os sinais para a Raspberry processar e fazer as tomadas de decisão e ao final mostrar através da interface do display touchscreen.


### Raspberry Pi 3

A Raspberry Pi 3 Modelo B foi lançada em fevereiro de 2016. Ela tem se mostrado muito útil para o desenvolvimento de sistemas embarcados relacionados à aquisição e processamento de sinais para aplicações diversas, como no controle de drones, robótica, processamento de imagens, entre outros. 

Para a atuação de captação e processamento de sinais a Raspberry será fundamental, integrada com outros dispositivos como MSP430 e display próprio para Raspberry será possível adquirir sinais inclusive analógicos, visto que a Raspberry não possui conversor A/D utilizando o conversor do MSP430, transmitir os sinais para a Raspberry processar e fazer as tomadas de decisão e ao final mostrar através da interface do display touchscreen.

![Raspberry Pi 3^[Fonte: ]](./imagens/Raspberry.jpg){#fig:Raspberry_Pi_3}

Características:

Quad Core 1.2GHz Broadcom BCM2837 64bit CPU

1GB RAM

BCM43438 wireless LAN e Bluetooth de baixo consumo (BLE)

40-pin físicos GPIO

4 USB 2 portas

4 Polos stereo output and composite video port

Full HDMI

Porta CSI para câmera para conexão com a câmera de Raspberry

Porta DSI display para conexão ao display Raspberry Pi touchscreen

Entrada Micro SD para adição do sistema operacional








### MSP 430

![MSP430^[Fonte: ]](./imagens/msp430.jpg){#fig:MSP_430}

### ESP 8266

O ESP8266 é um microcontrolador com um processamento considerável para a aplicação em questão e possui um excelente diferencial, o módulo WI-FI acoplado. Além disso já traz consigo, conversor analógico-digital(ADC) e vários protocolos de comunicações, isso traria ao sistema versatilidade para aquisição e trato de sinais.

![ESP8266^[Fonte: ]](./imagens/esp8266.jpg){#fig:ESP_8266}

Características

CPU 32-bit RISC: Tensilica Xtensa LX106 rodando a 80 MHz;

64 KB de memória RAM de instruções, 96 KB de dados;

Flash QSPI Externo - de 512 KB a 4 MB;

IEEE 802.11 b / g / n Wi-Fi;

16 pinos de GPIO;

SPI, I²C, UART;

Tensão de operação ->3.3V.



