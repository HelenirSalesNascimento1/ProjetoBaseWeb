package steps;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import exceptions.ExceptionUtils;
import funcionalidades.CadastroFuncionalidade;

public class CadastroStep {

	MassaDadosUtils dados = new MassaDadosUtils();

	@Dado("preencho os dados do parceiro")
	public void preenchoOsDadosDoParceiro() throws ExceptionUtils, Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherParceiros();

	}

	@Dado("preencho os dados de parâmetros parceirias")
	public void preenchoOsDadosDeParâmetrosParceirias() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherParêmetrosParceirias();

	}

	@Dado("preencho os dados de condições comerciais")
	public void preenchoOsDadosDeCondiçõesComerciais() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preecherCondiçõesComerciais();
	//	cadastroFuncionalidade.btnContinuarMdr();

	}
	
	@Dado("clico no botão continua")
	public void clicarNoBotãoContinua() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.btnContinuarMdr();
	}

	@Dado("preencho os dados de flex")
	public void preenchoOsDadosDeFlex() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherDadosFlex();

	}

	// @Quando("cadastrar novo usuário de parceiros")
	// public void cadastrarNovoUsuárioDeParceiros() {
	//
	// }
	@Dado("preencho o campo CNPJ {string}")
	public void preenchoOCampoCNPJComValor(String cnpj) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarCnpj(dados.switValue(cnpj));
	}

	@Dado("preencho o campo RAZAO SOCIAL {string}")
	public void preenchoOCampoRAZAOSOCIAL(String razaoSocial) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarRazaoSocial(dados.switValue(razaoSocial));
	}

	@Dado("preencho o campo LOGRADOURO com valor {string}")
	public void preenchoOCampoLOGRADOUROComValor(String logradouro) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarLogradouro(dados.switValue(logradouro));
	}

	@Dado("preencho o campo NUMERO com valor {string}")
	public void preenchoOCampoNUMEROComValor(String numero) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarNumero(dados.switValue(numero));

	}

	@Dado("preencho o campo COMPLEMENTO com valor {string}")
	public void preenchoOCampoCOMPLEMENTOComValor(String complemento) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarComplemento(dados.switValue(complemento));
	}

	@Dado("preencho o campo BAIRRO com valor {string}")
	public void preenchoOCampoBAIRROComValor(String bairro) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarBairro(dados.switValue(bairro));
	}

	@Dado("preencho o campo CIDADE com valor {string}")
	public void preenchoOCampoCIDADEComValor(String cidade) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarCidade(dados.switValue(cidade));
	}

	@Dado("preencho o campo UF com valor {string}")
	public void preenchoOCampoUFComValor(String uf) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherParceirosSemUF();
	}

	@Dado("preencho o campo CEP com valor {string}")
	public void preenchoOCampoCEPComValor(String cep) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarCep(dados.switValue(cep));
	}

   @Dado("preencho o campo Nome Parceiro com valor {string}")
   public void preenchoOCampoNomeParceiroComValor(String nomeParceiro) throws Exception {
	   CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
	   cadastroFuncionalidade.validarNomeParceiro(dados.switValue(nomeParceiro));
	   
  }

	@Dado("preencho os demais campos do parceiros")
	public void preenchoOsDemaisCamposDoParceiros() throws Exception {

	}

	@Dado("validar a lista de MDR com sucesso")
	public void validarAListaDeMDRComSucesso() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarMdrSucesso();
	}

	@Dado("preencho o campo produto com valor {string}")
	public void preenchoOCampoProdutoComValor(String produto) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherMDRSemProduto();
	}

	@Dado("preencho o campo modalidade com valor {string}")
	public void preenchoOCampoModalidadeComValor(String modalidade) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherMDRSemModalidade();
	}

	@Dado("preencho o campo ramo de atividade com valor {string}")
	public void preenchoOCampoRamoDeAtividadeComValor(String ramo) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherMDRSemRamo();
	}

	@Dado("preencho o campo taxa com valor {string}")
	public void preenchoOCampoTaxaComValor(String taxa) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preecherCondiçõesComerciaisSemTaxa(dados.switValue(taxa));
	}

	@Dado("preencho o campo tarifa com valor {string}")
	public void preenchoOCampoTarifaComValor(String tarifa) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preecherCondiçõesComerciaisSemTarifa(dados.switValue(tarifa));
	}

	@Dado("seleciono MDR com campo produto credito e modalidade crediario")
	public void selecionoMDRComCampoProdutoCredito() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherDadosMDR();
	}

	@Dado("seleciono MDR com campo produto credito e modalidade à vista")
	public void selecionoMDRComCampoProdutoCreditoEModalidadeÀVista() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherDadosMDR2();
	}

	@Dado("seleciono MDR com campo produto credito e modalidade com juros")
	public void selecionoMDRComCampoProdutoCreditoEModalidadeComJuros() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preecherDadosMDR3();

	}

	@Dado("seleciono MDR com campo produto credito e modalidade parcelado sem juros")
	public void selecionoMDRComCampoProdutoCreditoEModalidadeParceladoSemJuros() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherDadosMDR4();
	}

	@Dado("seleciono MDR com campo produto débito e modalidade à vista")
	public void selecionoMDRComCampoProdutoDébitoEModalidadeÀVista() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherDadosMDR5();
	}

	@Dado("seleciono MDR com campo produto débito e modalidade parcelado com juros")
	public void selecionoMDRComCampoProdutoDébitoEModalidadeParceladoComJuros() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherDadosMDR6();
	}

	@Dado("seleciono MDR com campo produto debito e modalidade sem juros")
	public void selecionoMDRComCampoProdutoDebitoEModalidadeSemJuros() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preecherDadosMDR7();

	}

	@Dado("seleciono MDR com campo produto débito e modalidade crediario")
	public void selecionoMDRComCampoProdutoDébitoEModalidadeCrediario() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherDadosMDR8();
	}

	@Dado("preencho o campo regime {string}")
	public void preenchoOCampoRegime(String regime) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherCondiçaoComerciaisFlexSemRegime(dados.switValue(regime));
	}

	@Dado("preencho o campo fator{int} {string}")
	public void preenchoOCampoFator(Integer int1, String fator1) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherCondiçaoFlexSemFator1(dados.switValue(fator1));
	}

	@Dado("preencho o campo fatorr{int} {string}")
	public void preenchoOCampoFatorr(Integer int1, String fator2) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherCondicaoFlexSemFator2(dados.switValue(fator2));
	}

	@Dado("preencho o precificação cliente final {string}")
	public void preenchoOPrecificaçãoClienteFinal(String clienteFinal) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherSemClienteFinal();
	}
	@Dado("preencho o propriedade terminal {string}")
	public void preenchoOPropriedadeTerminal(String propriedadeTerminal) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherSemPropriedadeTerminal();
	}
	@Dado("preencho o propriedade aplicação {string}")
	public void preenchoOPropriedadeAplicação(String propriedadeAplicacao) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherSemPropriedadeAplicacao();
	}
	@Dado("preencho o fornecedor da aplicaçao {string}")
	public void preenchoOFornecedorDaAplicaçao(String fornecedorAplicacao) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherSemForncedorAplicaçao(dados.switValue(fornecedorAplicacao));
	}
	@Dado("preencho o marca {string}")
	public void preenchoOMarca(String marca) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.selecionarSemMarca();
		
	}
	@Dado("preencho o atendimento {string}")
	public void preenchoOAtendimento(String centralAtendimento) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.selecionarSemCampoCentralAtendimento();
	}
	@Dado("preencho os MDR com campo campo taxa negativo")
	public void preenchoOsMDRComCampoCampoTaxaNegativo() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherTaxaNegativo();
	}
	@Dado("preencho os MDR com campo campo taxa zerado")
	public void preenchoOsMDRComCampoCampoTaxaZerado() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherTaxaZerada();
	}
	@Dado("preencho os MDR com campo campo taxa tarifa negativo")
	public void preenchoOsMDRComCampoCampoTaxaTarifa() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherTarifaNegativo();
			
	}
	@Dado("preencho os MDR com campo campo fator{int} negativo")
	public void preenchoOsMDRComCampoCampoFatorNegativo(Integer int1) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherFator1Negativo();
		
	}
	@Dado("preencho os MDR com campo campo fator{int} zerado")
	public void preenchoOsMDRComCampoCampoFatorZerado(Integer int1) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherFator1Zerado();
	}
	
	@Dado("preencho os MDR com campo fator{int} negativo")
	public void preenchoOsMDRComCampoFatorNegativo(Integer int1) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherFator2Negativo();
	}

	@Dado("preencho os MDR com campo fator{int} zerado")
	public void preenchoOsMDRComCampoFatorZerado(Integer int1) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherFator2Zerado();
	}
	@Dado("preencho os dados de parâmetros parceirias canal de venda {string}")
	public void preenchoOsDadosDeParâmetrosParceiriasCanalDeVenda(String canalVenda) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarCanalVenda();
	}
	@Dado("preencho os dados de parâmetros parceirias maximo itens comunicação")
	public void preenchoOsDadosDeParâmetrosParceiriasMaximoItensComunicação() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.comunicacaoMaximoItem();
	} 
	@Dado("preencho os dados de parâmetros parceirias maximo itens atuação")
	public void preenchoOsDadosDeParâmetrosParceiriasMaximoItensAtuação() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.atuacaoMaximoItem();
	}
	
	@Dado("preencho os dados de parâmetros parceirias maximo itens canal de venda")
	public void preenchoOsDadosDeParâmetrosParceiriasMaximoItensCanalDeVenda() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.canalVendaMaximoItem();
		
	}
	@Dado("preencho o canal de venda {string}")
	public void preenchoOCanalDeVenda(String canalVenda) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherCanalVendaEmBranco();
		
	}
	@Dado("preencho o comunicação {string}")
	public void preenchoOComunicação(String comunicacao) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preecherComunicacaoEmBranco();
	}
	@Dado("preencho o atuação {string}")
	public void preenchoOAtuação(String atuacao) throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preecherAtuacaoEmBranco();
		
	}
	@Dado("preencho outro cnpj")
	public void preenchoOutroCnpj() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherOutroCNPJ();
	}

	@Dado("com mesmo endereço anteriomente")
	public void comMesmoEndereçoAnteriomente() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.preencherComMesmoEndereçoAnteriomente();
	}
	@Quando("clicar no botão cadastrar novo usuário de parceiros")
	public void clicarNoBotãoCadastrarNovoUsuárioDeParceiros() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.btnCadastrarParceiro();
	}

	@Entao("validar se a conta foi criada com sucesso")
	public void validarSeAContaFoiCriadaComSucesso() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarMsgDeCadastroComSucesso();		
	}
	
	@Quando("clicar no botão continuar")
	public void clicarNoBotãoContinuar() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.btnContinuarCadastroParceiro();
	}

	@Então("apresentar mensagem de erro")
	public void apresentarMensagemDeErro() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.validarMsgDeErro();
	}
	@Quando("clico no botão adicionar produto")
	public void clicoNoBotãoAdicionarProduto() throws Exception {
		CadastroFuncionalidade cadastroFuncionalidade = new CadastroFuncionalidade();
		cadastroFuncionalidade.btnAdicionarProduto();
	}

//	@Então("nao deixar selecionar produto")
//	public void naoDeixarSelecionarProduto() {
//	    // Write code here that turns the phrase above into concrete actions
//	    throw new PendingException();
//	}





	

}
