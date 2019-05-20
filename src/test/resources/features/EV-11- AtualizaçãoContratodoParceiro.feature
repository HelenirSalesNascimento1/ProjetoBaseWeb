#language: pt
#encoding: UTF-8
@GoogleChrome
Funcionalidade: Atualizacao

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
   
@removendoItemListaMDR
  Cenario: Validar atualizacao de parceria removendo um item na lista de MDR
    E que cadastro uma parceria
    E acesso ao portal Parceiros   
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada 
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais 
    Quando removo os dados de condi��es comerciais MDR   
    Entao validar a exclus�o de MDR
     
  
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
    Entao apresentar mensagem de erro

@AtualizacaoRazaoSocialemBranco
  Cenario: Verificar atualiza��o de parceria com o campo Raz�o Social em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada 
    E clico no bot�o alterar parceiro
    E preencho o campo razao social "Em_BRANCO"
    Quando clicar no bot�o continuar
    Entao apresentar mensagem de erro

@AtualizacaoLOGRADOUROemBranco
  Cenario: Verificar atualiza��o de parceria com o campo logradouro em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo logradouro com valor "Em_BRANCO"
    Quando clicar no bot�o continuar
    Entao apresentar mensagem de erro

@AtualizacaoNUMEROemBranco
  Cenario: Verificar atualiza��o de parceria com o campo n�mero em branco
    E que cadastro uma parceria 
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo numero com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Entao apresentar mensagem de erro
    
@AtualizacaoBAIRROemBranco
  Cenario: Verificar atualiza��o de parceria com o campo bairro em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo bairro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Entao apresentar mensagem de erro
    
@AtualizacaoCIDADEemBranco
  Cenario: Verificar atualiza��o de parceria com o campo cidade em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo cidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Entao apresentar mensagem de erro

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
    Entao apresentar mensagem de erro
    
@AtualizacaoCEPemBranco
  Cenario: Verificar atualiza��o de parceria com o campo cep em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos 
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E preencho o campo cep com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Entao apresentar mensagem de erro

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
    Entao apresentar mensagem de erro
    
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
    Entao apresentar mensagem de sucesso 

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
    Entao apresentar mensagem sem sucesso 
    
    
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
    Entao apresentar mensagem de sucesso

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
    Entao apresentar mensagem de sucesso

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
    Entao apresentar mensagem de sucesso

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
    Entao sem sucesso 

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
    Entao sem sucesso 
    
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
    Entao sem sucesso 


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
    Entao sem sucesso 

#includo 
 @AtualizacaoTaxaValorZeradoAtualizacao
  Cenario: Verificar atualiza�ao de parceria com campo taxa com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E preencho os MDR com campo campo taxa zerado
    Quando clico no bot�o adicionar produto
    Entao validar a lista de MDR
 
#includo    
@AtualizacaoTarifaValorZerado
  Cenario: Verificar atualizacao de parceria com campo tarifa com valor Zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E preencho os MDR com campo campo taxa tarifa Zerado
    Quando clico no bot�o adicionar produto
    Entao validar a lista de MDR



@AtualizacaoTarifaBranco
  Cenario: Verificar atualiza��o de parceria com campo tarifa com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais
    E preencho o campo TARIFA com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Entao sem sucesso 

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
    Entao sem sucesso 

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
    Entao sem sucesso 
#includo
@AtualizacaoTarifaFator1ValorZerado
  Cenario: Verificar atualizacao de parceria com campo fator1 com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais flex
    E preencho os MDR com campo campo fator1 zerado
    Quando clicar no bot�o cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso
    
    #includo
 @AtualizacaoTarifaFator2ValorZerado
  Cenario: Verificar atualizacao de parceria com campo fator2 com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no bot�o alterar parceiro
    E clico condi��es comerciais flex
    E preencho os MDR com campo fator2 zerado
    Quando clicar no bot�o cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso


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
    Entao sem sucesso 
    
   #Incluid  
@AtualizacaoCarteiraEmBranco
  Cenario: Verificar atualiza��o de parceria com campo carteira com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o carteira "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtualizacaoCelulaEmBranco
  Cenario: Verificar atualizacao de parceria com campo c�lula com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o c�lula "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtualizacaoGrupoComercialEmBranco
  Cenario: Verificar atualizacao de parceria com campo grupo comercial com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o grupo comercial "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatorio

  @AtualizacaoCanalEmBranco
  Cenario: Verificar atualizacao de parceria com campo canal com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o canal "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatorio
     
     
@AtualizacaoFornecedorDaAplicacaoBranco    
  Cenario: Verificar atualiza��o de parceria sem o campo fornecedor da aplica�ao  em branco 
   E que cadastro uma parceria
   E acesso ao portal Parceiros 
   E entro com usuario e senha validos
   E preencho o fornecedor da aplica�ao "Em_BRANCO"
   Quando clicar no bot�o continuar
   Entao sem sucesso 
   
   
  @AtualizacaoClienteFinalEmBranco
  Cenario: Verificar atualiza��o de parceria com campo precifica��o cliente final com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o precifica��o cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria 
    
    
 @atualizacaoCanalEmBranco
  Cenario: Verificar atualizacao de parceria com campo canal com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o canal "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatorio
    
  @atualiza��oCampoAntecipacao
  Cenario: Verificar atualiza��o de parceria com campo antecipa�ao rede com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o precifica��o cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria

  @atualiza��opropriedadeTerminalFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o propriedade terminal "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria

  @atualiza��opropriedadeAplica��oFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade aplica��o com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o propriedade aplica��o "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria
    
 @atualizacaoSelecionarParceiro
  Cenario: Validar atualiza��o parametros da parceria com campo propriedade da aplica��o selecionado parceiro e preencher o campo forcencedor da aplica��o
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    Mas no campo propriedade da aplica��o selecionar Parceiro e preencho no campo fornecedor da Aplicacao
    E preencho demais campos
    E clico no bot�o continuar
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os dados de flex
    Quando clicar no bot�o cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso

  @Atualiza�aoCanalVendaMaximoItens
  Cenario: Verificar cadastro de parceria com campo canal de venda com  m�ximo de itens permitidos
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho os dados de par�metros parceirias maximo itens canal de venda
    E preencho demais campos
    E clico no bot�o continuar
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os dados de flex
    Quando clicar no bot�o cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso

  @AtualizacaoCanalVendaBrancoParcerias
  Cenario: Verificar cadastro de parceria sem o campo canal de venda em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o canal de venda "Em_BRANCO" 
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtualizacaoMarcaEmBranco
  Cenario: Verificar cadastro de parceria sem o campo marca em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o marca "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro obrigatoria
   
