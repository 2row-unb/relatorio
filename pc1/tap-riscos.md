## Análise de Risco

> TODO: Introduzir o contexto de risco

### Riscos de Estrutura

Um levantamento foi realizado dos possíveis riscos estruturais, a tabela abaixo ilustra isso.

----------------------------------------------------------------------------------------------------------
      Risco                 Consequência           Probabilidade      Impacto   Ação estratégica
------------------------- ----------------------- ------------------ --------- ---------------------------
 Falha mecânica             O eixo de transmissão  Média              Alto      Fazer cálculos
 do equipamento             não funcionar                                       e simulações corretamente

 Atraso na                  Entrega atrasada do    Média              Alto      Seguir o cronograma
 fabricação da              projeto                                             corretamente
 estrutura

 Não comportar              A integração não       Baixa              Médio     Ter uma boa comunicação
 outros subsistemas         funcionar                                           com as outras áreas

 Estrutura dimensionada     O aparelho não         Baixa              Alto      Realização de
 incorretamente             funcionar                                           dimensionamento detalhado
----------------------------------------------------------------------------------------------------------

### Riscos de Energia

Uma análise dos possíveis riscos que podem afetar o sucesso do projeto foi realizada com o intuito de definir ações estratégicas caso algum desses aconteça. Dessa forma, todos os riscos inicialmente identificados foram descritos, categorizados, e uma ou mais ações estratégicas foram definidas para amenizar ao máximo o impacto que o risco em questão possa causar ao desenvolvimento do projeto.

--------------------------------------------------------------------------------------------------------------
      Risco                Consequência              Probabilidade      Impacto   Ação estratégica
------------------------- ------------------------- ------------------ --------- -----------------------------
 Dimensionamento           Torque insuficiente       Média              Alto      Fazer cálculos e
 incorreto do gerador      para o movimento                                       simulações antes
                           necessário                                             da escolha

 Dimensionamento           Queima de equipamentos    Média              Alto      Fazer cálculos e simulações
 incorreto do banco        e níveis de dificuldade                                antes da montagem e
 de resistências           esperados não atingidos                                verificar sistema antes
                                                                                  da ligação

 Controle de               Não conseguir controlar   Média              Alto      Verificação de todo o
 carga                     a intensidade da corrent                               sistema
                           e, consequentemente, não
						   conseguir ajusta a carga

 Sistema de                Escolha de bateria que    Média              Médio     Realizar corretamente
 armazenamento             não atende as                                          o dimensionamento
                           especificações e exigir
						   mais dela, encurtando
						   sua vida útil
--------------------------------------------------------------------------------------------------------------

### Riscos de Eletrônica

Para especificar os riscos, consequências, probabilidade, impacto e a ação estratégica foi montada uma tabela SWOT com as principais execuções a serem feitas na parte de eletrônica, como a seguir:

--------------------------------------------------------------------------------------------------------------
      Risco                Consequência              Probabilidade      Impacto   Ação estratégica
------------------------- ------------------------- ------------------ --------- -----------------------------
 Falha na leitura de       Leitura incorreta do      Baixa              Alto      Troca do sensor após testes
 algum sensor              sinal adquirido

 Calibração incorreta      Distorção do sinal e      Média              Alto      Recalibração
 do IMU                    impossibilidade de
                           gerar o movimento
                           visual 3D

 Integração do             Deixar de ter a medida    Média              Alto      Medir a rotação do eixo com
 wattímetro com a          de potência                                            um potenciômetro multigiro
 estrutura

 Queima de                 Aumento no tempo de       Média              Alto      Repor componente e refazer
 componentes               entrega dos resultados                                 o circuito necessário
--------------------------------------------------------------------------------------------------------------
