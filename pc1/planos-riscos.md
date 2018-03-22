## Plano de Gerenciamento de Riscos

Risco é qualquer evento que tenha impacto negativo no projeto. Uma das chaves para o sucesso do projeto é gerenciar e reduzir efetivamento os riscos durante a concepção, fabricação e ciclo de vida do projeto. Para reduzir riscos é essencial indentificar perigos, avaliar potênciais consequências e a probabilidade de que eles venham a ocorrer. O método escolhido para o levantamento de riscos durante o projeto que será realizado será o _Failure Mode and Effects Analysis_, o _FMEA_.

A metodologia utilizada no _FMEA_ envolve três focos principais:
* Reconhecer e avaliar potenciais falhas e seus efeitos;
* Identificar e priorizar ações que podem eliminar potenciais falhas, reduzir a chance de ocorrência e reduzir riscos;
* Documentação dessas identificações, avaliações e atividades corretivas para que o controle de qualidade aumente ao longo do tempo.

O _FMEA_ é primariamente utilizado para falhas materiais e de equipamentos, mas pode ser adaptado paa erro humano, erro de performace e de software. As ferramentas comumente utlizadas em conjunto ao _FMEA_ para gerencimento dos riscos serão diagramas de fluxo de processo e diagrama de blocos.

Durante a fase de concepção/design do projeto os princiais pontos que devem ser focados para identificação de falhas devem ser:

1. Focar em modos de falha causados por deficiências no design;
2. Identificar características críticas e/ou significantes do produto;
3. Priorizar esforço de engenharia e recursos baseado no impacto que a falha causaria ao produto ou usuario.
4. Maximizar qualidade quanto se otimiza gastos;
5. Estabelecer conexões entre as diferentes áreas do projeto.

### **Tópicos de Análise Utilizados para a Construção do _FMEA_**

* **Potêncial Causa de Falha:** Lista dos potenciais modos de falha de componentes, subsistemas, sistemas, áreas e processos.  
* **Efeitos da Falha:** O impacto ou consequência que a falha provocaria na área afetada.
* **Severidade (S):** Severidade é a avaliação de quão relevante seria a consequência da falha no desenvolvimento ou funcionamento do projeto.
* **Ocorrência (O):** Ocorrência é a avaliação de quão provável é de que a falha ocorra.
* **Detecção (D):** Detecção é a avaliação da capacidade do design atual de identificar potênciais causas de falha.
* **_Risk Priority Number_:** Esse critério representa os multi-efeitos da severidade, ocorrência e detecção. O valor é calculado através do Produto da severidade, ocorrência e detecção: **RPN = S x O x D**. 
* **Ação Recomendada:** Ação preventiva ou remediativa que deve ser realizada para contenção da falha. 

Os critérios de Severidade, Ocorrência e Detecção são classificados em níveis de 1 a 5. As linhas de direção para a escolha dos níveis de cada critério são discriminadas nas tabelas abaixo:

### **Severidade(S)**
| Nível | Efeito           | Critério                                                                      |
|-------|------------------|-------------------------------------------------------------------------------|
|   1   | Baixa            | A ocorrência de falha tem consequências negligenciadas para o projeto.         |
|   2   | Moderada         | Performace do aparelho prejudicada de forma baixa. Usuário não afetado.        |
|   3   | Alta             | Integridade do aparelho comprometida ao longo do tempo. Usuário nçao afetado.  |
|   4   | Extremamente Alta| Aparelho inoperante, porém a falha não gera risco ao usuário.                  |
|   5   | Máxima           | Aperelho inoperante, falha pode colocar em risco usuário.                      |

### **Ocorrência(O)**
| Nível | Efeito                 | Critério                                                                      |
|-------|------------------------|-------------------------------------------------------------------------------|
|   1   | Nula                   | A probabilidade de que  a falha ocorrá é praticamente inexistente             |
|   2   | Pouco Provável         | Pouco provável que a falha venha a ocorrer, porém, a chance existe.           |
|   3   | Probabilidade Moderada | A falha deve vir a ocorrer ocasionalmente.                                    |
|   4   | Probabilidade Alta     | A falha deve ocorrer com frequência consideravél caso não sejam tomadas medidas corretivas |
|   5   | Certa                  | Probabilidade de falha certa caso contramedidas não sejam efetuadas           |

### **Detecção(D)**
| Nível | Efeito                        | Critério                                                                     |
|-------|-------------------------------|------------------------------------------------------------------------------|
|   1   | Detecção Extremamente Fácil   |Detecção óbvia. Defeito deve ser conrrigido ainda na fase de concepção.       |
|   2   | Detecção Fácil                |Defeito pode ser detectado e corrigido ainda na fase de concepção.            |
|   3   | Detecção Moderada             |Análises preliminares já devem detectar o defeito com certa facilidade e correção efetuada.  |
|   4   | Detecção Difícil              |Análise do projeto devem ser efetuada e estudada criteriosamente para detectar falha. |
|   5   | Detecção Extremamente Difícil |Detecção pode não acontecer e o protótipo pode ser constroído sem a devida medida de correção.|

## **_FMEA WorkSheet_ da Fase Incial do Projeto**

|Potencial Causa de Falha|Efeitos da Falha|Severidade(S)|Ocorrência(O)|Detecção(D)|_RPN_|Ação Recomendada|
|:----------------------:|:--------------:|:-----------:|:-----------:|:---------:|:---:|:--------------:|
| Mudança de Escopo      |Atraso do Projeto| 2 | 3  | 1 |  6 | |
