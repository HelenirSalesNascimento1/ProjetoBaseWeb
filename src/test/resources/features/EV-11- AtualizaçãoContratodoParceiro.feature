#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
   
@removendoItemListaMDR
  Cenario: Validar atualiza��o de parceria removendo um item na lista de MDR
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais 
    E removo os dados de condi��es comerciais MDR   
    Quando remover MDR  
    Entao atualizar a pagina que foi removido 
     

  
 @AtualizacaoAdicionarItemListaMDR
  Cenario: Validar atualiza��o de parceria adicionando um item na lista de MDR
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais 
    Quando validar a lista de MDR com sucesso 
    Entao atualizar a pagina que foi adicionada a lista 

  #ver com a vivi 
  #Cenario: Validar atualiza��o de parceria do grupo de dados par�metros de parceria
  
@AtualizacaoCNPJemBranco
  Cenario: Verificar atualiza��o de parceria com o campo CNPJ em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada 
    E clico no bot�o alterar parceiro
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

@AtualizacaoRazaoSocialemBranco
  Cenario: Verificar atualiza��o de parceria com o campo Raz�o Social em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo razao social "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

@AtualizacaoLOGRADOUROemBranco
  Cenario: Verificar atualiza��o de parceria com o campo LOGRADOURO em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo logradouro com valor "Em_BRANCO"
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

@AtualizacaoNUMEROemBranco
  Cenario: Verificar atualiza��o de parceria com o campo NUMERO em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo numero com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro
    
@AtualizacaoBAIRROemBranco
  Cenario: Verificar atualiza��o de parceria com o campo BAIRRO em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo bairro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro
    
@AtualizacaoCIDADEemBranco
  Cenario: Verificar atualiza��o de parceria com o campo CIDADE em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo cidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

@AtualizacaoUFemBranco
  Cenario: Verificar atualiza��o de parceria com o campo UF em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo uf com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro
    
@AtualizacaoCEPemBranco
  Cenario: Verificar atualiza��o de parceria com o campo CEP em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos 
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo cep com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

@AtualizacaoNOMEPARCEIROemBranco
 Cenario: Verificar cadastro com campo Nome Parceiro com valor branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo NomeParceiro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

@AtualizacaoParceriaCrediroCrediario
  Cenario: Verificar atualiza��o de parceria com MDR cr�dito credi�rio
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E seleciono MDR com campo produto credito e modalidade crediario
    Quando clico no bot�o adicionar produto
    #Ent�o apresentar mensagem de sucesso 

@AtualizacaoParceriaCrediroVista
  Cenario: Verificar atualiza��o de parceria com MDR cr�dito � vista
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E seleciono MDR com campo produto credito e modalidade � vista
    Quando clico no bot�o adicionar produto
    #Ent�o apresentar mensagem sem sucesso 
    
@AtualizacaoParceriaParceladoComJuros
  Cenario: Verificar atualiza��o de parceria com MDR cr�dito parcelado com juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais 
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no bot�o adicionar produto
    #Ent�o apresentar mensagem de sucesso

@AtualizacaoParceriaParceladoSemJuros
  Cenario: Verificar atualiza��o de parceria com MDR cr�dito parcelado sem juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no bot�o adicionar produto
    #Ent�o apresentar mensagem de sucesso

@AtualizacaoParceriaParceladoSemJuros
  Cenario: Verificar atualiza��o de parceria com MDR d�bito � vista
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E seleciono MDR com campo produto d�bito e modalidade � vista
    Quando clico no bot�o adicionar produto
    #Ent�o apresentar mensagem de sucesso

@AtualizacaoParceriaParceladoDebitoComJuros
  Cenario: Verificar atualiza��o de parceria com MDR d�bito parcelado com juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E seleciono MDR com campo produto d�bito e modalidade parcelado com juros
    Quando clico no bot�o adicionar produto
    #Ent�o sem sucesso 

@AtualizacaoParceriaParceladoDebitoSemJuros
  Cenario: Verificar atualiza��o de parceria com MDR d�bito parcelado sem juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E seleciono MDR com campo produto debito e modalidade sem juros
    Quando clico no bot�o adicionar produto
    #Ent�o sem sucesso 
    
@AtualizacaoParceriaParceladoDebitoCrediario
  Cenario: Verificar atualiza��o de parceria com MDR d�bito credi�rio
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E seleciono MDR com campo produto d�bito e modalidade crediario
    Quando clico no bot�o adicionar produto
    #Ent�o sem sucesso 




@AtualizacaoTaxaBranco
  Cenario: Verificar atualiza��o de parceria com campo taxa com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E preencho o campo TAXA com valor "Em_BRANCO"
    Quando clicar no bot�o continuar
     #Ent�o sem sucesso 

@AtualizacaoTarifaBranco
  Cenario: Verificar atualiza��o de parceria com campo tarifa com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
   E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E preencho o campo TARIFA com valor "Em_BRANCO"
    #Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
     #Ent�o sem sucesso 

@AtualizacaoRegimeBranco
  Cenario: Verificar atualiza��o de parceria com campo regime com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais flex
    E preencho o campo regime "Em_BRANCO"
    Quando clicar no bot�o continuar
     #Ent�o sem sucesso 

@AtualizacaoFator1Branco
  Cenario: Verificar atualiza��o de parceria com campo fator1 com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais flex
    E preencho o campo fator1 "Em_BRANCO"
    Quando clicar no bot�o continuar
     #Ent�o sem sucesso 

@AtualizacaoFator2Branco
  Cenario: Verificar atualiza��o de parceria com campo fator2 com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais flex
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clicar no bot�o continuar
     #Ent�o sem sucesso 
     
     @AtualizacaoFornecedorDaAplicacaoBranco    
  Cenario: Verificar atualiza��o de parceria sem o campo fornecedor da aplica�ao  em branco 
   E que cadastro uma parceria
   E acesso ao portal Parceiros 
   E entro com usuario e senha validos
   E preencho os dados do parceiro 
   E preencho o fornecedor da aplica�ao "Em_BRANCO"
   Quando clicar no bot�o continuar
    #Ent�o sem sucesso 
     
       #Ver com a vivi 
  #Cenario: Validar atualiza��o de parceria modificando um item na lista de MDR
    #E preencho os dados do parceiro
    #E preencho os dados de par�metros parceirias
    #E preencho os dados de condi��es comerciais
    #E clico para modificando item da lista MDR
    #E validar atualiza��o do item modificado
    #E clico no bot�o continua
    #E preencho os dados de flex

  #Quando cadastrar novo usu�rio de parceiros
  #Entao validar se a conta foi criada com sucesso
     
     #ver colocar em branco 
#@AtualizacaoProdutoBranco
  #Cenario: Verificar atualiza��o de parceria com campo produto com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no bot�o alterar parceiro
    #E clico condi��es comerciais
    #E preencho o campo produto com valor "Em_BRANCO"
    #Mas preencho os demais campos do parceiros
    #Quando clicar no bot�o continuar
     #Ent�o sem sucesso 
    #
#ver colocar em branco    
#@AtualizacaoModalidadeBranco
  #Cenario: Verificar atualiza��o de parceria com campo modalidade com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no bot�o alterar parceiro
    #E clico condi��es comerciais
    #E preencho o campo modalidade com valor "Em_BRANCO"
    #Mas preencho os demais campos do parceiros
    #Quando clicar no bot�o continuar
    #Ent�o sem sucesso 
#
#ver colocar em branco
#@AtualizacaoAtividadeBranco
  #Cenario: Verificar atualiza��o de parceria com campo ramo de atividade com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no bot�o alterar parceiro
    #E clico condi��es comerciais
    #E preencho o campo ramo de atividade com valor "Em_BRANCO"
    #Quando clicar no bot�o continuar
     #Ent�o sem sucesso 

#@AtualizacaoClienteFinalBranco
  #Cenario: Verificar atualiza��o de parceria com campo precifica��o cliente final com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no bot�o alterar parceiro
    #E clico par�metros da parceria 
    #E preencho o precifica��o cliente final "Em_BRANCO"
    #Quando clicar no bot�o continuar
     #Ent�o sem sucesso 
     
#@AtualizacaoAntecipacaoRedeBranco
  #Cenario: Verificar atualiza��o de parceria com campo antecipa��o rede com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E preencho os dados do parceiro
    #E preencho o precifica��o cliente final "Em_BRANCO"
    #Quando clicar no bot�o continuar
    #Ent�o validar atualiza��o da pagina

#@AtualizacaoPropriedadeTerminalBranco
  #Cenario: Verificar atualiza��o de parceria com campo propriedade terminal com valor em branco
   #E que cadastro uma parceria
   #E acesso ao portal Parceiros 
   #E entro com usuario e senha validos
   #E que carrego os dados da parceria cadastrada
    #E clico no bot�o alterar parceiro
    #E clico par�metros da parceria 
   #E preencho o propriedade terminal "Em_BRANCO"
   #Quando clicar no bot�o continuar
    #Ent�o sem sucesso 
   
#@AtualizacaoPropriedadeAplicacaoBranco   
  #Cenario: Verificar atualiza��o de parceria com campo propriedade aplica��o com valor em branco
   #E que cadastro uma parceria
   #E acesso ao portal Parceiros 
   #E entro com usuario e senha validos
   #E que carrego os dados da parceria cadastrada
   #E clico no bot�o alterar parceiro
   #E clico par�metros da parceria 
   #E preencho o propriedade aplica��o "Em_BRANCO"
   #Quando clicar no bot�o continuar
    #Ent�o sem sucesso 
 
 #entra no testes quando for selecinado parceiro


#@AtualizacaoCanalVendaBranco     
   #Cenario: Verificar atualiza��o de parceria sem o campo canal de venda em branco 
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E preencho os dados do parceiro
    #E preencho o canal de venda "Em_BRANCO"
    #Quando clico no bot�o continuar
    #Entao apresentar mensagem erro
    #
#@AtualizacaoComunicacaoBranco       
   #Cenario: Verificar atualiza��o de parceria sem o campo comunica��o
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E preencho os dados do parceiro
    #E preencho o comunica��o "Em_BRANCO"
    #Quando clico no bot�o continuar
    #Entao apresentar mensagem erro
   
 #@AtualizacaoMarcaBranco  
   #Cenario: Verificar atualizacao de parceria sem o campo marca em branco
    #E preencho os dados do parceiro
    #E preencho o marca "Em_BRANCO" 
    #Quando clico no bot�o continuar
    #Entao apresentar mensagem erro
    
    
#@AtualizacaoAtuacaoEmBranco
  #Cenario: Verificar atualizacao de parceria sem o campo atua��o em branco
    #E preencho os dados do parceiro
    #E preencho o atua��o "Em_BRANCO"
    #Quando clico no bot�o continuar
    #Entao apresentar mensagem erro
    #
  
