#language: pt
#encoding: UTF-8
@GoogleChrome @Regressivo
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

  @CadastroComSucesso
  Cenario: Verificar cadastro de parcerias com todos os campos obrigatário com sucesso
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @CNPJValorEmBranco
  Cenario: Verificar cadastro com campo CNPJ com valor em branco
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @RazaoSocialValorEmBranco
  Cenario: Verificar cadastro com campo razao social com valor em branco
    E preencho o campo RAZAO SOCIAL "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @logradouroValorEmBranco
  Cenario: Verificar cadastro com campo logradouro com valor branco
    E preencho o campo LOGRADOURO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @NumeroValorEmBranco
  Cenario: Verificar cadastro com campo námero com valor branco
    E preencho o campo NUMERO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @ComplementoValorEmBranco
  Cenario: Verificar cadastro com campo complemento com valor branco
    E preencho o campo COMPLEMENTO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao deixar passar o teste

  @BairroValorEmBranco
  Cenario: Verificar cadastro com campo bairro com valor branco
    E preencho o campo BAIRRO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @CidadeValorEmBranco
  Cenario: Verificar cadastro com campo cidade com valor branco
    E preencho o campo CIDADE com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @UFValorEmBranco
  Cenario: Verificar cadastro com campo UF com valor branco
    E preencho o campo UF com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @CEPValorEmBranco
  Cenario: Verificar cadastro com campo CEP com valor branco
    E preencho o campo CEP com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @NomeParceiroValorEmBranco
  Cenario: Verificar cadastro com campo Nome Parceiro com valor branco
    E preencho o campo Nome Parceiro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @MDRcomSucesso
  Cenario: Validar cadastro de parcerias com uma lista de MDR com sucesso
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E validar a lista de MDR com sucesso

  @MDRProdutoValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo produto com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho o campo produto com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRModalidadeValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo modalidade com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho o campo modalidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRRamoValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo ramo de atividade com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho o campo ramo de atividade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRTaxaValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo taxa com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho o campo taxa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @MDRTarifaValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo tarifa com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho o campo tarifa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto
    Entao apresentar mensagem de erro campo obrigatorio

  @CadastrarOutroCNPJ
  Cenario: Verificar cadastro de parceria com endereço já cadastrado em outro CNPJ
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E preencho outro cnpj
    E com mesmo endereço anteriomente

  @MDRDuplicado
  Cenario: Validar cadastro de parceria com MDR duplicada na mesma requisiááo
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão adicionar produto
    E preencho os dados de condições comerciais
    Quando clico no botão adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado

  #ver com a vivi
  #Cenario: Validar cadastro de parceria com dados de MDR cadastrados em outra parceria
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais em outra parceria
  #E preencho os dados de flex
  #E preencho os dados de parâmetros parceirias
  #Quando cadastrar novo usuário de parceiros
  #Entao validar se a conta foi criada com sucesso
  @MDRCreditoCrediario
  Cenario: Verificar cadastro da parceria com MDR crádito crediário
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade crediario
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR

  @MDRCreditoVista
  Cenario: Verificar cadastro de parceria com MDR crádito à vista
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade à vista
    Quando clico no botão adicionar produto

  #Entao validar com sucesso
  @MDRCreditoComJuros
  Cenario: Verificar cadastro de parceria com MDR crádito parcelado com juros
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR

  @MDRCreditoSemJuros
  Cenario: Verificar cadastro de parceria com MDR crádito parcelado sem juros
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR

  @MDRDebitoVista
  Cenario: Verificar cadastro de parceria com MDR débito à vista
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade à vista
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR

  @MDRDebitoComJuros
  Cenario: Verificar cadastro de parceria com MDR débito parcelado com juros
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade parcelado com juros

  @MDRDebitoSemJuros
  Cenario: Verificar cadastro de parceria com MDR debito parcelado sem juros
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto debito e modalidade sem juros

  @MDRDebitoCrediario
  Cenario: Verificar cadastro de parceria com MDR débito crediário
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade crediario

  @TaxaValorZerado
  Cenario: Verificar cadastro de parceria com campo taxa com o valor zerado
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os MDR com campo campo taxa zerado
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR

  @TarifaValorZerado
  Cenario: Verificar cadastro de parceria com campo tarifa com valor Zerado
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os MDR com campo campo taxa tarifa Zerado
    Quando clico no botão adicionar produto
    Entao validar a lista de MDR

  @RegimeEmBranco
  Cenario: Verificar cadastro de parceria com campo regime com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo regime "Em_BRANCO"
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao apresentar mensagem de erro obrigatoria

  @fator1EmBranco
  Cenario: Verificar cadastro de parceria com campo fator1 com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo fator1 "Em_BRANCO"
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao apresentar mensagem de erro obrigatoria

  @TarifaFator1ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator1 com o valor zerado
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os MDR com campo campo fator1 zerado
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @fator2EmBranco
  Cenario: Verificar cadastro de parceria com campo fator2 com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao apresentar mensagem de erro obrigatorio

  #ver com bueno
  #@TarifaFator2ValorNegativo
  #Cenario: Verificar cadastro de parceria com campo fator2 com valor negativo
  #E preencho os dados do parceiro
  #E preencho os dados de parâmetros parceirias
  #E preencho os dados de condições comerciais
  #E clico no botão continua
  #E preencho os MDR com campo fator2 negativo
  #Quando clicar no botão cadastrar novo usuário de parceiros
  #Entao apresentar mensagem de erro
  @TarifaFator2ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator2 com o valor zerado
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os MDR com campo fator2 zerado
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @CarteiraEmBranco
  Cenario: Verificar cadastro de parceria com campo carteira com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o carteira "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @CelulaEmBranco
  Cenario: Verificar cadastro de parceria com campo cálula com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o célula "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @GrupoComercialEmBranco
  Cenario: Verificar cadastro de parceria com campo grupo comercial com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o grupo comercial "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @CanalEmBranco
  Cenario: Verificar cadastro de parceria com campo canal com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o canal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatorio

  @ClienteFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo precificação cliente final com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o precificação cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

@CadastroCampoAntecipacao
  Cenario: Verificar cadastro de parceria com campo antecipaçao rede com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o precificação cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @propriedadeTerminalFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o propriedade terminal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @propriedadeAplicaááoFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade aplicaááo com valor em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o propriedade aplicação "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @FornecedoraplicaçaoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo fornecedor da aplicaçao  em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o fornecedor da aplicaçao "Em_BRANCO"
    E preencho demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @CadastroSelecionarParceiro
  Cenario: Validar parametros da parceria com campo propriedade da aplicaááo selecionado parceiro e preencher o campo forcencedor da aplicaááo
    E preencho os dados do parceiro
    E clicar no botão continuar
    Mas no campo propriedade da aplicação selecionar Parceiro e preencho no campo fornecedor da Aplicacao
    E preencho demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @CanalVendaMaximoItens
  Cenario: Verificar cadastro de parceria com campo canal de venda com  máximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias maximo itens canal de venda
    E preencho demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @CanalVendaBrancoParcerias
  Cenario: Verificar cadastro de parceria sem o campo canal de venda em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o canal de venda "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @MarcaEmBranco
  Cenario: Verificar cadastro de parceria sem o campo marca em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o marca "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @ComunicaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo comunicação com  máximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias maximo itens comunicação
    E preencho demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @CampoComuniáaoEmbranco
  Cenario: Verificar cadastro de parceria sem o campo comunicação em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o comunicação "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @CentralAtendimentoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo central de atendimento em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o atendimento "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria

  @AtuacaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo atuação com  máximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho os dados de parâmetros parceirias maximo itens atuação
    E preencho demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @LimiteAtuacaoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo atuacao em branco
    E preencho os dados do parceiro
    E clicar no botão continuar
    E preencho o atuação "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro obrigatoria
