#language: pt
#encoding: UTF-8
@GoogleChrome
Funcionalidade: Login

  Contexto: 
    Dado acesso ao portal Parceiros
 
  @LoginSucesso
  Cenario: validar tela login com usuario e senha validos 
    Quando entro com usuario e senha validos  
    Entao validar conta conectada com sucesso    

  #@LoginUsuarioInvalido
  #Cenario: validar tela login com usuario invalido
    #Quando entro com usuario invalido e senha valida
    #Entao validar que a conta não foi conectada
#
  #@LoginSenhaInvalido 
  #Cenario: validar tela login com senha invalida 
    #Quando login com usuário válido e senha inválida
    #Entao validar que a conta não foi conectada
#
  #@LoginSemUsuario
  #Cenario: validar tela login sem usuario em branco
    #Quando login sem usuário "Em_BRANCO"
    #Entao validar que a conta não foi conectada
#
  #@LoginSemSenha
  #Cenario: validar tela login sem senha
    #Quando login sem senha "Em_BRANCO"
    #Entao validar que a conta não foi conectada
