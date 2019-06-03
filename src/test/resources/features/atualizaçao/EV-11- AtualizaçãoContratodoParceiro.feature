#language: pt
#encoding: UTF-8
@GoogleChrome @RegressivoAtualizacao
Funcionalidade: Atualizacao

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso
  
  @removendoItemListaMDR @RodarNovamente
  Cenario: Validar atualizacao de parceria removendo um item na lista de MDR
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E removo os dados de condicoes comerciais MDR
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoAdicionarItemListaMDR @bug
  Cenario: Validar atualizacao de parceria adicionando um item na lista de MDR
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E validar a lista de MDR com sucesso
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  #@AtualizacaoCNPJemBranco
  #Cenario: Verificar atualiza��o de parceria com o campo CNPJ em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E que carrego os dados da parceria cadastrada
  #E clico no botao alterar parceiro
  #E preencho o campo CNPJ "Em_BRANCO"
  #Mas preencho os demais campos do parceiros
  #Quando clicar no botao continuar 
  #Entao nao habilitar o botao
  @AtualizacaoRazaoSocialemBranco
  Cenario: Verificar atualizacao de parceria com o campo Razao Social em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E preencho o campo razao social "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem A razão social é inválida.

  @AtualizacaoLOGRADOUROemBranco @teste
  Cenario: Verificar atualizacao de parceria com o campo logradouro em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E preencho o campo logradouro com valor "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O logradouro é inválida.

  @AtualizacaoNUMEROemBranco @teste
  Cenario: Verificar atualizacao de parceria com o campo numero em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E preencho o campo numero com valor "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O número é inválido.

  @AtualizacaoBAIRROemBranco @teste
  Cenario: Verificar atualizacao de parceria com o campo bairro em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E preencho o campo bairro com valor "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O bairro é inválido.

  @AtualizacaoCIDADEemBranco @teste
  Cenario: Verificar atualizacao de parceria com o campo cidade em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E preencho o campo cidade com valor "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem A cidade é inválida.

  #@AtualizacaoUFemBranco
  #Cenario: Verificar atualiza��o de parceria com o campo UF em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E que carrego os dados da parceria cadastrada
  #E preencho o campo uf com valor "Em_BRANCO"
  #Quando clico no botao alterar parceiro
  #Entao apresentar mensagem A cidade é inválida.
  
  @AtualizacaoCEPemBranco @teste
  Cenario: Verificar atualizacao de parceria com o campo cep em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E preencho o campo cep com valor "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O CEP é inválido.

  @AtualizacaoNOMEPARCEIROemBranco @teste
  Cenario: Verificar atualizacao com campo Nome Parceiro com valor branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E preencho o campo NomeParceiro com valor "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O nome do parceiro é inválido.

  @AtualizacaoParceriaCrediroCrediario
  Cenario: Verificar atualizacao de parceria com MDR credito credierio
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E seleciono MDR com campo produto credito e modalidade crediario
    E clico no botao alterar parceiro
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de sucesso

  @AtualizacaoParceriaCrediroVista
  Cenario: Verificar atualizacao de parceria com MDR credito a vista
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E seleciono MDR com campo produto credito e modalidade a vista
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoParceriaParceladoComJuros
  Cenario: Verificar atualizacao de parceria com MDR credito parcelado com juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E seleciono MDR com campo produto credito e modalidade com juros
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoParceriaParceladoSemJuros
  Cenario: Verificar atualizacao de parceria com MDR credito parcelado sem juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E seleciono MDR com campo produto credito e modalidade parcelado sem juros
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoParceriaParceladoDebitoVista
  Cenario: Verificar atualizacao de parceria com MDR debito a vista
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E seleciono MDR com campo produto debito e modalidade a vista
    Quando clico no botao adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado

  @AtualizacaoParceriaParceladoDebitoComJuros
  Cenario: Verificar atualizacao de parceria com MDR debito parcelado com juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E seleciono MDR com campo produto debito e modalidade parcelado com juros
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoParceriaParceladoDebitoSemJuros
  Cenario: Verificar atualizacao de parceria com MDR debito parcelado sem juros
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E seleciono MDR com campo produto debito e modalidade sem juros
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoParceriaParceladoDebitoCrediario
  Cenario: Verificar atualizacao de parceria com MDR debito crediario
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico no botao alterar parceiro
    E clico condicoes comerciais
    E seleciono MDR com campo produto debito e modalidade crediario
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  #@AtualizacaoTaxaBranco
  #Cenario: Verificar atualizacao de parceria com campo taxa com valor em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E que carrego os dados da parceria cadastrada
  #E clico condicoes comerciais
  #E preencho o campo TAXA com valor "Em_BRANCO"
  #Quando clico no botao alterar parceiro
  #Entao apresentar mensagem O logradouro é inválida.
   
  @AtualizacaoTaxaValorZeradoAtualizacao
  Cenario: Verificar atualizacao de parceria com campo taxa com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E preencho os MDR com campo campo taxa zerado
    Quando clico no botao adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado

  @AtualizacaoTarifaValorZerado
  Cenario: Verificar atualizacao de parceria com campo tarifa com valor Zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E preencho os MDR com campo campo taxa tarifa Zerado
    Quando clico no botao adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado

  #@AtualizacaoTarifaBranco
  #Cenario: Verificar atualizacao de parceria com campo tarifa com valor em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E que carrego os dados da parceria cadastrada
  #E clico condicoes comerciais
  #E preencho o campo TARIFA com valor "Em_BRANCO"
  #Quando clico no botao alterar parceiro
  #Entao apresentar mensagem O logradouro é inválida.
   
  @AtualizacaoRegimeBranco @bug
  Cenario: Verificar atualizacao de parceria com campo regime com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais flex
    E preencho o campo REGIME "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O regime é inválido.

  @AtualizacaoFator1Branco @bug
  Cenario: Verificar atualizacao de parceria com campo fator1 com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais flex
    E preencho o campo fator1 "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O fator1 é inválido.

  @AtualizacaoTarifaFator1ValorZerado
  Cenario: Verificar atualizacao de parceria com campo fator1 com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais flex
    E preencho os MDR com campo campo fator1 zerado
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoTarifaFator2ValorZerado
  Cenario: Verificar atualizacao de parceria com campo fator2 com o valor zerado
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais flex
    E preencho os MDR com campo fator2 zerado
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  #@AtualizacaoFator2Branco
  #Cenario: Verificar atualizacao de parceria com campo fator2 com valor em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E que carrego os dados da parceria cadastrada
  #E clico condicoes comerciais flex
  #E preencho o campo fatorr2 "Em_BRANCO"
  #Quando clico no botao alterar parceiro
  #Entao sem sucesso
  
   
  @AtualizacaoCarteiraEmBranco @embranco
  Cenario: Verificar atualizacao de parceria com campo carteira com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    E preencho o CARTEIRA "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem A carteira é inválida.

  @AtualizacaoCelulaEmBranco @bug
  Cenario: Verificar atualizacao de parceria com campo celula com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    E preencho o CELULA "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem A célula é inválida.

  @AtualizacaoGrupoComercialEmBranco @embranco
  Cenario: Verificar atualizacao de parceria com campo grupo comercial com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    E preencho o grupo COMERCIAL "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem O grupo comercial é inválido.

  @AtualizacaoCanalEmBranco @bug
  Cenario: Verificar atualizacao de parceria com campo canal com valor em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    E preencho o canal "Em_BRANCO"
    Quando clico no botao alterar parceiro

  #Entao apresentar mensagem de erro obrigatorio
  @AtualizacaoFornecedorDaAplicacaoBranco @bug
  Cenario: Verificar atualizacao de parceria sem o campo fornecedor da aplicacao  em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    E preencho o fornecedor da aplicacao "Em_BRANCO"
    Quando clico no botao alterar parceiro

  #Entao sem sucesso
  #@AtualizacaoClienteFinalEmBranco
  #Cenario: Verificar atualiza��o de parceria com campo precifica��o cliente final com valor em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E preencho o precificacao cliente final "Em_BRANCO"
  #E preencho demais campos
  #Quando clico no botao continuar
  #Entao apresentar mensagem de erro obrigatoria
  #@atualiza��oCampoAntecipacao
  #Cenario: Verificar atualiza��o de parceria com campo antecipacao rede com valor em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E preencho o precificacao cliente final "Em_BRANCO"
  #E preencho demais campos
  #Quando clico no botao continuar
  #Entao apresentar mensagem de erro obrigatoria
  #@atualiza��opropriedadeTerminalFinalEmBranco
  #Cenario: Verificar cadastro de parceria com campo propriedade terminal com valor em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E preencho o propriedade terminal "Em_BRANCO"
  #E preencho demais campos
  #Quando clico no botao continuar
  #Entao apresentar mensagem de erro obrigatoria
  #@atualiza��opropriedadeAplica��oFinalEmBranco
  #Cenario: Verificar cadastro de parceria com campo propriedade aplicacao com valor em branco
  #E que cadastro uma parceria
  #E acesso ao portal Parceiros
  #E entro com usuario e senha validos
  #E preencho o propriedade aplica��o "Em_BRANCO"
  #E preencho demais campos
  #Quando clico no botao continuar
  #Entao apresentar mensagem de erro obrigatoria
  #
  @atualizacaoSelecionarParceiro
  Cenario: Validar atualizacao parametros da parceria com campo propriedade da aplicacao selecionado parceiro e preencher o campo forcencedor da aplicacao
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    Mas no campo propriedade da aplicacao selecionar parceiro e preencho no campo fornecedor da Aplicacao
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoCanalVendaMaximoItens
  Cenario: Verificar atualizacao de parceria com campo canal de venda com  maximo de itens permitidos
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    E preencho os dados de parametros parceirias maximo itens canal de venda
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso

  @AtualizacaoCanalVendaBrancoParcerias 
  Cenario: Verificar atualizacao de parceria sem o campo canal de venda em branco
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico parametros da parceria
    E preencho o canal de venda "Em_BRANCO"
    Quando clico no botao alterar parceiro
    Entao apresentar mensagem de sucesso
    
  #@AtualizacaoMarcaEmBranco
  #Cenario: Verificar atualizacao de parceria sem o campo marca em branco
    #E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    #E que carrego os dados da parceria cadastrada
    #E preencho o marca "Em_BRANCO"
    #Quando clico no botao alterar parceiro
     #Entao apresentar mensagem de sucesso
