## Integração - 2RElectronic/2RPower

Os eletroímãs que compõem o freio eletromagnético são constituídos por um núcleo metálico envolto por bobinas, que por sua vez são excitadas com corrente contínua controlada através de conversores estáticos (fontes de alimentação). 

A força de um eletroímã pode ser regulada para mais ou menos, ajustando-se a corrente elétrica que percorre suas bobinas ou modulando as bobinas em níveis, dessa forma trabalhando com um valor fixo de corrente elétrica e com a relação entre o número de espiras e a força de atração, como no caso deste projeto.

O sistema de integração entre os subsistemas de eletrônica e de energia consistiu em fazer as conexões necessárias para chavear as bobinas utilizando o circuito com relés. Esse chaveamento também contou com a integração eletrônica e software. Isso, porque ao apertar o botão de aumentar ou diminuir a carga, uma mensagem era enviada do kernel_control para a controller e esse susbistema publicava uma mensagem para atualizar as variáveis necessárias, feito isso o transmitter publicava uma mensagem ao kernell_control solicitando o acionamento da carga escolhida pelo usuário. Essa linha de raciocínio seguida minimizou possíveis erros nas medições ao trocar a carga. Na figura a seguir é apresentado o módulo relé de 4 canais para o acionamento das bobinas e geração de 4 diferentes níveis de força para a remada do atleta.

![Módulo relé.^[Fonte: Do_autor]](imagens/rele.jpeg){#fig:Rele width=350px height=250px}
