## Solução de energia

O sistema planejado para gerar uma carga variável para a remada do atleta será baseado em um Dinamômetro Eletrônico.

Quando o gerador opera sem carga (Resistência), haverá uma tensão induzida, mas nenhuma corrente. Ao inserirmos uma carga, uma corrente passará a circular pelas bobinas do gerador e pela carga. Com isso, o gerador deve gerar energia para alimentar a carga.

Quanto mais corrente exigida, mais força será necessária para girar o eixo do gerador.

Partindo desse princípio, o movimento que simula a remada do atleta irá puxar um cabo que será conectado a um gerador, que por sua vez irá gerar uma potência que será dissipada no banco de resistores.

O banco de resistores será útil para regular a corrente e consequentemente a força necessária para que o atleta realize o exercício.

O controlador de carga que irá carregar a bateria e alimentar o sistema será acoplado em paralelo com o módulo de resistores.

### Gerador

Os critérios considerados para escolher os geradores foram:

* Preço;

* Facilidade de acesso;

* Necessidade de poucas adaptações;

* Geração de energia em baixas rotações.

Considerando esses critério, dois sistemas foram selecionados como soluções para a geração de energia: o alternador automotivo [@fig:alter] e um motor de esteira ergométrica [@fig:motorest].

![Alternador de Carro](imagens/alternador.png){#fig:alter}
![Motor de Esteira Ergométrica](imagens/motoresteira.jpg){#fig:motorest}
O motor de esteira pode ser usado no modo gerador, e dentre os critérios de seleção ele foi o mais viável economicamente e tecnicamente. Dessa forma ele é o mais indicado para confecção do sistema.

### Banco de resistores

Sabendo a potência máxima possível que pode ser obtida com a remada do atleta, poderemos dimensionar a potência que os resistores e os relés iram ter que suportar.

O sistema será composto por:

* 3 relés que irão controlar os níveis de resistência
* 3 resistores que irão controlar a corrente do gerador

Usaremos relés de caminhão (80A) ou de carro (40A). Estamos considerando usar resistores de chuveiro elétrico ou de fornos elétricos. A determinação da corrente suportada pelos relés e da potência suportada pelos resistores dependerá da determinação da potência da remada do atleta.

Usaremos uma margem de erro de 100% para dimensionar os resistores e relés.

Os níveis do exercício será acionado pelo sub grupo de eletrônica de acordo com a figura [@fig:circuitobr].

![Circuito do Banco de resistores](imagens/circuitobr.png){#fig:circuitobr}

### Carregador da bateria

O carregamento da bateria será feito por uma controlador de carga que será acoplado em paralelo com o módulo de resistores.
