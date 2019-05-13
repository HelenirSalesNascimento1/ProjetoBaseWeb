#language: pt
#encoding: iso-8859-1
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E qugit e cadastro uma parceria 
    E que carrego os dados da parceria cadastrada
    

  #@CadastroComSucessoAtualiza�ao
  #Cenario: Validar atualiza��o de parceria com sucesso
    #E altero os dados do parceiro
    #E preencho os dados de par�metros parceirias
    #E preencho os dados de condi��es comerciais
    #E clico no bot�o continua
    #E preencho os dados de flex
    #Quando clicar no bot�o cadastrar novo usu�rio de parceiros
    #Entao validar atualiza��o se a conta foi criada com sucesso
  
 # Cenario: Validar atualiza��o de parceria do grupo de dados do parceiro

  Cenario: Validar atualiza��o de parceria removendo um item na lista de MDR
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico para remover item da lista MDR
    E validar atualiza��o do item removido
    E clico no bot�o continua
    E preencho os dados de flex

  #Quando cadastrar novo usu�rio de parceiros
  #Entao validar se a conta foi criada com sucesso
  
  Cenario: Validar atualiza��o de parceria modificando um item na lista de MDR
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico para modificando item da lista MDR
    E validar atualiza��o do item modificado
    E clico no bot�o continua
    E preencho os dados de flex

  #Quando cadastrar novo usu�rio de parceiros
  #Entao validar se a conta foi criada com sucesso
  Cenario: Validar atualiza��o de parceria adicionando um item na lista de MDR
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico para adicionando item da lista MDR
    E validar atualiza��o do item adicionando
    E clico no bot�o continua
    E preencho os dados de flex

  #Quando cadastrar novo usu�rio de parceiros
  #Entao validar se a conta foi criada com sucesso
  Cenario: Validar atualiza��o de parceria do grupo de dados par�metros de parceria

  Cenario: Verificar atualiza��o de parceria com o campo CNPJ em branco
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com o campo Raz�o Social em branco
    E preencho o campo RAZAO SOCIAL "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com o campo LOGRADOURO em branco
    E preencho o campo LOGRADOURO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com o campo NUMERO em branco
    E preencho o campo NUMERO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com o campo BAIRRO em branco
    E preencho o campo BAIRRO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com o campo CIDADE em branco
    E preencho o campo CIDADE com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com o campo UF em branco
    E preencho o campo UF com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com o campo CEP em branco
    E preencho o campo CEP com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com MDR cr�dito credi�rio
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade crediario

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com MDR cr�dito � vista
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade � vista

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com MDR cr�dito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade com juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com MDR cr�dito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade sem juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com MDR d�bito � vista
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto d�bito e modalidade � vista

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com MDR d�bito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto d�bito e modalidade com juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com MDR d�bito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto d�bito e modalidade sem juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com MDR d�bito credi�rio
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto d�bito e modalidade credi�rio

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no bot�o continuar
  #Ent�o validar atualiaza��o da pagina
  Cenario: Verificar atualiza��o de parceria com campo produto com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo produto com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo modalidade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo modalidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo ramo de atividade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo ramo de atividade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo taxa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo taxa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo tarifa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo tarifa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo regime com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho o campo regime "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo fator1 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho o campo fator1 "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo fator2 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo precifica��o cliente final com valor em branco
    E preencho os dados do parceiro
    E preencho o precifica��o cliente final "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo antecipa��o rede com valor em branco
    E preencho os dados do parceiro
    E preencho o precifica��o cliente final "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina

  Cenario: Verificar atualiza��o de parceria com campo propriedade terminal com valor em branco
   E preencho os dados do parceiro 
   E preencho o propriedade terminal "Em_BRANCO"
   Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina
   
    Cenario: Verificar atualiza��o de parceria com campo propriedade aplica��o com valor em branco
   E preencho os dados do parceiro 
   E preencho o propriedade aplica��o "Em_BRANCO"
   Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina
    
    Cenario: Verificar atualiza��o de parceria sem o campo fornecedor da aplica�ao  em branco 
   E preencho os dados do parceiro 
   E preencho o fornecedor da aplica�ao "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina
    
    Cenario: Verificar atualiza��o de parceria sem o campo canal de venda
     E preencho os dados do parceiro 
     E preencho sem o campo canal de venda
     Quando clicar no bot�o continuar
    Ent�o validar atualiza��o da pagina
    
    Cenario: Verificar atualiza��o de parceria sem o campo comunica��o
    
  
  
