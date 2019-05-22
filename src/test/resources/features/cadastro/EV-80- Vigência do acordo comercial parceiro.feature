#language: pt
#encoding: UTF-8
@GoogleChrome @Regressivo
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

  Cenario: Verificar cadastro dos parametros parceirias campo caledario DE: e ATE: com sucesso 
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono o campo caledario de parametros parceirias 
    Quando preencher os demais campos
    Entao validar a data selecionada com sucesso

  Cenario: Verificar cadastro dos parametros parceirias com DE: em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono campo caledario DE: "EM_BRANCO"
    Quando preencher os demais campos
    Entao apresentar mensagem de erro

  Cenario: Verificar cadastro dos parametros parceirias com ATE: em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono campo caledario ATE: "EM_BRANCO"
    Quando preencher os demais campos
    Entao apresentar mensagem de erro

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, se a data fim deve ser posterior a data inicio
    E preencho os dados do parceiro
    E clicar no botao continuar
    E seleciono campo caledario
    E seleciono a data fim e data inicio
    Quando preencher os demais campos
    Entao passa o teste

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data inicio nao pode ser posterior a data fim
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data inicio que não pode ser posterior a data fim
    Quando preencher os demais campos
    Entao deve apresentar erro

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data inicio pode ser anterior a data corrente
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data inicio e data corrente
    Quando preencher os demais campos
    Entao passa o testes

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data corrente nao pode ser anterior data inicio
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data corrente não pode ser anterior data inicio
    Quando preencher os demais campos
    Entao nao passar o teste

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data fim deve ser posterior ou igual a data corrente
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data fim e data corrente
    Quando preencher os demais campos
    Entao passa o teste

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data corrente nao pode ser posterior data fim
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data corrente que não pode= ser posterior data fim
    Quando preencher os demais campos
    Entao erro
