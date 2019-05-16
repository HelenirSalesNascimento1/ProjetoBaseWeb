#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Exclus�o do Contrato do Parceiro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

  @ExclusaoMDR
  Cenario: Verificar exclus�o de condi��es comerciais MDR ao adicionar produtos
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    Quando removo os dados de condi��es comerciais MDR
    Entao validar a exclus�o de MDR 
    

  @ExclusaoCadastroParceiros
  Cenario: Verificar exclus�o de cadastro de parceiros
    E consulto os dados do parceiro com CNPJ ja cadastrado
    Quando clico no bot�o excluir parceiro
    Ent�o aprensentar mensagem que foi desabilitado parceiro
