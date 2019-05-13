#language: pt
#encoding: iso-8859-1
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros

  @CadastroValido @GoogleChrome
  Cenario: Verificar cadastro de parcerias com todos os campos obrigatório com sucesso
    E preencho os dados do parceiro
  #  E preencho os dados da parceria
    Quando cadastrar novo usuário de parceiros
    Entao validar se a conta foi criada com sucesso

  #@CadastroInvalido @GoogleChrome
  #Cenario: Verificar cadastro parcerias MDR e FLEX  com sucesso
  #Quando cadastrar novo usuário de parcerias com campos MDR e FLEX opção <"Sim">
  #Entao validar se a conta foi criada com sucesso
  Cenario: Verificar cadastro com campo nome com valor em branco
    E preencho os dados do parceiro
    Mas preencho o campo <Nome> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo razao social com valor em branco
    E preencho os dados do parceiro
    Mas preencho o campo <RazaoSocial> com valor "Em_BRANCO"
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo CNPJ com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <CNPJ> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo CEP com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <CEP> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo logradouro com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <logradouro> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo número com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <número> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo bairro com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <bairro> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo cidade com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <cidade> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro com campo UF com valor branco
    E preencho os dados do parceiro
    Mas preencho o campo <UF> com valor "Em_BRANCO"]
    E preencho os dados da parceria
    Quando clico no botão cadastrar parceiro
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro de parcerias com flex obrigatorio
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas seleciono o valor "Sim" no campo Flex
    Mas seleciono o valor "Sim" no campo obrigatorio
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro de parcerias com flex não obrigatorio
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Flex" com a opção "Sim"
    Mas seleciono o valor "Nao" no campo obrigatorio
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro de parcerias com campo Antecipação Rede opção "Sim" e campo Carência opção "Sim"
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Antecipação Rede" com a opção "Sim"
    Mas seleciono o valor "Sim" no campo Carência
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro de parcerias com campo Antecipação Rede opção "Sim" e campo Carência opção "Sim"
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Antecipação Rede" com a opção "Sim"
    Mas seleciono o valor "Nao" no campo Carência
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro de parcerias com campo Comunicação opção "Sim" e clicar em alguma opção disponivel.
    E preencho os dados do parceiro
    E preencho os dados da parceria
    Mas "Comunicação" com a opção "Sim"
    Mas seleciono alguma opção disponivel
    Entao apresenta mensagem descrição ""

  Cenario: Verificar cadastro de parcerias com campo Atendimento Central clicar em alguma opção.
    Quando cadastrar novo usuário de parceiros
    E selecionar opção disponivel "Atendimento Central"
    Entao validar se a conta foi criada com sucesso

  Cenario: Verificar cadastro de parcerias com campo Atuação clicar em alguma opção.
    Quando cadastrar novo usuário de parceiros
    E selecionar opção disponivel "Atuação"
    Entao validar se a conta foi criada com sucesso

  Cenario: Verificar cadastro de parcerias com campo Matriz de Risco com a opção "Sim"
    Quando cadastrar novo usuário de parceiros
    E com campo "Matriz de Risco" com a opção <"Sim">
    Entao validar se a conta foi criada com sucesso

  Cenario: Verificar cadastro de parcerias com campo Formalização credenciamento com a opção "Sim" e clicar alguma opção diponivel.
    Quando cadastrar novo usuário de parceiros
    E com campo "Formalização credenciamento" com a opção <"Sim">
    E selecionar opção disponivel
    Entao validar se a conta foi criada com sucesso
