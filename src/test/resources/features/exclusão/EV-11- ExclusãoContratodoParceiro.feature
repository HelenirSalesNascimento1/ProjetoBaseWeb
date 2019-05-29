#language: pt
#encoding: UTF-8
@GoogleChrome
Funcionalidade: Exclusao do Contrato do Parceiro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

  @ExclusaoMDR
  Cenario: Verificar exclusao de condicoes comerciais MDR ao adicionar produtos
    E preencho os dados do parceiro
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    Quando removo os dados de condicoes comerciais MDR
    Entao validar a exclusao de MDR
     

  @ExclusaoCadastroParceiros
  Cenario: Verificar exclusao de cadastro de parceiros
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    Quando clico no botao excluir parceiro
    #Entao aprensentar mensagem que foi desabilitado parceiro
