
#language: pt
#encoding: iso-8859-1
@GoogleChrome
Funcionalidade: Login

  Contexto: 
    Dado acesso ao portal Seu Barriga  

  #@LoginValido @generate-word
  #Cenario: Acessar site Seu barriga com usuario e senha validos
    #Quando login com usuário e senha válidos   
    #Entao validar conta conectada com sucesso  
#
  #@LoginUsuarioInvalido
  #Cenario: Acessar site Seu barriga com usuario invalido
    #Quando login com usuário inválido e senha válida
    #Entao validar que a conta não foi conectada
#
  #@LoginSenhaInvalido 
  #Cenario: Acessar site Seu barriga com senha invalida
    #Quando login com usuário válido e senha inválida
    #Entao validar que a conta não foi conectada
#
  #@LoginSemUsuario
  #Cenario: Acessar site Seu barriga sem usuario
    #Quando login sem usuário
    #Entao validar que a conta não foi conectada
#
  #@LoginSemSenha
  #Cenario: Acessar site Seu barriga sem senha
    #Quando login sem senha
    #Entao validar que a conta não foi conectada
