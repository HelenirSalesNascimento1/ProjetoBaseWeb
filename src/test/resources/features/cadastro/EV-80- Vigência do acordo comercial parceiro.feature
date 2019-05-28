#language: pt
#encoding: UTF-8
@GoogleChrome @testes
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

@CadastroCalendario
  Cenario: Verificar cadastro dos parametros parceirias campo caledario Inicio: e Fim: com sucesso 
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono a data fim e data inicio do campo calendario parametros parceirias 
    E preencher os demais campos 
    E clicar no botao continuar parametro de parceirias
    E preencho os dados de condiçoes comerciais    
    E clico no botao continua   
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros 
    Entao validar se a conta foi criada com sucesso

@DataFimEmBranco
  Cenario: Verificar cadastro dos parametros parceirias com FIM: em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono campo caledario FIM: "EM_BRANCO"
    Quando preencher os demais campos
    Entao nao habilitar o botao2


@DataFimPosterior
  Cenario: Verificar cadastro dos parametros parceirias campo caledario, se a data fim deve ser posterior a data inicio
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono a data fim e data inicio do campo calendario parametros parceirias
    Quando preencher os demais campos
    Entao passa o teste


@DataInicioAnteriorCorrente
  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data inicio pode ser anterior a data corrente
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono a data inicio e data corrente
    Quando preencher os demais campos
    Entao passa o teste

 
@DataFimAnteriorCorrente
  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data fim deve igual a data corrente
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono a data fim e data corrente 
    Quando preencher os demais campos
    Entao passa o teste

 
