#language: pt
#encoding: UTF-8
Funcionalidade: Consulta

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

@ConsultaCadastroComSucesso
Cenario: Validar consulta de parceria com CNPJ ja cadastrado 
    E que cadastro uma parceria
    E acesso ao portal Parceiros
    E entro com usuario e senha validos
    Quando que carrego os dados da parceria cadastrada
    Entao validar cadastro com sucesso
       