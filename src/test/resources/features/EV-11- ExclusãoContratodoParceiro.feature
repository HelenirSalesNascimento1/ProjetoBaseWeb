#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Alteração Contrato do Parceiro 

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

@AlteraçãoMDR
Cenario: Verificar exclusão de condições comerciais MDR ao adicionar produtos
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias 
    E preencho os dados de condições comerciais
    E removo os dados de condições comerciais MDR 
    E validar a exclusão de MDR 
    #E clico no botão continua
    #E preencho os dados de flex 
    #Quando cadastrar novo usuário de parceiros 
    #Entao validar se a conta foi criada com sucesso 
    
    
    