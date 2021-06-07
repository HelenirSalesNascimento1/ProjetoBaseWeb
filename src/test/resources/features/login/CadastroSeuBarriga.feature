# language: pt
# encoding: UTF-8

@GoogleChrome @loginRegressivo @generate-word @SeuBarriga
Funcionalidade: Acessa tela de cadastro 

  Contexto: 
    Dado acesso ao portal seu barriga

  @LoginCadastroSucessoSeuBarriga 
  Cenario: validar cadastro com sucesso  
    E clico no botao novo usuario
    Quando preencho os dados validos
    E clico no botao cadastrar usuario 
    Entao apresentar mensagem cadastro com sucesso 

 @CadastroEmailInvalido
 Cenario: Validar cadastro de login invalido
    E clico no botao novo usuario 
    E preencho login invalido 
    E preencho senha valida 
    E preencho nome valido 
    Quando clico no botao cadastrar usuario  
    Entao apresentar mensagem email invalido
 
 @CadastroSenhaInvalida   
 Cenario: Valida cadastro senha invalida
   E clico no botao novo usuario
   E preencho login valido 
   E valido senha invalida 
   E preencho nome valido 
   Quando clico no botao cadastrar usuario  
   Entao apresentar mensagem senha invalido

 @cadastroNomeInvalido  
 Cenario: Validar cadastro nome invalido
   E clico no botao novo usuario
   E preencho login valido 
   E preencho senha valida  
   E valido nome ivalido 
   Quando clico no botao cadastrar usuario 
   Entao apresentar mensagem nome invalido  
     
