#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Altera��o Contrato do Parceiro 

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

@Altera��oMDR
Cenario: Verificar exclus�o de condi��es comerciais MDR ao adicionar produtos
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias 
    E preencho os dados de condi��es comerciais
    E removo os dados de condi��es comerciais MDR 
    E validar a exclus�o de MDR 
    #E clico no bot�o continua
    #E preencho os dados de flex 
    #Quando cadastrar novo usu�rio de parceiros 
    #Entao validar se a conta foi criada com sucesso 
    
    
    