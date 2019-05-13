#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

  @CadastroComSucesso
  Cenario: Verificar cadastro de parcerias com todos os campos obrigatório com sucesso
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex 
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso
 
  @NomeValorEmBranco
  Cenario: Verificar cadastro com campo CNPJ com valor em branco
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @RazaoSocialValorEmBranco
  Cenario: Verificar cadastro com campo razao social com valor em branco
    E preencho o campo RAZAO SOCIAL "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @logradouroValorEmBranco
  Cenario: Verificar cadastro com campo logradouro com valor branco
    E preencho o campo LOGRADOURO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @NumeroValorEmBranco
  Cenario: Verificar cadastro com campo número com valor branco
    E preencho o campo NUMERO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @ComplementoValorEmBranco
  Cenario: Verificar cadastro com campo complemento com valor branco
    E preencho o campo COMPLEMENTO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @BairroValorEmBranco
  Cenario: Verificar cadastro com campo bairro com valor branco 
    E preencho o campo BAIRRO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @CidadeValorEmBranco
  Cenario: Verificar cadastro com campo cidade com valor branco
    E preencho o campo CIDADE com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @UFValorEmBranco
  Cenario: Verificar cadastro com campo UF com valor branco
    E preencho o campo UF com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @CEPValorEmBranco
  Cenario: Verificar cadastro com campo CEP com valor branco
    E preencho o campo CEP com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então apresentar mensagem de erro

  @NomeParceiroValorEmBranco
  Cenario: Verificar cadastro com campo Nome Parceiro com valor branco
    E preencho o campo Nome Parceiro com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar 
    Então apresentar mensagem de erro

  @MDRcomSucesso
  Cenario: Validar cadastro de parcerias com uma lista de MDR com sucesso
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E validar a lista de MDR com sucesso

  @MDRProdutoValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo produto com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo produto com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto

  #Então nao deixar selecionar produto
  @MDRModalidadeValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo modalidade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo modalidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto

  #Então nao deixar selecionar produto
  @MDRRamoValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo ramo de atividade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo ramo de atividade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto

  #Então nao deixar selecionar produto
  @MDRTaxaValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo taxa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo taxa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto

  #Então nao deixar selecionar produto
  @MDRTarifaValorEmBranco
  Cenario: Verificar cadastro condições comerciais MDR campo tarifa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo tarifa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botão adicionar produto

  #Então nao deixar selecionar produto
  @CadastrarOutroCNPJ
  Cenario: Verificar cadastro de parceria com endereço já cadastrado em outro CNPJ
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    #Quando cadastrar novo usuário de parceiros
    #Entao validar se a conta foi criada com sucesso
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E preencho outro cnpj
    E com mesmo endereço anteriomente

  #	  E preencho os dados de parâmetros parceirias
  #E preencho os dados de condições comerciais
  #E clico no botão continua
  #	  E preencho os dados de flex
  #Quando cadastrar novo usuário de parceiros
  #Entao validar se a conta foi criada com sucesso
  @MDRDuplicado
  Cenario: Validar cadastro de parceria com MDR duplicada na mesma requisição
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão adicionar produto
    E preencho os dados de condições comerciais
    Quando clico no botão adicionar produto 
    #Então nao deixar selecionar produto duplicado
    
  #ver com a vivi
  Cenario: Validar cadastro de parceria com dados de MDR cadastrados em outra parceria
    E preencho os dados do parceiro
    E preencho os dados de condições comerciais em outra parceria
    E preencho os dados de flex
    E preencho os dados de parâmetros parceirias
    Quando cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @MDRCreditoCrediario
  Cenario: Verificar cadastro de parceria com MDR crédito crediário
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade crediario
    Quando clico no botão adicionar produto

  #Então validar com sucesso
  @MDRCreditoVista
  Cenario: Verificar cadastro de parceria com MDR crédito à vista
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade à vista
    Quando clico no botão adicionar produto

  #Então validar com sucesso
  @MDRCreditoComJuros
  Cenario: Verificar cadastro de parceria com MDR crédito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no botão adicionar produto

  #Então validar com sucesso
  @MDRCreditoSemJuros
  Cenario: Verificar cadastro de parceria com MDR crédito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no botão adicionar produto

  #Então validar com sucesso
  @MDRDebitoVista
  Cenario: Verificar cadastro de parceria com MDR débito à vista
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade à vista
    Quando clico no botão adicionar produto

  #Então validar com sucesso v
  @MDRDebitoComJuros
  Cenario: Verificar cadastro de parceria com MDR débito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade parcelado com juros

  @MDRDebitoSemJuros
  Cenario: Verificar cadastro de parceria com MDR debito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto debito e modalidade sem juros

  @MDRDebitoCrediario
  Cenario: Verificar cadastro de parceria com MDR débito crediário
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade crediario

  @TaxaValorNegativo
  Cenario: Verificar cadastro de parceria com campo taxa com o valor negativo
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os MDR com campo campo taxa negativo

  #E preencho os demais campos
  #E clico adicionar produtos
  #E preencho os dados de flex
  #E preencho os dados de parâmetros parceirias
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @TaxaValorZerado
  Cenario: Verificar cadastro de parceria com campo taxa com o valor zerado
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os MDR com campo campo taxa zerado

  #E preencho os demais campos
  #E clico adicionar produtos
  #E preencho os dados de flex
  #E preencho os dados de parâmetros parceirias
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #  Cenario: Verificar cadastro de parceria sem enviar o campo tarifa
  @TarifaValorZerado
  Cenario: Verificar cadastro de parceria com campo tarifa com valor negativo
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os MDR com campo campo taxa tarifa negativo

  #E preencho os demais campos
  #E clico adicionar produtos
  #E preencho os dados de flex
  #E preencho os dados de parâmetros parceirias
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @RegimeEmBranco
  Cenario: Verificar cadastro de parceria com campo regime com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo regime "Em_BRANCO"
    Quando clico no botão Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @fator1EmBranco
  Cenario: Verificar cadastro de parceria com campo fator1 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo fator1 "Em_BRANCO"
    Quando clico no botão Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator1ValorNegado
  Cenario: Verificar cadastro de parceria com campo fator1 com valor negativo
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os MDR com campo campo fator1 negativo
    Quando clico no botão Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator1ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator1 com o valor zerado
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os MDR com campo campo fator1 zerado
    Quando clico no botão Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @fator2EmBranco
  Cenario: Verificar cadastro de parceria com campo fator2 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clico no botão Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator2ValorNegativo
  Cenario: Verificar cadastro de parceria com campo fator2 com valor negativo
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os MDR com campo fator2 negativo
    Quando clico no botão Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @TarifaFator2ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator2 com o valor zerado
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os MDR com campo fator2 zerado
    Quando clico no botão Cadastrar parceiro

  #Entao apresentar mensagem de erro
  @ClienteFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo precificação cliente final com valor em branco
    E preencho os dados do parceiro
    E preencho o precificação cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro

  Cenario: Verificar cadastro de parceria com campo antecipação rede com valor em branco
    E preencho os dados do parceiro
    E preencho o precificação cliente final "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro

  @propriedadeTerminalFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
    E preencho os dados do parceiro
    E preencho o propriedade terminal "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro

  @propriedadeAplicaçãoFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade aplicação com valor em branco
    E preencho os dados do parceiro
    E preencho o propriedade aplicação "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro

  @FornecedorAplicaçaoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo fornecedor da aplicaçao  em branco
    E preencho os dados do parceiro
    E preencho o fornecedor da aplicaçao "Em_BRANCO"
    E preencho demais campos
    Quando clico no botão continuar
    Entao apresentar mensagem de erro

  #Mas preencho os demais campos do parceiros
  #E preencho os dados de condições comerciais
  #E clico no botão continua
  #E preencho a parceria com campo campo antecipação rede em branco
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  # Tirar mrr Cenario: Verificar cadastro de parceria com campo propriedade terminal com nenhum item
  #@FornecedorAplicaçaoEmBranco
  #Cenario: Verificar cadastro de parceria com campo canal de venda com um item(obrigatorio)
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo campo canal de venda
  #E selecionar com um item
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  Cenario: Validar parametros da parceria com campo propriedade da aplicação selecionado parceiro e preencher forcencedor da aplicação
    E preencho os dados do parceiro
    Mas no campo propriedade da aplicação selecionar Parceiro
    E habilita campo fornecedor da aplicação
    E preencho os demais campos
    E clico no botão continuar
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho os dados de flex
    Quando clicar no botão cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  @CanalVendaMaximoItens
  Cenario: Verificar cadastro de parceria com campo canal de venda com  máximo de itens permitidos
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias maximo itens canal de venda
    Quando clico no botão continuar
    Entao apresentar mensagem ok

  @CanalVendaBrancoParcerias
  Cenario: Verificar cadastro de parceria sem o campo canal de venda em branco
    E preencho os dados do parceiro
    E preencho o canal de venda "Em_BRANCO"
    Quando clico no botão continuar
    Entao apresentar mensagem erro

  #Quando clico no botão continuar
  #Entao e apresentar mensagem de erro
  #E preencho os dados de condições comerciais
  #E clico no botão continua
  #E preencho os dados de flex
  # Cenario: Verificar cadastro de parceria com campo canal de venda com nenhum item
  #Cenario: Verificar cadastro de parceria com campo tipo de captura com  máximo de itens permitidos(nao e (obrigatorio))
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo tipo de captura
  #E selecionar com um itens permitidos
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #Cenario: Verificar cadastro de parceria sem o campo tipo de captura
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria sem o campo tipo de captura
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #  Cenario: Verificar cadastro de parceria com campo tipo de captura com nenhum item
  #
  #Cenario: Verificar cadastro de parceria com campo tecnologia captura com um item
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo tecnologia captura
  #E selecionar com um item permitido
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #
  #Cenario: Verificar cadastro de parceria com campo tecnologia captura com máximo de itens permitidos
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo tecnologia captura
  #E selecionar com máximo de itens permitidos
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #Cenario: Verificar cadastro de parceria sem o campo tecnologia captura
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria sem o campo tecnologia captura
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #
  #Cenario: Verificar cadastro de parceria com campo tecnologia captura com nenhum item
  @MarcaEmBranco
  Cenario: Verificar cadastro de parceria sem o campo marca em branco
    E preencho os dados do parceiro
    E preencho o marca "Em_BRANCO"
    Quando clico no botão continuar
    Entao apresentar mensagem erro

  #Mas preencho os demais campos do parceiros
  #E preencho os dados de condições comerciais
  #E preencho a parceria com campo campo antecipação rede em branco
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #Cenario: Verificar cadastro de parceria com campo marca com nenhum item
  #Cenario: Verificar cadastro de parceria com campo comunicação com um item(obrigatorio)
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo comunicação
  #E selecionar com um item permitido
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @ComunicaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo comunicação com  máximo de itens permitidos(obrigatorio)
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias maximo itens comunicação
    Quando clico no botão continuar
    Entao apresentar mensagem ok

  @CampoComuniçaoEmbranco
  Cenario: Verificar cadastro de parceria sem o campo comunicação em branco
    E preencho os dados do parceiro
    E preencho o comunicação "Em_BRANCO"
    Quando clico no botão continuar
    Entao apresentar mensagem erro

  @CentralAtendimentoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo central de atendimento em branco
    E preencho os dados do parceiro
    E preencho o atendimento "Em_BRANCO"
    Quando clico no botão continuar
    Entao apresentar mensagem erro

  #Mas preencho os demais campos do parceiros
  #E preencho os dados de condições comerciais
  #E clico no botão continua
  #E preencho a parceria com campo campo antecipação rede em branco
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  #  Cenario: Verificar cadastro de parceria com campo atendimento central com nenhum item
  #Cenario: Verificar cadastro de parceria com campo atuação com um item(obrigatorio)
  #E preencho os dados do parceiro
  #E preencho os dados de condições comerciais
  #E preencho os dados de flex
  #E preencho a parceria com campo atuação
  #E selecionar com um item permitido
  #E preencho os demais campos parâmetros a parceria
  #Quando clico no botão cadastrar parceiro
  #Entao validar se a conta foi criada com sucesso
  @AtuacaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo atuação com  máximo de itens permitidos(obrigatorio)
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias maximo itens atuação
    Quando clico no botão continuar
    Entao apresentar mensagem ok

  @LimiteAtuacaoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo atuação em branco
    E preencho os dados do parceiro
    E preencho o atuação "Em_BRANCO"
    Quando clico no botão continuar
    Entao apresentar mensagem erro
