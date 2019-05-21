#language: pt
#encoding: UTF-8
@GoogleChrome
Funcionalidade: Exclus�o do Contrato do Parceiro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

  @ExclusaoMDR
  Cenario: Verificar exclus�o de condi��es comerciais MDR ao adicionar produtos
    E preencho os dados do parceiro
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    Quando removo os dados de condicoes comerciais MDR
    Entao validar a exclusao de MDR
     

  @ExclusaoCadastroParceiros
  Cenario: Verificar exclus�o de cadastro de parceiros
    E consulto os dados do parceiro com CNPJ ja cadastrado
    Quando clico no botao excluir parceiro
    Entao aprensentar mensagem que foi desabilitado parceiro
