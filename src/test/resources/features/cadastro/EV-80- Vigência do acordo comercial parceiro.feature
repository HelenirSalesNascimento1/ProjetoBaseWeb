#language: pt
#encoding: UTF-8
@GoogleChrome @Regressivo
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

  Cenario: Verificar cadastro dos parametros parceirias campo caledario DE: e ATE:
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho campo caledario DE e ATE
    Quando preencher os demais campos
    Entao validar a data selecionada com sucesso

  Cenario: Verificar cadastro dos parametros parceirias com DE: branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    Mas seleciono campo caledario DE: "EM_BRANCO"
    Quando preencher os demais campos
    Entao apresentar mensagem de erro

  Cenario: Verificar cadastro dos parametros parceirias com ATE: branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    Mas seleciono campo caledario ATE: "EM_BRANCO"
    Quando preencher os demais campos
    Entao apresentar mensagem de erro

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, se a data fim deve ser posterior a data inicio
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data fim posterior a data inicio
    Quando preencher os demais campos
    Entao passa o teste

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data inicio deve ser posterior a data fim
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data inicio deve ser posterior a data fim
    Quando preencher os demais campos
    Entao deve apresentar erro

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data inicio pode ser anterior a data corrente
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data inicio pode ser anterior a data corrente
    Quando preencher os demais campos
    Entao passa o testes

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data corrente pode ser anterior data inicio
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a ddata corrente pode ser anterior data inicio
    Quando preencher os demais campos
    Entao nao passar o teste

  Cenario: Verificar cadastro dos parametros parceirias campo caledario, data fim deve ser posterior ou igual a data corrente
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data fim deve ser posterior ou igual a data corrente
    Quando preencher os demais campos
    Entao passa o teste

  Cenario: Verificar cadastro dos parametros parceirias campo caledario,data corrente deve ser posterior data fim
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono campo caledario
    E seleciono a data corrente deve ser posterior data fim
    Quando preencher os demais campos
    Entao erro
