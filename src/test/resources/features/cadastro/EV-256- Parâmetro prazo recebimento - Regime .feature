#language: pt
#encoding: UTF-8
@GoogleChrome @RegressivoCadastroRegime
Funcionalidade: Cadastro Regime  

  Contexto: 
    Dado acesso ao portal Parceiros
    E entro com usuario e senha validos
    E validar conta conectada com sucesso 
 
  @MDRregimeBranco @testesNegativo  
  Cenario: Verificar cadastro com campo regime em branco 
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias 
    E preencho o campo regime mdr com valor "Em_BRANCO"
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo de liquidacao obrigatorio
  
  @MDRRegimeZerado @testesNegativo 
  Cenario: Verificar cadastro com campo regime zerado 
    E preencho os dados do parceiro 
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho o campo regime mdr zerado
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo liquidacao obrigatorio
    
  @MDRRegimeNegativoCadastro @testesNegativo 
  Cenario: Verificar cadastro com campo regime negativo  
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho o campo regime mdr negativo
    Mas preencho os demais campos do parceiros
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo liquidacao obrigatorio
    
  @MDRRegimeValorAcimaDoPermitido @testesNegativo 
  Cenario: Verificar cadastro com campo regime valor acima do permitido 
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E preencho os MDR com campo regime valor acima do permitido 
    Quando clico no botao adicionar produto
    Entao apresentar mensagem de erro campo prazo liquidacao obrigatorio
    
  @MDRMesmoRamo   @testesNegativo 
  Cenario: Verificar cadastro de parceria com várias condições MDR no mesmo ramo de atividade com o mesmo valor no campo prazo
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E que tenho mesmo ramo de atividade 
    E preencho os MDR com campo regime com mesmo valor prazo 
    Quando clico no botao adicionar produto
    Entao apresentar mensagem que ja existe MDR cadastrado
  
  @MDRMesmoRamoValoresDiferentes @testesPositivo
  Cenario: Verificar cadastro de parceria com várias condições MDR no mesmo ramo de atividade com valores diferentes no campo prazo
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E que tenho mesmo ramo de atividade 
    E preencho os MDR com campo regime com mesmo valores diferentes
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR
  
  @MDRVariosRamoMesmoValor @testesPositivo
  Cenario: Verificar cadastro de parceria com várias condições MDR em vários ramos de atividade com o mesmo valor no campo prazo
    E preencho os dados do parceiro
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E que tenho varios ramo de atividade
    E preencho os MDR com campo regime com mesmo valor 
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR
   
  @MDRVariosRamosValoresDiferentes @testePositivo 
  Cenario: Verificar cadastro de parceria com várias condições MDR em vários ramos de atividade com valores diferentes no campo prazo  
    E preencho os dados do parceiro        
    E clicar no botao continuar
    E preencho os dados de parametros parceirias
    E clicar no botao continuar parametro de parceirias
    E que tenho varios ramo de atividade
    E preencho os MDR com campo regime com valores diferente no campo 
    Quando clico no botao adicionar produto
    Entao validar a lista de MDR
    
    @telefoneEmBRanco
    Cenario: Verificar cadastro com campo telefone em branco
    E preencho o campo telefone "Em_BRANCO"
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao
    
    @telefoneNegativo
    Cenario: Verificar cadastro com campo telefone negativo 
    E preencho o campo telefone negativo 
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao
     
    @telefoneZerado 
    Cenario: Verificar cadastro com campo telefone zerado
    E preencho o campo telefone zerado 
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao
     
    @emailEmBranco 
    Cenario: Verificar cadastro com campo email em branco
    E preencho o campo email "Em_BRANCO"
    Quando preencho os demais campos do parceiros
    Entao nao habilitar o botao
     
    
      