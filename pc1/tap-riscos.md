## Análise de Risco

> TODO: Introduzir o contexto de risco
### Rsicos de estrutura
Um levantamento foi feito dos possiveis riscos estruturais, a tabela abaixo ilustra isso.

-------------------------------------------------------------------------------------
Risco                   Consequência           Chance Impacto Ação estratégica
----------------------- ---------------------- ------ ------- -----------------------
Falha mecânica do       O eixo de transmissão  Média  Alto    Fazer cálculos e
equipamento             não funcionar                         simulações corretas

Atraso na fabricação    Atraso na entrega do   Média  Alto    Seguir o cronograma
da estrutura            projeto                               corretamente

Não comportar outros    A integração não       Baixa  Médio   Ter uma boa comunicação
sistemas                funcionar                             com outras áreas

Estrutura dimensionada  O aparelho não         Baixa  Alto    Realização de dimensionamento
incorretamente          funcionar                             detalhado
-------------------------------------------------------------------------------------

### Riscos de Energia 

Uma análise dos possíveis riscos que podem afetar o sucesso do projeto foi realizada com o intuito de definir ações estratégicas caso algum desses aconteça. Dessa forma, todos os riscos inicialmente identificados foram descritos, categorizados, e uma ou mais ações estratégicas foram definidas para amenizar ao máximo o impacto que o risco em questão possa causar ao desenvolvimento do projeto.

|Risco|Consequência   |Probabilidade| Impacto | Ação estratégica                  |
|:-----:|:----------:|:--------------:|:-----------:|:---------:|
|Dimensionamento incorreto do gerador|Torque insuficiente para o movimento necessário|Média|Alto|Fazer cálculos e simulações antes da escolha 
|Dimensionamento incorreto do banco de resistências|Queima de equipamentos e níveis de dificuldade esperados não atingidos|Média|Alto|Fazer cálculos e simulações antes da montagem e verificar sistema antes da ligação|
|Controle de carga |Não conseguir controlar a intensidade da corrente e consequentemente não conseguir ajustar a carga|Média|Alto| Verificação de todo o sistema 
|Sistema de armazenamento |Escolha de uma bateria que não atende as especificações e exigir mais dela encurtando sua vida útil|Média|Média|Realizar corretamente o dimensionamento


### Riscos de Eletrônica

Para especificar os riscos, consequências, probabilidade, impacto e a ação estratégica foi montada uma tabela SWOT com as principais execuções a serem feitas na parte de eletrônica, como a seguir:

|Risco|Consequência   |Probabilidade| Impacto | Ação estratégica                  |
|:-----:|:----------:|:--------------:|:-----------:|:---------:|
|Falha na leitura de algum sensor|Leitura incorreta do sinal adquirido|Baixa|Alto|Troca do sensor após testes 
|Calibração incorreta do IMU|Distorção do sinal e impossibilidade de gerar o movimento visual 3D|Média|Alto|Recalibração|
|Integração do wattímetro com a estrutura |Deixar de ter a medida de potência|Média|Alto| Medir a rotação do eixo com um potenciômetro multigiro
|Queima de componentes |Aumento no tempo de entrega dos resultados |Média |Alto | Repor componente e refazer o circuito necessário
