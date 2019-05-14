#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
   
@removendoItemListaMDR
  Cenario: Validar atualização de parceria removendo um item na lista de MDR
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais 
    E removo os dados de condições comerciais MDR   
    Quando remover MDR  
    Entao atualizar a pagina que foi removido 
     

  
 @AtualizacaoAdicionarItemListaMDR
  Cenario: Validar atualização de parceria adicionando um item na lista de MDR
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais 
    Quando validar a lista de MDR com sucesso 
    Entao atualizar a pagina que foi adicionada a lista 

  #ver com a vivi 
  #Cenario: Validar atualização de parceria do grupo de dados parâmetros de parceria
  
@AtualizacaoCNPJemBranco
  Cenario: Verificar atualização de parceria com o campo CNPJ em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada 
    E clico no botão alterar parceiro
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

@AtualizacaoRazaoSocialemBranco
  Cenario: Verificar atualização de parceria com o campo Razão Social em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo razao social "Em_BRANCO"
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

@AtualizacaoLOGRADOUROemBranco
  Cenario: Verificar atualização de parceria com o campo LOGRADOURO em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo logradouro com valor "Em_BRANCO"
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

@AtualizacaoNUMEROemBranco
  Cenario: Verificar atualização de parceria com o campo NUMERO em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo numero com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro
    
@AtualizacaoBAIRROemBranco
  Cenario: Verificar atualização de parceria com o campo BAIRRO em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo bairro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro
    
@AtualizacaoCIDADEemBranco
  Cenario: Verificar atualização de parceria com o campo CIDADE em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo cidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

@AtualizacaoUFemBranco
  Cenario: Verificar atualização de parceria com o campo UF em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo uf com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro
    
@AtualizacaoCEPemBranco
  Cenario: Verificar atualização de parceria com o campo CEP em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos 
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo cep com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

@AtualizacaoNOMEPARCEIROemBranco
 Cenario: Verificar cadastro com campo Nome Parceiro com valor branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo NomeParceiro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

@AtualizacaoParceriaCrediroCrediario
  Cenario: Verificar atualização de parceria com MDR crédito crediário
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E seleciono MDR com campo produto credito e modalidade crediario
    Quando clico no botão adicionar produto
    #Então apresentar mensagem de sucesso 

@AtualizacaoParceriaCrediroVista
  Cenario: Verificar atualização de parceria com MDR crédito à vista
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E seleciono MDR com campo produto credito e modalidade à vista
    Quando clico no botão adicionar produto
    #Então apresentar mensagem sem sucesso 
    
@AtualizacaoParceriaParceladoComJuros
  Cenario: Verificar atualização de parceria com MDR crédito parcelado com juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais 
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no botão adicionar produto
    #Então apresentar mensagem de sucesso

@AtualizacaoParceriaParceladoSemJuros
  Cenario: Verificar atualização de parceria com MDR crédito parcelado sem juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no botão adicionar produto
    #Então apresentar mensagem de sucesso

@AtualizacaoParceriaParceladoSemJuros
  Cenario: Verificar atualização de parceria com MDR débito à vista
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E seleciono MDR com campo produto débito e modalidade à vista
    Quando clico no botão adicionar produto
    #Então apresentar mensagem de sucesso

@AtualizacaoParceriaParceladoDebitoComJuros
  Cenario: Verificar atualização de parceria com MDR débito parcelado com juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E seleciono MDR com campo produto débito e modalidade parcelado com juros
    Quando clico no botão adicionar produto
    #Então sem sucesso 

@AtualizacaoParceriaParceladoDebitoSemJuros
  Cenario: Verificar atualização de parceria com MDR débito parcelado sem juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E seleciono MDR com campo produto debito e modalidade sem juros
    Quando clico no botão adicionar produto
    #Então sem sucesso 
    
@AtualizacaoParceriaParceladoDebitoCrediario
  Cenario: Verificar atualização de parceria com MDR débito crediário
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E seleciono MDR com campo produto débito e modalidade crediario
    Quando clico no botão adicionar produto
    #Então sem sucesso 




@AtualizacaoTaxaBranco
  Cenario: Verificar atualização de parceria com campo taxa com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E preencho o campo TAXA com valor "Em_BRANCO"
    Quando clicar no botão continuar
     #Então sem sucesso 

@AtualizacaoTarifaBranco
  Cenario: Verificar atualização de parceria com campo tarifa com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
   E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E preencho o campo TARIFA com valor "Em_BRANCO"
    #Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
     #Então sem sucesso 

@AtualizacaoRegimeBranco
  Cenario: Verificar atualização de parceria com campo regime com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais flex
    E preencho o campo regime "Em_BRANCO"
    Quando clicar no botão continuar
     #Então sem sucesso 

@AtualizacaoFator1Branco
  Cenario: Verificar atualização de parceria com campo fator1 com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais flex
    E preencho o campo fator1 "Em_BRANCO"
    Quando clicar no botão continuar
     #Então sem sucesso 

@AtualizacaoFator2Branco
  Cenario: Verificar atualização de parceria com campo fator2 com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais flex
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clicar no botão continuar
     #Então sem sucesso 
     
     @AtualizacaoFornecedorDaAplicacaoBranco    
  Cenario: Verificar atualização de parceria sem o campo fornecedor da aplicaçao  em branco 
   E que cadastro uma parceria
   E acesso ao portal Parceiros 
   E entro com usuario e senha validos
   E preencho os dados do parceiro 
   E preencho o fornecedor da aplicaçao "Em_BRANCO"
   Quando clicar no botão continuar
    #Então sem sucesso 
     
       #Ver com a vivi 
  #Cenario: Validar atualização de parceria modificando um item na lista de MDR
    #E preencho os dados do parceiro
    #E preencho os dados de parâmetros parceirias
    #E preencho os dados de condições comerciais
    #E clico para modificando item da lista MDR
    #E validar atualização do item modificado
    #E clico no botão continua
    #E preencho os dados de flex

  #Quando cadastrar novo usuário de parceiros
  #Entao validar se a conta foi criada com sucesso
     
     #ver colocar em branco 
#@AtualizacaoProdutoBranco
  #Cenario: Verificar atualização de parceria com campo produto com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no botão alterar parceiro
    #E clico condições comerciais
    #E preencho o campo produto com valor "Em_BRANCO"
    #Mas preencho os demais campos do parceiros
    #Quando clicar no botão continuar
     #Então sem sucesso 
    #
#ver colocar em branco    
#@AtualizacaoModalidadeBranco
  #Cenario: Verificar atualização de parceria com campo modalidade com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no botão alterar parceiro
    #E clico condições comerciais
    #E preencho o campo modalidade com valor "Em_BRANCO"
    #Mas preencho os demais campos do parceiros
    #Quando clicar no botão continuar
    #Então sem sucesso 
#
#ver colocar em branco
#@AtualizacaoAtividadeBranco
  #Cenario: Verificar atualização de parceria com campo ramo de atividade com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no botão alterar parceiro
    #E clico condições comerciais
    #E preencho o campo ramo de atividade com valor "Em_BRANCO"
    #Quando clicar no botão continuar
     #Então sem sucesso 

#@AtualizacaoClienteFinalBranco
  #Cenario: Verificar atualização de parceria com campo precificação cliente final com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E clico no botão alterar parceiro
    #E clico parâmetros da parceria 
    #E preencho o precificação cliente final "Em_BRANCO"
    #Quando clicar no botão continuar
     #Então sem sucesso 
     
#@AtualizacaoAntecipacaoRedeBranco
  #Cenario: Verificar atualização de parceria com campo antecipação rede com valor em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E preencho os dados do parceiro
    #E preencho o precificação cliente final "Em_BRANCO"
    #Quando clicar no botão continuar
    #Então validar atualização da pagina

#@AtualizacaoPropriedadeTerminalBranco
  #Cenario: Verificar atualização de parceria com campo propriedade terminal com valor em branco
   #E que cadastro uma parceria
   #E acesso ao portal Parceiros 
   #E entro com usuario e senha validos
   #E que carrego os dados da parceria cadastrada
    #E clico no botão alterar parceiro
    #E clico parâmetros da parceria 
   #E preencho o propriedade terminal "Em_BRANCO"
   #Quando clicar no botão continuar
    #Então sem sucesso 
   
#@AtualizacaoPropriedadeAplicacaoBranco   
  #Cenario: Verificar atualização de parceria com campo propriedade aplicação com valor em branco
   #E que cadastro uma parceria
   #E acesso ao portal Parceiros 
   #E entro com usuario e senha validos
   #E que carrego os dados da parceria cadastrada
   #E clico no botão alterar parceiro
   #E clico parâmetros da parceria 
   #E preencho o propriedade aplicação "Em_BRANCO"
   #Quando clicar no botão continuar
    #Então sem sucesso 
 
 #entra no testes quando for selecinado parceiro


#@AtualizacaoCanalVendaBranco     
   #Cenario: Verificar atualização de parceria sem o campo canal de venda em branco 
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E preencho os dados do parceiro
    #E preencho o canal de venda "Em_BRANCO"
    #Quando clico no botão continuar
    #Entao apresentar mensagem erro
    #
#@AtualizacaoComunicacaoBranco       
   #Cenario: Verificar atualização de parceria sem o campo comunicação
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros 
    #E entro com usuario e senha validos
    #E preencho os dados do parceiro
    #E preencho o comunicação "Em_BRANCO"
    #Quando clico no botão continuar
    #Entao apresentar mensagem erro
   
 #@AtualizacaoMarcaBranco  
   #Cenario: Verificar atualizacao de parceria sem o campo marca em branco
    #E preencho os dados do parceiro
    #E preencho o marca "Em_BRANCO" 
    #Quando clico no botão continuar
    #Entao apresentar mensagem erro
    
    
#@AtualizacaoAtuacaoEmBranco
  #Cenario: Verificar atualizacao de parceria sem o campo atuação em branco
    #E preencho os dados do parceiro
    #E preencho o atuação "Em_BRANCO"
    #Quando clico no botão continuar
    #Entao apresentar mensagem erro
    #
  
