#language: pt
#encoding: iso-8859-1
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E qugit e cadastro uma parceria 
    E que carrego os dados da parceria cadastrada
    

  #@CadastroComSucessoAtualizaçao
  #Cenario: Validar atualização de parceria com sucesso
    #E altero os dados do parceiro
    #E preencho os dados de parâmetros parceirias
    #E preencho os dados de condições comerciais
    #E clico no botão continua
    #E preencho os dados de flex
    #Quando clicar no botão cadastrar novo usuário de parceiros
    #Entao validar atualização se a conta foi criada com sucesso
  
 # Cenario: Validar atualização de parceria do grupo de dados do parceiro

  Cenario: Validar atualização de parceria removendo um item na lista de MDR
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico para remover item da lista MDR
    E validar atualização do item removido
    E clico no botão continua
    E preencho os dados de flex

  #Quando cadastrar novo usuário de parceiros
  #Entao validar se a conta foi criada com sucesso
  
  Cenario: Validar atualização de parceria modificando um item na lista de MDR
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico para modificando item da lista MDR
    E validar atualização do item modificado
    E clico no botão continua
    E preencho os dados de flex

  #Quando cadastrar novo usuário de parceiros
  #Entao validar se a conta foi criada com sucesso
  Cenario: Validar atualização de parceria adicionando um item na lista de MDR
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico para adicionando item da lista MDR
    E validar atualização do item adicionando
    E clico no botão continua
    E preencho os dados de flex

  #Quando cadastrar novo usuário de parceiros
  #Entao validar se a conta foi criada com sucesso
  Cenario: Validar atualização de parceria do grupo de dados parâmetros de parceria

  Cenario: Verificar atualização de parceria com o campo CNPJ em branco
    E preencho o campo CNPJ "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com o campo Razão Social em branco
    E preencho o campo RAZAO SOCIAL "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com o campo LOGRADOURO em branco
    E preencho o campo LOGRADOURO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com o campo NUMERO em branco
    E preencho o campo NUMERO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com o campo BAIRRO em branco
    E preencho o campo BAIRRO com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com o campo CIDADE em branco
    E preencho o campo CIDADE com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com o campo UF em branco
    E preencho o campo UF com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com o campo CEP em branco
    E preencho o campo CEP com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com MDR crédito crediário
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade crediario

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com MDR crédito à vista
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade à vista

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com MDR crédito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade com juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com MDR crédito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto credito e modalidade sem juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com MDR débito à vista
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade à vista

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com MDR débito parcelado com juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade com juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com MDR débito parcelado sem juros
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade sem juros

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com MDR débito crediário
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E seleciono MDR com campo produto débito e modalidade crediário

  #E preencho os demais campos
  #E clico adicionar produtos
  #Quando clico no botão continuar
  #Então validar atualiazação da pagina
  Cenario: Verificar atualização de parceria com campo produto com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo produto com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo modalidade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo modalidade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo ramo de atividade com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo ramo de atividade com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo taxa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo taxa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo tarifa com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho o campo tarifa com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo regime com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo regime "Em_BRANCO"
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo fator1 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo fator1 "Em_BRANCO"
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo fator2 com valor em branco
    E preencho os dados do parceiro
    E preencho os dados de parâmetros parceirias
    E preencho os dados de condições comerciais
    E clico no botão continua
    E preencho o campo fatorr2 "Em_BRANCO"
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo precificação cliente final com valor em branco
    E preencho os dados do parceiro
    E preencho o precificação cliente final "Em_BRANCO"
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo antecipação rede com valor em branco
    E preencho os dados do parceiro
    E preencho o precificação cliente final "Em_BRANCO"
    Quando clicar no botão continuar
    Então validar atualização da pagina

  Cenario: Verificar atualização de parceria com campo propriedade terminal com valor em branco
   E preencho os dados do parceiro 
   E preencho o propriedade terminal "Em_BRANCO"
   Quando clicar no botão continuar
    Então validar atualização da pagina
   
    Cenario: Verificar atualização de parceria com campo propriedade aplicação com valor em branco
   E preencho os dados do parceiro 
   E preencho o propriedade aplicação "Em_BRANCO"
   Quando clicar no botão continuar
    Então validar atualização da pagina
    
    Cenario: Verificar atualização de parceria sem o campo fornecedor da aplicaçao  em branco 
   E preencho os dados do parceiro 
   E preencho o fornecedor da aplicaçao "Em_BRANCO"
    Quando clicar no botão continuar
    Então validar atualização da pagina
    
    Cenario: Verificar atualização de parceria sem o campo canal de venda
     E preencho os dados do parceiro 
     E preencho sem o campo canal de venda
     Quando clicar no botão continuar
    Então validar atualização da pagina
    
    Cenario: Verificar atualização de parceria sem o campo comunicação
    
  
  
