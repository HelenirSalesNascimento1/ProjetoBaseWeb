#language: pt
#encoding: UTF-8
@GoogleChrome @login
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
    #Entao validar que a conta n�o foi conectada
#
  #@LoginSenhaInvalido 
  #Cenario: validar tela login com senha invalida 
    #Quando login com usu�rio v�lido e senha inv�lida
    #Entao validar que a conta n�o foi conectada
#
  #@LoginSemUsuario
  #Cenario: validar tela login sem usuario em branco
    #Quando login sem usu�rio "Em_BRANCO"
    #Entao validar que a conta n�o foi conectada
#
  #@LoginSemSenha
  #Cenario: validar tela login sem senha
    #Quando login sem senha "Em_BRANCO"
    #Entao validar que a conta n�o foi conectada
