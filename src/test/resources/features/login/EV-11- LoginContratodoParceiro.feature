#language: pt
#encoding: UTF-8
@GoogleChrome @loginRegressivo @generate-word
Funcionalidade: Login

  Contexto: 
    Dado acesso ao portal Parceiros

  @LoginSucesso 
  Cenario: validar tela login com usuario e senha validos
    Quando entro com usuario e senha validos
    Entao validar conta conectada com sucesso

  @LoginUsuarioInvalido
  Cenario: validar tela login com usuario invalido
    Quando entro com usuario invalido e senha valida
    Entao validar mensagem sem sucesso

  @LoginSenhaInvalido 
  Cenario: validar tela login com senha invalida 
    Quando entro com usuario valido e senha invalida
    Entao validar mensagem sem sucesso

  @LoginSemUsuario
  Cenario: validar tela login sem usuario em branco
    Quando login sem usuario "Em_BRANCO"
    Entao mensagem de error

  @LoginSemSenha
  Cenario: validar tela login sem senha
    Quando login sem senha "Em_BRANCO"
    Entao validar mensagem sem sucesso
