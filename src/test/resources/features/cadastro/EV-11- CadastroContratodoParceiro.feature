#language: pt
#encoding: UTF-8
@GoogleChrome @Regressivo
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros 
    E entro com usuario e senha validos  
    E validar conta conectada com sucesso
 
  @CadastroComSucesso
  Cenario: Verificar cadastro de parcerias com todos os campos obrigat�rio com sucesso
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias 
    E preencho os dados de condiçoes comerciais 
    E clico no botao continua 
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CNPJValorEmBranco
  Cenario: Verificar cadastro com campo CNPJ com valor em branco
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @RazaoSocialValorEmBranco
  Cenario: Verificar cadastro com campo razao social com valor em branco
    E preencho o campo RAZAO SOCIAL "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @logradouroValorEmBranco
  Cenario: Verificar cadastro com campo logradouro com valor branco
    E preencho o campo LOGRADOURO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar 
    Entao nao habilitar o botao

  @NumeroValorEmBranco
  Cenario: Verificar cadastro com campo n�mero com valor branco
    E preencho o campo NUMERO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @ComplementoValorEmBranco
  Cenario: Verificar cadastro com campo complemento com valor branco
    E preencho o campo COMPLEMENTO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao habilitar o botao continuar

  @BairroValorEmBranco
  Cenario: Verificar cadastro com campo bairro com valor branco
    E preencho o campo BAIRRO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @CidadeValorEmBranco
  Cenario: Verificar cadastro com campo cidade com valor branco
    E preencho o campo CIDADE com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @UFValorEmBranco
  Cenario: Verificar cadastro com campo UF com valor branco
    E preencho o campo UF com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @CEPValorEmBranco
  Cenario: Verificar cadastro com campo CEP com valor branco
    E preencho o campo CEP com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @NomeParceiroValorEmBranco
  Cenario: Verificar cadastro com campo Nome Parceiro com valor branco
    E preencho o campo Nome Parceiro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao continuar
    Entao nao habilitar o botao

  @MDRcomSucesso
  Cenario: Validar cadastro de parcerias com uma lista de MDR com sucesso
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E validar a lista de MDR com sucesso

  @MDRProdutoValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo produto com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho o campo produto com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRModalidadeValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo modalidade com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho o campo modalidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRRamoValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo ramo de atividade com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho o campo ramo de atividade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando  clico no botao adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRTaxaValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo taxa com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho o campo taxa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRTarifaValorEmBranco
  Cenario: Verificar cadastro condi��es comerciais MDR campo tarifa com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho o campo tarifa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @CadastrarOutroCNPJ
  Cenario: Verificar cadastro de parceria com endere�o j� cadastrado em outro CNPJ
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E preencho outro cnpj 
    E com mesmo endereço anteriomente

  @MDRDuplicado
  Cenario: Validar cadastro de parceria com MDR duplicada na mesma requisi��o
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao adicionar produto
    E preencho os dados de condiçoes comerciais
    Quando clico no botao adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado

  #ver com a vivi
  #Cenario: Validar cadastro de parceria com dados de MDR cadastrados em outra parceria
  #E preencho os dados do parceiro
  #E preencho os dados de condi��es comerciais em outra parceria
  #E preencho os dados de flex
  #E preencho os dados de par�metros parceirias
  #Quando cadastrar novo usu�rio de parceiros
  #Entao validar se a conta foi criada com sucesso
  @MDRCreditoCrediario
  Cenario: Verificar cadastro da parceria com MDR cr�dito credi�rio
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto credito e modalidade crediario
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @MDRCreditoVista
  Cenario: Verificar cadastro de parceria com MDR cr�dito � vista
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto credito e modalidade � vista
    Quando clico no botao adicionar produto

  #Entao validar com sucesso
  @MDRCreditoComJuros
  Cenario: Verificar cadastro de parceria com MDR cr�dito parcelado com juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @MDRCreditoSemJuros
  Cenario: Verificar cadastro de parceria com MDR cr�dito parcelado sem juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

#debugar
  @MDRDebitoVista
  Cenario: Verificar cadastro de parceria com MDR d�bito � vista
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto debito e modalidade a vista
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @MDRDebitoComJuros
  Cenario: Verificar cadastro de parceria com MDR d�bito parcelado com juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto debito e modalidade parcelado com juros

  @MDRDebitoSemJuros
  Cenario: Verificar cadastro de parceria com MDR debito parcelado sem juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto debito e modalidade sem juros

  @MDRDebitoCrediario
  Cenario: Verificar cadastro de parceria com MDR d�bito credi�rio
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E seleciono MDR com campo produto debito e modalidade crediario

  @TaxaValorZerado
  Cenario: Verificar cadastro de parceria com campo taxa com o valor zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os MDR com campo campo taxa zerado
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @TarifaValorZerado
  Cenario: Verificar cadastro de parceria com campo tarifa com valor Zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os MDR com campo campo taxa tarifa Zerado
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @RegimeEmBranco
  Cenario: Verificar cadastro de parceria com campo regime com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho o campo regime "Em_BRANCO"
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao apresentar mensagem de erro obrigatoria

  @fator1EmBranco
  Cenario: Verificar cadastro de parceria com campo fator1 com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho o campo fator1 "Em_BRANCO"
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao apresentar mensagem de erro obrigatoria

  @TarifaFator1ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator1 com o valor zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os MDR com campo campo fator1 zerado
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @fator2EmBranco
  Cenario: Verificar cadastro de parceria com campo fator2 com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao apresentar mensagem de erro obrigatorio

  #ver com bueno
  #@TarifaFator2ValorNegativo
  #Cenario: Verificar cadastro de parceria com campo fator2 com valor negativo
  #E preencho os dados do parceiro
  #E preencho os dados de par�metros parceirias
  #E preencho os dados de condi��es comerciais
  #E clico no bot�o continua
  #E preencho os MDR com campo fator2 negativo
  #Quando clicar no bot�o cadastrar novo usu�rio de parceiros
  #Entao apresentar mensagem de erro
  @TarifaFator2ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator2 com o valor zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os MDR com campo fator2 zerado
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CarteiraEmBranco
  Cenario: Verificar cadastro de parceria com campo carteira com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o carteira "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @CelulaEmBranco
  Cenario: Verificar cadastro de parceria com campo c�lula com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o celula "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @GrupoComercialEmBranco
  Cenario: Verificar cadastro de parceria com campo grupo comercial com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o grupo comercial "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatorio

  @CanalEmBranco
  Cenario: Verificar cadastro de parceria com campo canal com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o canal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatorio

  @ClienteFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo precifica��o cliente final com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o precificacao cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

@CadastroCampoAntecipacao
  Cenario: Verificar cadastro de parceria com campo antecipa�ao rede com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o precificacao cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @propriedadeTerminalFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o propriedade terminal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @propriedadeAplica��oFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade aplica��o com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o propriedade aplica��o "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @Fornecedoraplica�aoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo fornecedor da aplica�ao  em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o fornecedor da aplica�ao "Em_BRANCO"
    E preencho demais campos
    E clico no botao continuar
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CadastroSelecionarParceiro
  Cenario: Validar parametros da parceria com campo propriedade da aplica��o selecionado parceiro e preencher o campo forcencedor da aplica��o
    E preencho os dados do parceiro
    E clicar no botao continuar
    Mas no campo propriedade da aplica��o selecionar Parceiro e preencho no campo fornecedor da Aplicacao
    E preencho demais campos
    E clico no botao continuar
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CanalVendaMaximoItens
  Cenario: Verificar cadastro de parceria com campo canal de venda com  m�ximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias maximo itens canal de venda
    E preencho demais campos
    E clico no botao continuar
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CanalVendaBrancoParcerias
  Cenario: Verificar cadastro de parceria sem o campo canal de venda em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o canal de venda "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @MarcaEmBranco
  Cenario: Verificar cadastro de parceria sem o campo marca em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o marca "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @ComunicaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo comunica��o com  m�ximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de par�metros parceirias maximo itens comunica��o
    E preencho demais campos
    E clico no botao continuar
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CampoComuni�aoEmbranco
  Cenario: Verificar cadastro de parceria sem o campo comunica��o em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o comunica��o "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @CentralAtendimentoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo central de atendimento em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o atendimento "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtuacaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo atua��o com  m�ximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias maximo itens atuacao
    E preencho demais campos
    E clico no botao continuar
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @LimiteAtuacaoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo atuacao em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o atuaçao "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem de erro obrigatoria
