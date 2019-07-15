#language: pt
#encoding: UTF-8
@GoogleChrome @RegressivoCadastro @generate-word
Funcionalidade: Cadastro 

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

  @CadastroComSucesso
  Cenario: Verificar cadastro de parcerias com todos os campos obrigatario com sucesso
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho os dados de condiçoes comerciais 
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CNPJValorEmBranco
  Cenario: Verificar cadastro com campo CNPJ com valor em branco
    E preencho o campo CNPJ "Em_BRANCO"
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao

  @RazaoSocialValorEmBranco
  Cenario: Verificar cadastro com campo razao social com valor em branco
    E preencho o campo RAZAO SOCIAL "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    E clicar no botao continuar
    Quando apresentar mensagem A razão social é inválida. 
    Entao nao habilitar o botao

  @logradouroValorEmBranco
  Cenario: Verificar cadastro com campo logradouro com valor branco
    E preencho o campo LOGRADOURO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    E clicar no botao continuar
    Quando apresentar mensagem O logradouro é inválida.
    Entao nao habilitar o botao

  @NumeroValorEmBranco
  Cenario: Verificar cadastro com campo numero com valor branco
    E preencho o campo NUMERO com valor "Em_BRANCO"
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao

  @ComplementoValorEmBranco
  Cenario: Verificar cadastro com campo complemento com valor branco
    E preencho o campo COMPLEMENTO com valor "Em_BRANCO"
    Quando preencho os demais campos do parceiros
    Entao habilitar o botao continuar e clicar

  @BairroValorEmBranco
  Cenario: Verificar cadastro com campo bairro com valor branco
    E preencho o campo BAIRRO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    E clicar no botao continuar
    Quando apresentar mensagem O bairro é inválido.
    Entao nao habilitar o botao

  @CidadeValorEmBranco
  Cenario: Verificar cadastro com campo cidade com valor branco
    E preencho o campo CIDADE com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    E clicar no botao continuar
    Quando apresentar mensagem A cidade é inválida.
    Entao nao habilitar o botao

  @UFValorEmBranco
  Cenario: Verificar cadastro com campo UF com valor branco
    E preencho o campo UF com valor "Em_BRANCO"
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao

  @CEPValorEmBranco
  Cenario: Verificar cadastro com campo CEP com valor branco
    E preencho o campo CEP com valor "Em_BRANCO"
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao

  @NomeParceiroValorEmBranco
  Cenario: Verificar cadastro com campo Nome Parceiro com valor branco
    E preencho o campo Nome Parceiro com valor "Em_BRANCO"
    E clicar no botao continuar
    Quando apresentar mensagem O nome do parceiro é inválido.
    Entao nao habilitar o botao

  @MDRcomSucesso
  Cenario: Validar cadastro de parcerias com uma lista de MDR com sucesso
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    Quando clicar no botao continuar parametro de parceirias
    Entao validar a lista de MDR com sucesso

  @MDRProdutoValorEmBranco
  Cenario: Verificar cadastro condiçoes comerciais MDR campo produto com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho o campo produto com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo produto obrigatorio

  @MDRModalidadeValorEmBranco
  Cenario: Verificar cadastro condiçoes comerciais MDR campo modalidade com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho o campo modalidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo modalidade obrigatorio

  @MDRRamoValorEmBranco
  Cenario: Verificar cadastro condicoes comerciais MDR campo ramo de atividade com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho o campo ramo de atividade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo ramo de atividade obrigatorio

  @MDRTaxaValorEmBranco
  Cenario: Verificar cadastro condicoes comerciais MDR campo taxa com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho o campo taxa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo taxa obrigatorio

  @MDRTarifaValorEmBranco
  Cenario: Verificar cadastro condicoes comerciais MDR campo tarifa com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho o campo tarifa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo tarifa obrigatorio

  #@CadastrarOutroCNPJ
  #Cenario: Verificar cadastro de parceria com endereco ja cadastrado em outro CNPJ
    #E preencho os dados do parceiro
    #E clicar no botao continuar
    #E preencho os dados de parametros parceirias
    #E clicar no botao continuar parametro de parceirias
    #E preencho os dados de condiçoes comerciais 
    #E clico no botao continua
    #E preencho os dados de flex
    #Quando clicar no botao cadastrar novo usuario de parceiros
    #Entao validar se a conta foi criada com sucesso
    #Dado acesso ao portal Parceiros
    #E entro com usuario e senha validos
    #E preencho outro cnpj
    #E com mesmo endereço anteriomente

  @MDRDuplicado
  Cenario: Validar cadastro de parceria com MDR duplicada na mesma requisicao
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao adicionar produto
    E preencho os dados de condiçoes comerciais
    Quando clico no botao adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado

  @MDRCreditoCrediario
  Cenario: Verificar cadastro da parceria com MDR credito crediario
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto credito e modalidade crediario
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @MDRCreditoVista
  Cenario: Verificar cadastro de parceria com MDR credito a vista
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto credito e modalidade a vista
    Quando clico no botao adicionar produto
    Entao apresentar mensagem modalidade invalida para o produto escolhido

  @MDRCreditoComJuros
  Cenario: Verificar cadastro de parceria com MDR credito parcelado com juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @MDRCreditoSemJuros
  Cenario: Verificar cadastro de parceria com MDR credito parcelado sem juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @MDRDebitoVista
  Cenario: Verificar cadastro de parceria com MDR debito a vista
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto debito e modalidade a vista
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @MDRDebitoComJuros
  Cenario: Verificar cadastro de parceria com MDR debito parcelado com juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto debito e modalidade parcelado com juros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem modalidade invalida para o produto escolhido

  @MDRDebitoSemJuros
  Cenario: Verificar cadastro de parceria com MDR debito parcelado sem juros
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto debito e modalidade sem juros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem modalidade invalida para o produto escolhido

  @MDRDebitoCrediario
  Cenario: Verificar cadastro de parceria com MDR debito crediario
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E seleciono MDR com campo produto debito e modalidade crediario
    Quando clico no botao adicionar produto
    Entao apresentar mensagem modalidade invalida para o produto escolhido

  @TaxaValorZerado
  Cenario: Verificar cadastro de parceria com campo taxa com o valor zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho os MDR com campo campo taxa zerado
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @TarifaValorZerado
  Cenario: Verificar cadastro de parceria com campo tarifa com valor Zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho os MDR com campo campo taxa tarifa Zerado
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR

  @RegimeEmBranco
  Cenario: Verificar cadastro de parceria com campo regime com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho o campo regime "Em_BRANCO"
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao apresentar mensagem de erro campo regime

  @fator1EmBranco
  Cenario: Verificar cadastro de parceria com campo fator1 com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho o campo fator1 "Em_BRANCO"
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao apresentar mensagem de erro campo fator1

  @TarifaFator1ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator1 com o valor zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
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
    E clicar no botao continuar parametro de parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao apresentar mensagem de erro campo fator2

  @TarifaFator2ValorZerado
  Cenario: Verificar cadastro de parceria com campo fator2 com o valor zerado
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
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
    Entao apresentar mensagem A carteira é inválida.

  @CelulaEmBranco
  Cenario: Verificar cadastro de parceria com campo celula com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o celula "Em_BRANCO"
    Quando preencho demais campos
    Entao nao habilitar o botao2

  @GrupoComercialEmBranco
  Cenario: Verificar cadastro de parceria com campo grupo comercial com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o grupo comercial "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem O grupo comercial é inválido.

  @CanalEmBranco
  Cenario: Verificar cadastro de parceria com campo canal com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o canal "Em_BRANCO"
    Quando preencho demais campos
    Entao nao habilitar o botao2

  @ClienteFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo precificacao cliente final com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o precificacao cliente final "Em_BRANCO"
    Quando preencho demais campos
    Entao nao habilitar o botao2

  @propriedadeTerminalFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o propriedade terminal "Em_BRANCO"
    Quando preencho demais campos
    Entao nao habilitar o botao2

  @propriedadeAplicacaoFinalEmBranco
  Cenario: Verificar cadastro de parceria com campo propriedade aplicacao com valor em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o propriedade aplicaçao "Em_BRANCO"
    Quando preencho demais campos
    Entao nao habilitar o botao2

  @FornecedoraplicacaoEmBranco 
  Cenario: Verificar cadastro de parceria sem o campo fornecedor da aplicacao em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o fornecedor da aplicacao "Em_BRANCO"
    E preencho demais campos
    Quando clico no botao continuar
    Entao apresentar mensagem O fornecedor da aplicação é inválido.

  @CadastroSelecionarParceiro
  Cenario: Validar parametros da parceria com campo propriedade da aplicaçao selecionado parceiro e preencher o campo forcencedor da aplicacao
    E preencho os dados do parceiro
    E clicar no botao continuar
    Mas no campo propriedade da aplicacao selecionar Parceiro e preencho no campo fornecedor da Aplicacao
    E preencho demais campos
    E clicar no botao continuar parametro de parceirias
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CanalVendaMaximoItens
  Cenario: Verificar cadastro de parceria com campo canal de venda com  maximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias maximo itens canal de venda
    E preencho demais campos
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
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @MarcaEmBranco
  Cenario: Verificar cadastro de parceria sem o campo marca em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o marca "Em_BRANCO"
    Quando preencho demais campos
    Entao nao habilitar o botao2

  @ComunicaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo comunicacao com  maximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias maximo itens comunicacao
    E preencho demais campos
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CampoComunicaoEmbranco
  Cenario: Verificar cadastro de parceria sem o campo comunicacao em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o comunicacao "Em_BRANCO"
    E preencho demais campos
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso

  @CentralAtendimentoEmBranco
  Cenario: Verificar cadastro de parceria sem o campo central de atendimento em branco
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho o atendimento "Em_BRANCO"
    Quando preencho demais campos
    Entao nao habilitar o botao2

  @AtuacaoMaximoDeItens
  Cenario: Verificar cadastro de parceria com campo atuacao com  maximo de itens permitidos
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias maximo itens atuacao
    E preencho demais campos
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
    E preencho os dados de condiçoes comerciais
    E clico no botao continua
    E preencho os dados de flex
    Quando clicar no botao cadastrar novo usuario de parceiros
    Entao validar se a conta foi criada com sucesso
