#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Exclusão do Contrato do Parceiro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

  @ExclusaoMDR
  Cenario: Verificar exclusão de condições comerciais MDR ao adicionar produtos
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    Quando removo os dados de condições comerciais MDR
    Entao validar a exclusão de MDR 
    

  @ExclusaoCadastroParceiros
  Cenario: Verificar exclusão de cadastro de parceiros
    E consulto os dados do parceiro com CNPJ ja cadastrado
    Quando clico no botão excluir parceiro
    Então aprensentar mensagem que foi desabilitado parceiro
