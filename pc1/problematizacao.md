# Problematização

> **TODO**: Quais os problemas que o projeto propõe resolver; Quais os problemas que cada engenharia propõe resolver.

* Dificuldades para análise de desempenho em treinamento de remo;
* Dificuldades para iniciantes do esporte de remo adquirirem eficiência técnica;
* Inacessibilidade para aquisição de ferramentas para aperfeiçoamento técnico do esporte de remo.

## Eletrônica
As pesquisas científicas relacionadas aos parâmetros biomecânicos são escassas quando se trata de esportes náuticos no Brasil, isso não infere apenas atletas de alto rendimento, mas também iniciantes no esporte. Os parâmetros que implicam no rendimento e desempenho para esse tipo de esporte são a potência e condições cardíacas. Um dos maiores problemas relacionados a esse esporte é a postura do praticante. 

Existe uma técnica de movimentos ciclícos, em que cada um determina uma remada e esses movimentos requerem uma postura adequeda. Atualmente, a postura é analisada através da observação dos vídeos tendo total dependência de um instrutor. As modificações prospostas nessse trabalho apresenta como dificuldade inicial analisar o movimento corporal realizado pelo iniciante, ou seja, determinar os ângulos  normalizados de uma das pernas e consequentemente a calibração dos sensores biomecânicos.

Outro ponto importante é a escassez de mecanismos para integração do sensoreamento biomecânico acoplado ao sistema. Os estudos  científicos apresentam a análise dos parâmetros de potência, postura e ciclo cardíacos e seus comportamentos aplicados separademente, o que dificulta exergar o sistema de desempenho do iniciante em um sistema como um todo.

## Energia

Diante do cenário da construção de um aparelho de remo focado em treinamento de atletas iniciantes, é necessário que haja a simulação da força exigida na remada que ocorre no ambiente natural do esporte.

Segundo o funcionamento de um dinamômetro eletrônico, pode-se empregar uma máquina elétrica, operando no modo gerador, como um eficiente dispositivo de torque ajustável, se houver um meio de ajustar a carga. Porém, essa tecnologia empregada a realidade do projeto, carece de aplicações práticas.

Dessa forma, a complexidade se encontra em gerar níveis de dificuldade para o atleta durante o treinamento, que podem ser controlados eletronicamente e ainda, aproveitar a energia mecânica gerada durante o ciclo de remada e armazená-la para uma posterior alimentação do próprio sistema.

## Estrutura

Um dos maiores problemas existentes na atualidade no treinamneto de atletas iniciantes de remo é conseguir um aparelho de treinamento que possua uma estrutura capaz de comportar novas tecnologias, que ofereça dados que informem ao atleta como deixar o seu treinamento mais eficiente, e assim, ajuda-lo a melhorar o seu desempenho. Atrelado a essa dificuldade também se tem o fato de que os aparelhos mais tecnológicos existentes no mercado possuem preços elevados, e isso torna a aquisição de um aparelho como esse inviável para um grande grupo de atletas.

Outra dificuldade é que os aparelhos encontrados no mercado não possuem a sua resistência mecânica ocasionado por um gerador. Nesse projeto tem-se por objetivo conseguir de uma maneira eficiente e satisfatória realizar a integração do sistema estrutural com o sistema energético e de alto potencial de um gerador.

Estruturalmente existe o desafio de construir um aparelho que seja resistente, seguro e que atenda as necessidades de um atleta de remo. Podendo competir no mercado não apenas no quisito de preço mas também ser um produto que tenha um _design_ competitivo. Outro ponto importante a ser analisado é que os materiais utilizados, na construção do aparelho, seja de fácil acesso no mercado, e uma montagem simplificada, tudo isso levando em consideração características estruturais satisfatórias. Tudo isso com o objetivo de que o próprio clioente consiga substiuir peças estruturais danificadas por outras novas sem a necessidade de ter que adquirir um novo aparelho completo. 

## Software

Há uma dificuldade teórica a nível dos algoritmos para aferição da qualidade de performance através da comparação de modelos simulados em _software_. Essa dificuldade se dá principalmente sobre o grande conjunto de variáveis que influenciam modelos extraídos de situações reais. Estes são extremamente dependentes do contexto, do equipamento, do ambiente, do atleta, etc. É necessário um grande esforço de desenvolvimento para garantir uma comparação a nível de _software_ que leve em consideração várias das intempéries que podem afetar um treinamento assistido por computador.

Existe também, uma complexidade elevada para construção de uma arquitetura de _software_ que permita o processamento, a análise, e a exibição  das informações coletadas em tempo real. Garantir o mínimo possível de atraso entre a coleta, a transmissão, o processamento, a análise e a exibição, são fatores que juntos determinam o sucesso de uma ferramenta capaz de interpretar cinematicamente uma situação do mundo real e apresentá-la em um tempo suficiente para que um ser humano possa reagir às informações exibidas.

Nesse contexto, contabilizamos poucas ferramentas de código aberto que forneçam uma API para construção e análise de modelos computacionais a partir de um conjunto de dados cinemáticos das juntas do corpo humano. Essas ferramentas, como o OpenSim da Universidade de Stanford, estão em fase de desenvolvimento e necessitam de um estudo aprofundado para que sejam aplicadas ou não em uma solução de _software_.
