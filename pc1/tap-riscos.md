## Análise de Risco

<!--
Jonathan: [OK]
-->

Riscos são fatores externos e internos que podem afetar positivamente ou negativamente o andamento do projeto. Entender quais riscos circundam o projeto é uma atividade essencial que permite definir ações estratégicas para mitigar os riscos negativos e/ou promover os riscos positivos.

A tabela [@tbl:riscos_estrutura] ilustra o levantamento realizado dos possíveis riscos para o projeto.

----------------------------------------------------------------------------------------------------------
 Risco                     Consequência                 Probabilidade      Impacto   Ação estratégica
------------------------- ---------------------------- ------------------ --------- ---------------------------
 Falha mecânica            O eixo de transmissão        Média              Alto      Fazer cálculos
 do equipamento            não funcionar                                             e simulações corretamente

 Atraso na                 Entrega atrasada do          Média              Alto      Seguir o cronograma
 fabricação da             projeto                                                   corretamente
 estrutura

 Não comportar             A integração não             Baixa              Médio     Ter uma boa comunicação
 outros subsistemas        funcionar                                                 com as outras áreas

 Estrutura dimensionada    O aparelho não               Baixa              Alto      Realização de
 incorretamente            funcionar                                                 dimensionamento detalhado

 Dimensionamento           Torque insuficiente          Média              Alto      Fazer cálculos e
 incorreto do gerador      para o movimento                                          simulações antes
                           necessário                                                da escolha

 Dimensionamento           Queima de equipamentos       Média              Alto      Fazer cálculos e simulações
 incorreto do banco        e níveis de dificuldade                                   antes da montagem e
 de resistências           esperados não atingidos                                   verificar sistema antes
                                                                                     da ligação

 Controle de               Não conseguir controlar      Média              Alto      Verificação de todo o
 carga                     a intensidade da corrente,                                sistema
                           consequentemente, não
                           conseguir ajusta a carga

 Sistema de                Escolha de bateria que       Média              Médio     Realizar corretamente
 armazenamento             não atende as                                             o dimensionamento
                           especificações e exigir
                           mais dela, encurtando
                           sua vida útil

 Falha na leitura de       Leitura incorreta do         Baixa              Alto      Troca do sensor após testes
 algum sensor              sinal adquirido

 Calibração incorreta      Distorção do sinal e         Média              Alto      Recalibração
 do IMU                    impossibilidade de
                           gerar o movimento
                           visual 3D

 Integração do             Deixar de ter a medida       Média              Alto      Medir a rotação do eixo com
 wattímetro com a          de potência                                               um potenciômetro multigiro
 estrutura

 Queima de                 Aumento no tempo de          Média              Alto      Repor componente e refazer
 componentes               entrega dos resultados                                    o circuito necessário
----------------------------------------------------------------------------------------------------------
:Riscos do projeto e respectivas ações estratégicas{#tbl:riscos}
