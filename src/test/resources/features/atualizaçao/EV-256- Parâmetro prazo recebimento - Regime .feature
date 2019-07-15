#language: pt
#encoding: UTF-8
@GoogleChrome @RegressivoAtualizacao
Funcionalidade: Atualização Regime  

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso
 
  @AtualizacaoMDRregimeBranco
  Cenario: Verificar atualizacao com campo regime em branco 
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E preencho o campo regime mdr com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo de liquidacao obrigatorio
  
  @AtualizacaoMDRRegimeZerado
  Cenario: Verificar atualizacao com campo regime zerado 
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E preencho o campo regime mdr zerado
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo liquidacao obrigatorio
    
  @MDRRegimeNegativo @testesNegativo 
  Cenario: Verificar atualizacao com campo regime negativo  
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E preencho o campo regime mdr negativo
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo liquidacao obrigatorio
    
  @AtualizacaoMDRRegimeValorAcima
  Cenario: Verificar atualizacao com campo regime valor acima do permitido 
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E preencho os MDR com campo regime valor acima do permitido 
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo liquidacao obrigatorio
    
  @AtualizacaoMDRMesmoRamo  
  Cenario: Verificar atualizacao de parceria com várias condições MDR no mesmo ramo de atividade com o mesmo valor no campo prazo
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E que tenho mesmo ramo de atividade 
    E preencho os MDR com campo regime com mesmo valor prazo 
    Quando clico no botao adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado
  
  @AtualizacaoMDRMesmoRamoValoresDiferentes
  Cenario: Verificar atualizacao de parceria com várias condições MDR no mesmo ramo de atividade com valores diferentes no campo prazo
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E que tenho mesmo ramo de atividade 
    E preencho os MDR com campo regime com mesmo valores diferentes
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR
  
  @AtualizacaoMDRVariosRamoMesmoValor
  Cenario: Verificar atualizacao de parceria com várias condições MDR em vários ramos de atividade com o mesmo valor no campo prazo
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E que tenho varios ramo de atividade
    E preencho os MDR com campo regime com mesmo valor 
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR
  
  @AtualizacaoMDRVariosRamosValoresDiferentes
  Cenario: Verificar atualizacao de parceria com várias condições MDR em vários ramos de atividade com valores diferentes no campo prazo  
    E que cadastro uma parceria
    #E acesso ao portal Parceiros
    #E entro com usuario e senha validos
    E que carrego os dados da parceria cadastrada
    E clico condicoes comerciais
    E que tenho varios ramo de atividade
    E preencho os MDR com campo regime com valores diferente no campo 
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR