#language: pt
#encoding: UTF-8
@GoogleChrome
Funcionalidade: Isenção taxa de conectividade dos PVs BaviPag


  Cenario: Verificar isenção de taxa com tipo de equipamento POS com código de serviço 1 (Aluguel)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento POS com código 1
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa com tipo de equipamento POS com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento POS com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa de PV não isento com tipo de equipamento PDV com código de serviço 1 (Aluguel)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 1
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa de PV isento com tipo de equipamento PDV com código de serviço 1 (Aluguel)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 1
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa de PV isento com tipo de equipamento PDV com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa de PV não isento com tipo de equipamento PDV com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados alterados

  Cenario: Verificar isenção de taxa com canal e celula incorretos de PV não isento com tipo de equipamento PDV com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa com canal e celula incorretos de PV isento com tipo de equipamento PDV com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa de PV isento por tempo determinado com tipo de equipamento PDV com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados alterado

  Cenario: Verificar isenção de taxa com celula incorreta de PV não isento com tipo de equipamento PDV com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração

  Cenario: Verificar isenção de taxa com canal incorreto de PV não isento com tipo de equipamento PDV com código de serviço 2 (Conectividade)
    Dado que acesso o rumba via Web
    E que acesso a aplicação CIDES21D
    E que informo um usuário válido
    E que entro no menu de 05 Aluguel de Tecnologia
    E que seleciono o menu PVS / TERMINAL
    E que entro na opção Consulta PVS / TERMINAIS
    E que tenho um PV de equipamento PDV com código 2
    Quando realizo a busca do PV
    Então exibe o PV com os dados sem alteração
