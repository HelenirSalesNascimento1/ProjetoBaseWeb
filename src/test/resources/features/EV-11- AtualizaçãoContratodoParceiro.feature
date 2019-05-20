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
    E clico no botão alterar parceiro
    E clico condições comerciais 
    Quando removo os dados de condições comerciais MDR   
    Entao validar a exclusão de MDR
     
  
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
    Entao apresentar mensagem de erro

@AtualizacaoRazaoSocialemBranco
  Cenario: Verificar atualização de parceria com o campo Razão Social em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada 
    E clico no botão alterar parceiro
    E preencho o campo razao social "Em_BRANCO"
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro

@AtualizacaoLOGRADOUROemBranco
  Cenario: Verificar atualização de parceria com o campo logradouro em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo logradouro com valor "Em_BRANCO"
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro

@AtualizacaoNUMEROemBranco
  Cenario: Verificar atualização de parceria com o campo número em branco
    E que cadastro uma parceria 
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo numero com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro
    
@AtualizacaoBAIRROemBranco
  Cenario: Verificar atualização de parceria com o campo bairro em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo bairro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro
    
@AtualizacaoCIDADEemBranco
  Cenario: Verificar atualização de parceria com o campo cidade em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo cidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro

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
    Entao apresentar mensagem de erro
    
@AtualizacaoCEPemBranco
  Cenario: Verificar atualização de parceria com o campo cep em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos 
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E preencho o campo cep com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro

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
    Entao apresentar mensagem de erro
    
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
    Entao apresentar mensagem de sucesso 

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
    Entao apresentar mensagem sem sucesso 
    
    
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
    Entao apresentar mensagem de sucesso

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
    Entao apresentar mensagem de sucesso

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
    Entao apresentar mensagem de sucesso

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
    Entao sem sucesso 

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
    Entao sem sucesso 
    
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
    Entao sem sucesso 


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
    Entao sem sucesso 

#includo 
 @AtualizacaoTaxaValorZeradoAtualizacao
  Cenario: Verificar atualizaçao de parceria com campo taxa com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E preencho os MDR com campo campo taxa zerado
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR
 
#includo    
@AtualizacaoTarifaValorZerado
  Cenario: Verificar atualizacao de parceria com campo tarifa com valor Zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E preencho os MDR com campo campo taxa tarifa Zerado
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR



@AtualizacaoTarifaBranco
  Cenario: Verificar atualização de parceria com campo tarifa com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais
    E preencho o campo TARIFA com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao sem sucesso 

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
    Entao sem sucesso 

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
    Entao sem sucesso 
#includo
@AtualizacaoTarifaFator1ValorZerado
  Cenario: Verificar atualizacao de parceria com campo fator1 com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais flex
    E preencho os MDR com campo campo fator1 zerado
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso
    
    #includo
 @AtualizacaoTarifaFator2ValorZerado
  Cenario: Verificar atualizacao de parceria com campo fator2 com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botão alterar parceiro
    E clico condições comerciais flex
    E preencho os MDR com campo fator2 zerado
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso


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
    Entao sem sucesso 
    
   #Incluid  
@AtualizacaoCarteiraEmBranco
  Cenario: Verificar atualização de parceria com campo carteira com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o carteira "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtualizacaoCelulaEmBranco
  Cenario: Verificar atualizacao de parceria com campo cálula com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o célula "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtualizacaoGrupoComercialEmBranco
  Cenario: Verificar atualizacao de parceria com campo grupo comercial com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o grupo comercial "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @AtualizacaoCanalEmBranco
  Cenario: Verificar atualizacao de parceria com campo canal com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o canal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatorio
     
     
@AtualizacaoFornecedorDaAplicacaoBranco    
  Cenario: Verificar atualização de parceria sem o campo fornecedor da aplicaçao  em branco 
   E que cadastro uma parceria
   E acesso ao portal Parceiros 
   E entro com usuario e senha validos
   E preencho o fornecedor da aplicaçao "Em_BRANCO"
   Quando clicar no botão continuar
   Entao sem sucesso 
   
   
  @AtualizacaoClienteFinalEmBranco
  Cenario: Verificar atualização de parceria com campo precificação cliente final com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o precificação cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria 
    
    
 @atualizacaoCanalEmBranco
  Cenario: Verificar atualizacao de parceria com campo canal com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o canal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatorio
    
  @atualizaçãoCampoAntecipacao
  Cenario: Verificar atualização de parceria com campo antecipaçao rede com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o precificação cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @atualizaçãopropriedadeTerminalFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o propriedade terminal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @atualizaçãopropriedadeAplicaááoFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade aplicaááo com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o propriedade aplicação "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria
    
 @atualizacaoSelecionarParceiro
  Cenario: Validar atualização parametros da parceria com campo propriedade da aplicaááo selecionado parceiro e preencher o campo forcencedor da aplicaááo
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    Mas no campo propriedade da aplicação selecionar Parceiro e preencho no campo fornecedor da Aplicacao
    E preencho demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @AtualizaçaoCanalVendaMaximoItens
  Cenario: Verificar cadastro de parceria com campo canal de venda com  máximo de itens permitidos
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho os dados de parâmetros parceirias maximo itens canal de venda
    E preencho demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @AtualizacaoCanalVendaBrancoParcerias
  Cenario: Verificar cadastro de parceria sem o campo canal de venda em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o canal de venda "Em_BRANCO" 
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtualizacaoMarcaEmBranco
  Cenario: Verificar cadastro de parceria sem o campo marca em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros 
    E entro com usuario e senha validos
    E preencho o marca "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria
   
