# language: pt
# encoding: UTF-8

@GoogleChrome @loginRegressivo @generate-word @SeuBarriga
Funcionalidade: Acessa tela de login 

  Contexto: 
    Dado acesso ao portal seu barriga

  @LoginSucessoSeuBarriga 
  Cenario: validar tela com sucesso 
    Quando preencho os campos usuario e senha validos
    E clico no botao entrar seu barriga
    Entao valida mesangem com sucesso seu barriga

 @loginInvalido
 Cenario: Validar tela de login invalido
    Quando preencho o login invalido 
    E valido senha valida 
    E clico no botao entrar seu barriga 
    Entao apresentar mensagem invalida 
 
 @SenhaInvalida   
 Cenario: Valida tela senha invalida
   Quando preencho o login valido 
   E valido senha invalida 
   E clico no botao entrar seu barriga 
   Entao apresentar mensagem invalida senha 
     
