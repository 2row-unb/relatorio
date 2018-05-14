# Soluções e Testes
## 2RBoat
## 2RPower

O sistema de energia, que tem por objetivo gerar uma carga variável para a remada do atleta, inicialmente, havia escolhido como solução um sistema que empregava um gerador elétrico acoplado a um banco de resistores. Contudo, a construção desse sistema se apresentou muito complexa para ser realizada durante o tempo estipulado para a disciplina, dessa forma, a alternativa foi testar um alternador automotivo, segunda solução encontrada. 
  
Durante os testes o alternador não correspondeu a validação de projeto a qual o grupo estava a procura para satisfazer as necessidades da solução proposta. Sendo assim, a solução escolhida, por fim, para o funcionamento adequado do remo indoor foi a construção de um freio eletromagnético, também conhecido como freio de Foucault.

![teste-com-alternador](img/markdown.png)
  
### Freio Eletromagnético

O uso do efeito de correntes parasitas na frenagem eletromagnética já é bastante difundido, tanto em meios acadêmicos, quanto industriais, um exemplo clássico é o freio de Foucault ou também como é conhecido, freio eletromagnético. Nele, utiliza-se um disco de alumínio ou cobre para interpor uma resistência ao torque de máquinas rotativas no intuito de reduzir a sua velocidade, simular uma variação da carga mecânica acoplada ao seu eixo ou até mesmo abreviar a sua frenagem no momento de seu desligamento, dissipando sua energia inercial na forma de efeito Joule, pela ação das correntes parasitas circulantes no disco.

O surgimento das correntes parasitas, é uma consequência direta do efeito da indução eletromagnética descrito por Faraday. As tensões elétricas são induzidas em um condutor sempre que este atravessar as linhas de fluxo de campo magnético constante ou quando este condutor for submetido a um campo magnético variável no tempo. Seja qual for o modo, as correntes induzidas percorrem caminhos a fim de manter oposição ao movimento relativo do condutor ou oposição à variação do campo magnético (PEREIRA, 2006).
Em outras palavras, o efeito eletromagnético que caracteriza esse sistema, pode ser explicado a partir da lei de Ampère, que descreve que uma corrente elétrica circulando em um meio condutor induz um campo magnético cujas linhas de fluxo se posicionam em direção tangencial ao caminho de circulação da corrente. Como dito anteriormente, pela lei da indução de Faraday, sabe-se que uma variação de fluxo magnético resulta na indução de um campo elétrico, consequentemente, se um campo elétrico confinado a um meio condutor na forma de um circuito fechado produz a circulação de uma corrente neste circuito, tem-se que a variação de fluxo magnético concatenado a um circuito fechado leva analogamente à indução de um campo elétrico, e uma corrente proporcional à variação de fluxo que a gerou.

Por fim, a lei de Lenz determina que a corrente induzida (ou o campo elétrico da qual ela resulta) se projeta no sentido de se opor à variação de fluxo que a produziu. Ou, mais especificamente, o sentido da corrente induzida pela variação de um fluxo magnético é tal que ela venha a induzir um novo fluxo magnético (contra-fluxo) que virá a se opor à variação do fluxo que a induziu.
Diante do exposto, o projeto de solução visa a construção de um sistema composto por dois eletroímãs posicionados nas faces de um disco de aço que estará conectado ao eixo que transmite o movimento de remada do atleta, como podemos observar a seguir.

![ilustracao-conceitual-do-freio](img/markdown.png)

## 2RElectronic
## 2RSystem

