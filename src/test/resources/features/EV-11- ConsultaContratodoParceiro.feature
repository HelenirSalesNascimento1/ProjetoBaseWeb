#language: pt
#encoding: iso-8859-1
Funcionalidade: Cadastro

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos

@ConsultaCadastroComSucesso
Cenario: Validar consulta de parceria cadastrado com sucesso 
    E consulto os dados do parceiro com CNPJ ja cadastrado 
    Quando restonar os dados de parceria 
    Entao validar cadastro com sucesso
     