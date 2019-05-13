#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

  @CadastroComSucesso
  Cenario: Verificar cadastro de parcerias com todos os campos obrigat�rio com sucesso
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os dados de flex 
    Quando clicar no bot�o cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso
 
  @NomeValorEmBranco
  Cenario: Verificar cadastro com campo CNPJ com valor em branco
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @RazaoSocialValorEmBranco
  Cenario: Verificar cadastro com campo razao social com valor em branco
    E preencho o campo RAZAO SOCIAL "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @logradouroValorEmBranco
  Cenario: Verificar cadastro com campo logradouro com valor branco
    E preencho o campo LOGRADOURO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @NumeroValorEmBranco
  Cenario: Verificar cadastro com campo n�mero com valor branco
    E preencho o campo NUMERO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @ComplementoValorEmBranco
  Cenario: Verificar cadastro com campo complemento com valor branco
    E preencho o campo COMPLEMENTO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @BairroValorEmBranco
  Cenario: Verificar cadastro com campo bairro com valor branco 
    E preencho o campo BAIRRO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @CidadeValorEmBranco
  Cenario: Verificar cadastro com campo cidade com valor branco
    E preencho o campo CIDADE com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @UFValorEmBranco
  Cenario: Verificar cadastro com campo UF com valor branco
    E preencho o campo UF com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @CEPValorEmBranco
  Cenario: Verificar cadastro com campo CEP com valor branco
    E preencho o campo CEP com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar
    Ent�o apresentar mensagem de erro

  @NomeParceiroValorEmBranco
  Cenario: Verificar cadastro com campo Nome Parceiro com valor branco
    E preencho o campo Nome Parceiro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no bot�o continuar 
    Ent�o apresentar mensagem de erro

  @MDRcomSucesso
  Cenario: Validar cadastro de parcerias com uma lista de MDR com sucesso
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E validar a lista de MDR com sucesso

  @MDRProdutoValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo produto com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo produto com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no bot�o adicionar produto

  #Ent�o nao deixar selecionar produto
  @MDRModalidadeValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo modalidade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo modalidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no bot�o adicionar produto

  #Ent�o nao deixar selecionar produto
  @MDRRamoValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo ramo de atividade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo ramo de atividade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no bot�o adicionar produto

  #Ent�o nao deixar selecionar produto
  @MDRTaxaValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo taxa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo taxa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no bot�o adicionar produto

  #Ent�o nao deixar selecionar produto
  @MDRTarifaValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo tarifa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho o campo tarifa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no bot�o adicionar produto

  #Ent�o nao deixar selecionar produto
  @CadastrarOutroCNPJ
  Cenario: Verificar cadastro de parceria com endere�o j� cadastrado em outro CNPJ
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os dados de flex
    #Quando cadastrar novo usu�rio de parceiros
    #Entao validar se a conta foi criada com sucesso
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E preencho outro cnpj
    E com mesmo endere�o anteriomente

  #	  E preencho os dados de par�metros parceirias
  #E preencho os dados de condi��es comerciais
  #E clico no bot�o continua
  #	  E preencho os dados de flex
  #Quando cadastrar novo usu�rio de parceiros
  #Entao validar se a conta foi criada com sucesso
  @MDRDuplicado
  Cenario: Validar cadastro de parceria com MDR duplicada na mesma requisi��o
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o adicionar produto
    E preencho os dados de condi��es comerciais
    Quando clico no bot�o adicionar produto 
    #Ent�o nao deixar selecionar produto duplicado
    
  #ver com a vivi
  Cenario: Validar cadastro de parceria com dados de MDR cadastrados em outra parceria
    E preencho os dados do parceiro
    E preencho os dados de condi��es comerciais em outra parceria
    E preencho os dados de flex
    E preencho os dados de par�metros parceirias
    Quando cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso

  @MDRCreditoCrediario
  Cenario: Verificar cadastro de parceria com MDR cr�dito credi�rio
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade crediario
    Quando clico no bot�o adicionar produto

  #Ent�o validar com sucesso
  @MDRCreditoVista
  Cenario: Verificar cadastro de parceria com MDR cr�dito � vista
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade � vista
    Quando clico no bot�o adicionar produto

  #Ent�o validar com sucesso
  @MDRCreditoComJuros
  Cenario: Verificar cadastro de parceria com MDR cr�dito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no bot�o adicionar produto

  #Ent�o validar com sucesso
  @MDRCreditoSemJuros
  Cenario: Verificar cadastro de parceria com MDR cr�dito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no bot�o adicionar produto

  #Ent�o validar com sucesso
  @MDRDebitoVista
  Cenario: Verificar cadastro de parceria com MDR d�bito � vista
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto d�bito e modalidade � vista
    Quando clico no bot�o adicionar produto

  #Ent�o validar com sucesso v
  @MDRDebitoComJuros
  Cenario: Verificar cadastro de parceria com MDR d�bito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto d�bito e modalidade parcelado com juros

  @MDRDebitoSemJuros
  Cenario: Verificar cadastro de parceria com MDR debito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto debito e modalidade sem juros

  @MDRDebitoCrediario
  Cenario: Verificar cadastro de parceria com MDR d�bito credi�rio
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E seleciono MDR com campo produto d�bito e modalidade crediario

  @TaxaValorNegativo
  Cenario: Verificar cadastro de parceria com campo taxa com o valor negativo
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os MDR com campo campo taxa negativo

  #E preencho os demais campos
  #E clico adicionar produtos
  #E preencho os dados de flex
  #E preencho os dados de par�metros parceirias
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @TaxaValorZerado
  Cenario: Verificar cadastro de parceria com campo taxa com o valor zerado
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os MDR com campo campo taxa zerado

  #E preencho os demais campos
  #E clico adicionar produtos
  #E preencho os dados de flex
  #E preencho os dados de par�metros parceirias
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #  Cenario: Verificar cadastro de parceria sem enviar o campo tarifa
  @TarifaValorZerado
  Cenario: Verificar cadastro de parceria com campo tarifa com valor negativo
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os MDR com campo campo taxa tarifa negativo

  #E preencho os demais campos
  #E clico adicionar produtos
  #E preencho os dados de flex
  #E preencho os dados de par�metros parceirias
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @RegimeEmBranco
  Cenario: Verificar cadastro de parceria com campo regime com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho o campo regime "Em_BRANCO"
    Quando clico no bot�o Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @fator1EmBranco
  Cenario: Verificar cadastro de parceria com campo fator1 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho o campo fator1 "Em_BRANCO"
    Quando clico no bot�o Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator1ValorNegado
  Cenario: Verificar cadastro de parceria com campo fator1 com valor negativo
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os MDR com campo campo fator1 negativo
    Quando clico no bot�o Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator1ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator1 com o valor zerado
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os MDR com campo campo fator1 zerado
    Quando clico no bot�o Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @fator2EmBranco
  Cenario: Verificar cadastro de parceria com campo fator2 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clico no bot�o Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator2ValorNegativo
  Cenario: Verificar cadastro de parceria com campo fator2 com valor negativo
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os MDR com campo fator2 negativo
    Quando clico no bot�o Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator2ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator2 com o valor zerado
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os MDR com campo fator2 zerado
    Quando clico no bot�o Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @ClienteFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo precifica��o cliente final com valor em branco
    E preencho os dados do parceiro
    E preencho o precifica��o cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro

  Cenario: Verificar cadastro de parceria com campo antecipa��o rede com valor em branco
    E preencho os dados do parceiro
    E preencho o precifica��o cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro

  @propriedadeTerminalFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
    E preencho os dados do parceiro
    E preencho o propriedade terminal "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro

  @propriedadeAplica��oFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade aplica��o com valor em branco
    E preencho os dados do parceiro
    E preencho o propriedade aplica��o "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro

  @FornecedorAplica�aoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo fornecedor da aplica�ao  em branco
    E preencho os dados do parceiro
    E preencho o fornecedor da aplica�ao "Em_BRANCO"
    E preencho demais campos
    Quando clico no bot�o continuar
    Entao apresentar mensagem de erro

  #Mas preencho os demais campos do parceiros
  #E preencho os dados de condi��es comerciais
  #E clico no bot�o continua
  #E preencho a parceria com campo campo antecipa��o rede em branco
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  # Tirar mrr Cenario: Verificar cadastro de parceria com campo propriedade terminal com nenhum item
  #@FornecedorAplica�aoEmBranco
  #Cenario: Verificar cadastro de parceria com campo canal de venda com um item(obrigatorio)
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo campo canal de venda
  #E selecionar com um item
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  Cenario: Validar parametros da parceria com campo propriedade da aplica��o selecionado parceiro e preencher forcencedor da aplica��o
    E preencho os dados do parceiro
    Mas no campo propriedade da aplica��o selecionar Parceiro
    E habilita campo fornecedor da aplica��o
    E preencho os demais campos
    E clico no bot�o continuar
    E preencho os dados de condi��es comerciais
    E clico no bot�o continua
    E preencho os dados de flex
    Quando clicar no bot�o cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso

  @CanalVendaMaximoItens
  Cenario: Verificar cadastro de parceria com campo canal de venda com  m�ximo de itens permitidos
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias maximo itens canal de venda
    Quando clico no bot�o continuar
    Entao apresentar mensagem ok

  @CanalVendaBrancoParcerias
  Cenario: Verificar cadastro de parceria sem o campo canal de venda em branco
    E preencho os dados do parceiro
    E preencho o canal de venda "Em_BRANCO"
    Quando clico no bot�o continuar
    Entao apresentar mensagem erro

  #Quando clico no bot�o continuar
  #Entao e apresentar mensagem de erro
  #E preencho os dados de condi��es comerciais
  #E clico no bot�o continua
  #E preencho os dados de flex
  # Cenario: Verificar cadastro de parceria com campo canal de venda com nenhum item
  #Cenario: Verificar cadastro de parceria com campo tipo de captura com  m�ximo de itens permitidos(nao e (obrigatorio))
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo tipo de captura
  #E selecionar com um itens permitidos
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #Cenario: Verificar cadastro de parceria sem o campo tipo de captura
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria sem o campo tipo de captura
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #  Cenario: Verificar cadastro de parceria com campo tipo de captura com nenhum item
  #
  #Cenario: Verificar cadastro de parceria com campo tecnologia captura com um item
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo tecnologia captura
  #E selecionar com um item permitido
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #
  #Cenario: Verificar cadastro de parceria com campo tecnologia captura com m�ximo de itens permitidos
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo tecnologia captura
  #E selecionar com m�ximo de itens permitidos
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #Cenario: Verificar cadastro de parceria sem o campo tecnologia captura
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria sem o campo tecnologia captura
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #Cenario: Verificar cadastro de parceria com campo tecnologia captura com nenhum item
  @MarcaEmBranco
  Cenario: Verificar cadastro de parceria sem o campo marca em branco
    E preencho os dados do parceiro
    E preencho o marca "Em_BRANCO"
    Quando clico no bot�o continuar
    Entao apresentar mensagem erro

  #Mas preencho os demais campos do parceiros
  #E preencho os dados de condi��es comerciais
  #E preencho a parceria com campo campo antecipa��o rede em branco
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #Cenario: Verificar cadastro de parceria com campo marca com nenhum item
  #Cenario: Verificar cadastro de parceria com campo comunica��o com um item(obrigatorio)
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo comunica��o
  #E selecionar com um item permitido
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @ComunicaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo comunica��o com  m�ximo de itens permitidos(obrigatorio)
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias maximo itens comunica��o
    Quando clico no bot�o continuar
    Entao apresentar mensagem ok

  @CampoComuni�aoEmbranco
  Cenario: Verificar cadastro de parceria sem o campo comunica��o em branco
    E preencho os dados do parceiro
    E preencho o comunica��o "Em_BRANCO"
    Quando clico no bot�o continuar
    Entao apresentar mensagem erro

  @CentralAtendimentoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo central de atendimento em branco
    E preencho os dados do parceiro
    E preencho o atendimento "Em_BRANCO"
    Quando clico no bot�o continuar
    Entao apresentar mensagem erro

  #Mas preencho os demais campos do parceiros
  #E preencho os dados de condi��es comerciais
  #E clico no bot�o continua
  #E preencho a parceria com campo campo antecipa��o rede em branco
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #  Cenario: Verificar cadastro de parceria com campo atendimento central com nenhum item
  #Cenario: Verificar cadastro de parceria com campo atua��o com um item(obrigatorio)
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo atua��o
  #E selecionar com um item permitido
  #E preencho os demais campos par�metros a parceria
  #Quando clico no bot�o cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @AtuacaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo atua��o com  m�ximo de itens permitidos(obrigatorio)
    E preencho os dados do parceiro
    E preencho os dados de par�metros parceirias maximo itens atua��o
    Quando clico no bot�o continuar
    Entao apresentar mensagem ok

  @LimiteAtuacaoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo atua��o em branco
    E preencho os dados do parceiro
    E preencho o atua��o "Em_BRANCO"
    Quando clico no bot�o continuar
    Entao apresentar mensagem erro
