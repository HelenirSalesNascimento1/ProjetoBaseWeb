
#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Login

  Contexto: 
    Dado acesso ao portal Seu Barriga  

  #@LoginValido @generate-word
  #Cenario: Acessar site Seu barriga com usuario e senha validos
    #Quando login com usu�rio e senha v�lidos   
    #Entao validar conta conectada com sucesso  
#
  #@LoginUsuarioInvalido
  #Cenario: Acessar site Seu barriga com usuario invalido
    #Quando login com usu�rio inv�lido e senha v�lida
    #Entao validar que a conta n�o foi conectada
#
  #@LoginSenhaInvalido 
  #Cenario: Acessar site Seu barriga com senha invalida
    #Quando login com usu�rio v�lido e senha inv�lida
    #Entao validar que a conta n�o foi conectada
#
  #@LoginSemUsuario
  #Cenario: Acessar site Seu barriga sem usuario
    #Quando login sem usu�rio
    #Entao validar que a conta n�o foi conectada
#
  #@LoginSemSenha
  #Cenario: Acessar site Seu barriga sem senha
    #Quando login sem senha
    #Entao validar que a conta n�o foi conectada
