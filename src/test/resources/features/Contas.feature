# language: pt
# encoding: UTF-8
@PageContas
Funcionalidade: Verificar Bloqueio de Certificado

  Contexto: 
    Dado dado que estou na página inicial do sistema
    E estou logado

  @LoginSuccess @GoogleChrome
  Cenario: Verificar Login realizado com sucesso
    E acesso o submenu "Adiconar" do menu Contas
    E adiciono uma conta
    Entao a mensagem de conta adicionada é exibida
