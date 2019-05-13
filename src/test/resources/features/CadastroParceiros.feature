#language: pt
#encoding: iso-8859-1
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros

  @CadastroValido @GoogleChrome
  Cenario: Verificar cadastro de parcerias com todos os campos obrigat�rio com sucesso
    E preencho os dados do parceiro
  #  E preencho os dados da parceria
    Quando cadastrar novo usu�rio de parceiros
    Entao validar se a conta foi criada com sucesso

  #@CadastroInvalido @GoogleChrome
  #Cenario: Verificar cadastro parcerias MDR e FLEX  com sucesso
  #Quando cadastrar novo usu�rio de parcerias com campos MDR e FLEX op��o <"Sim">
  #Entao validar se a conta foi criada com sucesso
  Cenario: Verificar cadastro com campo nome com valor em branco
    E preencho os dados do parceiro
    Mas preencho o campo <Nome> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo razao social com valor em branco
    E preencho os dados do parceiro
    Mas preencho o campo <RazaoSocial> com valor "Em_BRANCO"
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo CNPJ com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <CNPJ> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo CEP com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <CEP> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo logradouro com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <logradouro> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo n�mero com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <n�mero> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo bairro com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <bairro> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo cidade com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <cidade> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro com campo UF com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <UF> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no bot�o cadastrar parceiro
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro de parcerias com flex obrigatorio
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas seleciono o valor "Sim" no campo Flex
    Mas seleciono o valor "Sim" no campo obrigatorio
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro de parcerias com flex n�o obrigatorio
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Flex" com a op��o "Sim"
    Mas seleciono o valor "Nao" no campo obrigatorio
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro de parcerias com campo Antecipa��o Rede op��o "Sim" e campo Car�ncia op��o "Sim"
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Antecipa��o Rede" com a op��o "Sim"
    Mas seleciono o valor "Sim" no campo Car�ncia
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro de parcerias com campo Antecipa��o Rede op��o "Sim" e campo Car�ncia op��o "Sim"
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Antecipa��o Rede" com a op��o "Sim"
    Mas seleciono o valor "Nao" no campo Car�ncia
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro de parcerias com campo Comunica��o op��o "Sim" e clicar em alguma op��o disponivel.
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Comunica��o" com a op��o "Sim"
    Mas seleciono alguma op��o disponivel
    Entao apresenta mensagem descri��o ""

  Cenario: Verificar cadastro de parcerias com campo Atendimento Central clicar em alguma op��o.
    Quando cadastrar novo usu�rio de parceiros
    E selecionar op��o disponivel "Atendimento Central"
    Entao validar se a conta foi criada com sucesso

  Cenario: Verificar cadastro de parcerias com campo Atua��o clicar em alguma op��o.
    Quando cadastrar novo usu�rio de parceiros
    E selecionar op��o disponivel "Atua��o"
    Entao validar se a conta foi criada com sucesso

  Cenario: Verificar cadastro de parcerias com campo Matriz de Risco com a op��o "Sim"
    Quando cadastrar novo usu�rio de parceiros
    E com campo "Matriz de Risco" com a op��o <"Sim">
    Entao validar se a conta foi criada com sucesso

  Cenario: Verificar cadastro de parcerias com campo Formaliza��o credenciamento com a op��o "Sim" e clicar alguma op��o diponivel.
    Quando cadastrar novo usu�rio de parceiros
    E com campo "Formaliza��o credenciamento" com a op��o <"Sim">
    E selecionar op��o disponivel
    Entao validar se a conta foi criada com sucesso
