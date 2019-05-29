#language: pt
#encoding: UTF-8
Funcionalidade: Consulta

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso

@ConsultaCadastroComSucesso
Cenario: Validar consulta de parceria com CNPJ ja cadastrado 
    E consulto os dados do parceiro com CNPJ ja cadastrado 
    Quando restonar os dados de parceria  
    Entao validar cadastro com sucesso
       