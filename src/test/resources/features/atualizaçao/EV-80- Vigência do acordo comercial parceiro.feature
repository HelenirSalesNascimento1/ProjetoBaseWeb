#language: pt
#encoding: UTF-8
@GoogleChrome
Funcionalidade: Atualização Calendario

  Contexto: 
    Dado acesso ao portal Parceiros
    #E entro com usuario e senha validos
    #E validar conta conectada com sucesso

@AtulizacaoCalendario
  Cenario: Verificar atualizacaoo dos parametros parceirias campo caledario Inicio: e Fim: com sucesso
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E seleciono a data fim e data inicio do campo calendario parametros parceiria
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  #
  #@DataFimEmBranco
  #Cenario: Verificar atualizacao dos parametros parceirias com FIM: em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E que carrego os dados da parceria cadastrada
  #E seleciono campo caledario FIM: "EM_BRANCO"
  #Quando preencher os demais campos
  #Entao nao habilitar o botao2
  
  @AtualizacaoDataFimPosterior
  Cenario: Verificar atualizacao dos parametros parceirias campo caledario, se a data fim deve ser posterior a data inicio
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E seleciono a data fim e data inicio do campo calendario parametros parceiria
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoDataInicioAnteriorCorrente
  Cenario: Verificar atualizacao dos parametros parceirias campo caledario, data inicio pode ser anterior a data corrente
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E atualizar a data inicio e data corrente
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoDataFimAnteriorCorrente
  Cenario: Verificar atualizacao dos parametros parceirias campo caledario, data fim deve igual a data corrente
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E atualizar a data fim e data corrente
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso
