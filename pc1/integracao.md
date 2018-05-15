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
