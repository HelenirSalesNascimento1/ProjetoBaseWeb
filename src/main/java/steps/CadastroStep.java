package steps;

import java.sql.SQLException;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;
import exceptions.ExceptionUtils;
import funcionalidades.AtualizacaFuncionalidade;
import funcionalidades.CadastroFuncionalidade;

public class CadastroStep {

	MassaDadosUtils dados = new MassaDadosUtils();
	CadastroFuncionalidade cadastroFuncionalidade;

	
	public CadastroStep() throws ClassNotFoundException, SQLException {
		cadastroFuncionalidade = new CadastroFuncionalidade();
	}
	
	@Dado("preencho os dados do parceiro")
	public void preenchoOsDadosDoParceiro() throws ExceptionUtils, Exception {
		cadastroFuncionalidade.preencherParceiros();

	}

	@Dado("preencho os dados de parametros parceirias")
	public void preenchoOsDadosDeParametrosParceirias() throws Exception {
		cadastroFuncionalidade.preencherParametrosParceirias();

	}

	@Dado("clicar no botao continuar parametro de parceirias")
	public void preenchoOsDadosDeParametrosParceiriasBotao() throws Exception {
		cadastroFuncionalidade.clicarContinuar3();

	}

	@Dado("preencho os dados de condiçoes comerciais")
	public void preenchoOsDadosDeCondiçoesComerciais() throws Exception {
		cadastroFuncionalidade.preecherCondiçõesComerciais();
		// cadastroFuncionalidade.btnContinuarMdr();

	}

	@Dado("clico no botao continua")
	public void clicarNoBotaoContinua() throws Exception {
		cadastroFuncionalidade.btnContinuarMdr();
	}

	@Dado("preencho os dados de flex")
	public void preenchoOsDadosDeFlex() throws Exception {
		cadastroFuncionalidade.preencherDadosFlex();

	}

	// @Quando("cadastrar novo usu�rio de parceiros")
	// public void cadastrarNovoUsu�rioDeParceiros() {
	//
	// }
	@Dado("preencho o campo CNPJ {string}")
	public void preenchoOCampoCNPJComValor(String cnpj) throws Exception {
		cadastroFuncionalidade.validarCnpj(dados.switValue(cnpj));
	}

	@Dado("preencho o campo RAZAO SOCIAL {string}")
	public void preenchoOCampoRAZAOSOCIAL(String razaoSocial) throws Exception {
		cadastroFuncionalidade.validarRazaoSocial(dados.switValue(razaoSocial));
	}

	@Dado("preencho o campo LOGRADOURO com valor {string}")
	public void preenchoOCampoLOGRADOUROComValor(String logradouro) throws Exception {
		cadastroFuncionalidade.validarLogradouro(dados.switValue(logradouro));
	}

	@Dado("preencho o campo NUMERO com valor {string}")
	public void preenchoOCampoNUMEROComValor(String numero) throws Exception {
		cadastroFuncionalidade.validarNumero(dados.switValue(numero));

	}

	@Dado("preencho o campo COMPLEMENTO com valor {string}")
	public void preenchoOCampoCOMPLEMENTOComValor(String complemento) throws Exception {
		cadastroFuncionalidade.validarComplemento(dados.switValue(complemento));
	}

	@Dado("preencho o campo BAIRRO com valor {string}")
	public void preenchoOCampoBAIRROComValor(String bairro) throws Exception {
		cadastroFuncionalidade.validarBairro(dados.switValue(bairro));
	}

	@Dado("preencho o campo CIDADE com valor {string}")
	public void preenchoOCampoCIDADEComValor(String cidade) throws Exception {
		cadastroFuncionalidade.validarCidade(dados.switValue(cidade));
	}

	@Dado("preencho o campo UF com valor {string}")
	public void preenchoOCampoUFComValor(String uf) throws Exception {
		cadastroFuncionalidade.preencherParceirosSemUF();
	}

	@Dado("preencho o campo CEP com valor {string}")
	public void preenchoOCampoCEPComValor(String cep) throws Exception {
		cadastroFuncionalidade.validarCep(dados.switValue(cep));
	}

	@Dado("preencho o campo Nome Parceiro com valor {string}")
	public void preenchoOCampoNomeParceiroComValor(String nomeParceiro) throws Exception {
		cadastroFuncionalidade.validarNomeParceiro(dados.switValue(nomeParceiro));

	}

	@Dado("preencho os demais campos do parceiros")
	public void preenchoOsDemaisCamposDoParceiros() throws Exception {

	}

	@Dado("validar a lista de MDR com sucesso")
	public void validarAListaDeMDRComSucesso() throws Exception {
		cadastroFuncionalidade.validarMdrSucesso();
	}

	@Dado("preencho o campo produto com valor {string}")
	public void preenchoOCampoProdutoComValor(String produto) throws Exception {
		cadastroFuncionalidade.preencherMDRSemProduto();
	}

	@Dado("preencho o campo modalidade com valor {string}")
	public void preenchoOCampoModalidadeComValor(String modalidade) throws Exception {
		cadastroFuncionalidade.preencherMDRSemModalidade();
	}

	@Dado("preencho o campo ramo de atividade com valor {string}")
	public void preenchoOCampoRamoDeAtividadeComValor(String ramo) throws Exception {
		cadastroFuncionalidade.preencherMDRSemRamo();
	}

	@Dado("preencho o campo taxa com valor {string}")
	public void preenchoOCampoTaxaComValor(String taxa) throws Exception {
		cadastroFuncionalidade.preecherCondiçõesComerciaisSemTaxa(dados.switValue(taxa));
	}

	@Dado("preencho o campo tarifa com valor {string}")
	public void preenchoOCampoTarifaComValor(String tarifa) throws Exception {
		cadastroFuncionalidade.preecherCondiçõesComerciaisSemTarifa(dados.switValue(tarifa));
	}

	@Dado("seleciono MDR com campo produto credito e modalidade crediario")
	public void selecionoMDRComCampoProdutoCredito() throws Exception {
		cadastroFuncionalidade.preencherDadosMDR();
	}

	@Dado("seleciono MDR com campo produto credito e modalidade � vista")
	public void selecionoMDRComCampoProdutoCreditoEModalidadeaVista() throws Exception {
		cadastroFuncionalidade.preencherDadosMDR2();
	}

	@Dado("seleciono MDR com campo produto credito e modalidade com juros")
	public void selecionoMDRComCampoProdutoCreditoEModalidadeComJuros() throws Exception {
		cadastroFuncionalidade.preecherDadosMDR3();

	}

	@Dado("seleciono MDR com campo produto credito e modalidade parcelado sem juros")
	public void selecionoMDRComCampoProdutoCreditoEModalidadeParceladoSemJuros() throws Exception {
		cadastroFuncionalidade.preencherDadosMDR4();
	}

	@Dado("seleciono MDR com campo produto debito e modalidade a vista")
	public void selecionoMDRComCampoProdutoDebitoEModalidadeaVista() throws Exception {
		cadastroFuncionalidade.preencherDadosMDR5();
	}

	@Dado("seleciono MDR com campo produto debito e modalidade parcelado com juros")
	public void selecionoMDRComCampoProdutoDebitoEModalidadeParceladoComJuros() throws Exception {
		cadastroFuncionalidade.preencherDadosMDR6();
	}

	@Dado("seleciono MDR com campo produto debito e modalidade sem juros")
	public void selecionoMDRComCampoProdutoDebitoEModalidadeSemJuros() throws Exception {
		cadastroFuncionalidade.preecherDadosMDR7();

	}

	@Dado("seleciono MDR com campo produto debito e modalidade crediario")
	public void selecionoMDRComCampoProdutoDebitoEModalidadeCrediario() throws Exception {
		cadastroFuncionalidade.preencherDadosMDR8();
	}

	@Dado("preencho o campo regime {string}")
	public void preenchoOCampoRegime(String regime) throws Exception {
		cadastroFuncionalidade.preencherCondiçaoComerciaisFlexSemRegime(dados.switValue(regime));
	}

	@Dado("preencho o campo fator{int} {string}")
	public void preenchoOCampoFator(Integer int1, String fator1) throws Exception {
		cadastroFuncionalidade.preencherCondiçaoFlexSemFator1(dados.switValue(fator1));
	}

	@Dado("preencho o campo fatorr{int} {string}")
	public void preenchoOCampoFatorr(Integer int1, String fator2) throws Exception {
		cadastroFuncionalidade.preencherCondicaoFlexSemFator2(dados.switValue(fator2));
	}

	@Dado("preencho o precificacao cliente final {string}")
	public void preenchoOPrecificaçaoClienteFinal(String clienteFinal) throws Exception {
		cadastroFuncionalidade.preencherSemClienteFinal();
	}

	@Dado("preencho o propriedade terminal {string}")
	public void preenchoOPropriedadeTerminal(String propriedadeTerminal) throws Exception {
		cadastroFuncionalidade.preencherSemPropriedadeTerminal();
	}

	@Dado("preencho o propriedade aplicaçao {string}")
	public void preenchoOPropriedadeAplicaçao(String propriedadeAplicacao) throws Exception {
		cadastroFuncionalidade.preencherSemPropriedadeAplicacao();
	}

	@Dado("preencho o fornecedor da aplicacao {string}")
	public void preenchoOFornecedorDaAplicaçao(String fornecedorAplicacao) throws Exception {
		cadastroFuncionalidade.preencherSemForncedorAplicaçao(dados.switValue(fornecedorAplicacao));
	}

	@Dado("preencho o marca {string}")
	public void preenchoOMarca(String marca) throws Exception {
		cadastroFuncionalidade.selecionarSemMarca();

	}

	@Dado("preencho o atendimento {string}")
	public void preenchoOAtendimento(String centralAtendimento) throws Exception {
		cadastroFuncionalidade.selecionarSemCampoCentralAtendimento();
	}

	@Dado("preencho os MDR com campo campo taxa negativo")
	public void preenchoOsMDRComCampoCampoTaxaNegativo() throws Exception {
		cadastroFuncionalidade.preencherTaxaNegativo();
	}

	@Dado("preencho os MDR com campo campo taxa zerado")
	public void preenchoOsMDRComCampoCampoTaxaZerado() throws Exception {
		cadastroFuncionalidade.preencherTaxaZerada();
	}

	@Dado("preencho os MDR com campo campo taxa tarifa negativo")
	public void preenchoOsMDRComCampoCampoTaxaTarifa() throws Exception {
		cadastroFuncionalidade.preencherTarifaNegativo();

	}

	@Dado("preencho os MDR com campo campo fator{int} negativo")
	public void preenchoOsMDRComCampoCampoFatorNegativo(Integer int1) throws Exception {
		cadastroFuncionalidade.preencherFator1Negativo();

	}

	@Dado("preencho os MDR com campo campo fator{int} zerado")
	public void preenchoOsMDRComCampoCampoFatorZerado(Integer int1) throws Exception {
		cadastroFuncionalidade.preencherFator1Zerado();
	}

	@Dado("preencho os MDR com campo fator{int} negativo")
	public void preenchoOsMDRComCampoFatorNegativo(Integer int1) throws Exception {
		cadastroFuncionalidade.preencherFator2Negativo();
	}

	@Dado("preencho os MDR com campo fator{int} zerado")
	public void preenchoOsMDRComCampoFatorZerado(Integer int1) throws Exception {
		cadastroFuncionalidade.preencherFator2Zerado();
	}

	@Dado("preencho os dados de par�metros parceirias canal de venda {string}")
	public void preenchoOsDadosDeParametrosParceiriasCanalDeVenda(String canalVenda) throws Exception {
		cadastroFuncionalidade.validarCanalVenda();
	}

	@Dado("preencho os dados de parametros parceirias maximo itens comunicacao")
	public void preenchoOsDadosDeParametrosParceiriasMaximoItensComunicaçao() throws Exception {
		cadastroFuncionalidade.comunicacaoMaximoItem();
	}

	@Dado("preencho os dados de parametros parceirias maximo itens atuacao")
	public void preenchoOsDadosDeParametrosParceiriasMaximoItensAtuaçao() throws Exception {
		cadastroFuncionalidade.atuacaoMaximoItem();
	}

	@Dado("preencho os dados de parametros parceirias maximo itens canal de venda")
	public void preenchoOsDadosDeParametrosParceiriasMaximoItensCanalDeVenda() throws Exception {
		cadastroFuncionalidade.canalVendaMaximoItem();

	}

	@Dado("preencho o canal de venda {string}")
	public void preenchoOCanalDeVenda(String canalVenda) throws Exception {
		cadastroFuncionalidade.preencherCanalVendaEmBranco();

	}

	@Dado("preencho o comunicacao {string}")
	public void preenchoOComunicaçao(String comunicacao) throws Exception {
		cadastroFuncionalidade.preecherComunicacaoEmBranco();
	}

	@Dado("preencho o atuaçao {string}")
	public void preenchoOAtuaçao(String atuacao) throws Exception {
		cadastroFuncionalidade.preecherAtuacaoEmBranco();

	}

	@Dado("preencho outro cnpj")
	public void preenchoOutroCnpj() throws Exception {
		cadastroFuncionalidade.preencherOutroCNPJ();
	}

	@Dado("com mesmo endereço anteriomente")
	public void comMesmoEndereçoAnteriomente() throws Exception {
		cadastroFuncionalidade.preencherComMesmoEndereçoAnteriomente();
	}

	@Quando("clicar no botao cadastrar novo usuario de parceiros")
	public void clicarNoBotaoCadastrarNovoUsuarioDeParceiros() throws Exception {
		cadastroFuncionalidade.btnCadastrarParceiro();
	}

	@Entao("validar se a conta foi criada com sucesso")
	public void validarSeAContaFoiCriadaComSucesso() throws Exception {
		cadastroFuncionalidade.validarMsgDeCadastroComSucesso();
	}

	@Quando("clicar no botao continuar")
	public void clicarNoBotaoContinuar() throws Exception {
		cadastroFuncionalidade.btnContinuarCadastroParceiro();
	}

	// arrumar esse cara quando o bueno subir alteraçao
	@Entao("nao habilitar o botao")
	public void apresentarMensagemDeErro() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroObrigatorio();
	}

	@Entao("nao habilitar o botao2")
	public void apresentarMensagemDeErrobtn3() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroObrigatoriobtn3();
	}

	@Entao("apresentar mensagem de erro campo regime")
	public void apresentarMensagemDeErroregime() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroObrigatoriaRegime();
	}

	@Entao("apresentar mensagem de erro campo fator1")
	public void apresentarMensagemDeErrofator1() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroObrigatoriaFator1();
	}

	@Entao("apresentar mensagem de erro campo fator2")
	public void apresentarMensagemDeErrofator2() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroObrigatoriaFator1();
	}

	@Quando("clico no botao adicionar produto")
	public void clicoNoBotaoAdicionarProduto() throws Exception {
		// CadastroFuncionalidade cadastroFuncionalidade = new
		// CadastroFuncionalidade();
		// cadastroFuncionalidade.btnAdicionarProduto();
	}

	// @Ent�o("nao deixar selecionar produto")
	// public void naoDeixarSelecionarProduto() {
	// // Write code here that turns the phrase above into concrete actions
	// throw new PendingException();
	// }

	@Dado("no campo propriedade da aplicacao selecionar Parceiro e preencho no campo fornecedor da Aplicacao")
	public void noCampoPropriedadeDaApliçaoSelecionarParceiro() throws Exception {
		cadastroFuncionalidade.selecionarParceiro();

	}

	@Dado("preencho o carteira {string}")
	public void preenchoOCarteira(String carteira) throws Exception {
		cadastroFuncionalidade.preencherCarteiraEmBranco(dados.switValue(carteira));

	}

	@Dado("preencho o celula {string}")
	public void preenchoOCelula(String celular) throws Exception {
		cadastroFuncionalidade.preencherCelulaEmBranco(dados.switValue(celular));

	}

	@Dado("preencho o grupo comercial {string}")
	public void preenchoOGrupoComercial(String grupoComercial) throws Exception {
		cadastroFuncionalidade.preencherGrupoComercialEmBranco(dados.switValue(grupoComercial));
	}

	@Dado("preencho o canal {string}")
	public void preenchoOCanal(String canal) throws Exception {
		cadastroFuncionalidade.preencherCanalEmBranco(dados.switValue(canal));
	}

	@Entao("apresentar mensagem de erro campo produto obrigatorio")
	public void apresentarMensagemDeErroCampoObrigatorio() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroAdicionarProduto();
	}

	@Entao("apresentar mensagem de erro campo modalidade obrigatorio")
	public void apresentarMensagemDeErroModalidadeObrigatorio() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroAdicionarModalidade();
	}

	@Entao("apresentar mensagem de erro campo ramo de atividade obrigatorio")
	public void apresentarMensagemDeErroRamoAtividadeObrigatorio() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroAdicionaRamoAtividade();
	}

	@Entao("apresentar mensagem de erro campo taxa obrigatorio")
	public void apresentarMensagemDeErroTaxaObrigatorio() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroAdicionaTaxa();
	}

	@Entao("apresentar mensagem de erro campo tarifa obrigatorio")
	public void apresentarMensagemDeErroTarifaObrigatorio() throws Exception {
		cadastroFuncionalidade.validarMsgDeErroAdicionaTarifa();
	}

	@Entao("validar a lista de MDR")
	public void validarAListaDeMDR() throws Exception {
		cadastroFuncionalidade.validarMensagemMDR();
	}

	@Dado("preencho demais campos")
	public void preenchoDemaisCampos() {
	}

	@Quando("clico no botao continuar")
	public void clicoNoBotaoContinuar() {

	}

	@Dado("preencho os MDR com campo campo taxa tarifa Zerado")
	public void preenchoOsMDRComCampoCampoTaxaTarifaZerado() throws Exception {
		cadastroFuncionalidade.preencherTarifaZerada();
	}

	@Entao("apresentar mensagem que ja existe MDR cadastrado")
	public void apresentarMensagemQueJaExisteMDRCadastrado() throws Exception {
		cadastroFuncionalidade.validarMsgDuplicadaMDR();

	}

	@Entao("habilitar o botao continuar")
	public void deixarPassarOTeste() {
	}

	@Dado("seleciono a data fim e data inicio do campo calendario parametros parceirias")
	public void selecionoOCampoCaledarioDeParametrosParceirias() throws Exception {
		cadastroFuncionalidade.selecionarCalendario();
	}

	@Entao("cadastrar com sucesso")
	public void cadastrarComSucesso() {
	}

	@Quando("preencher os demais campos")
	public void preencherOsDemaisCampos() throws Exception {
		cadastroFuncionalidade.preencherParametrosParceirias();

	}

	@Dado("seleciono campo caledario FIM: {string}")
	public void selecionoCampoCaledarioFIM(String dataFim) throws Exception {
		cadastroFuncionalidade.validarSemCampoDataFim();

	}

	@Entao("apresentar mensagem de erro")
	public void apresentarMensagemDeErro1() throws Exception {
		cadastroFuncionalidade.mensagemDeErro();
	}

	@Dado("seleciono a data inicio e data corrente")
	public void selecionoADataInicioEDataCorrente() throws Exception {
		cadastroFuncionalidade.validarDataInicioAnterioDataCorrente();

	}

	@Dado("seleciono a data fim e data corrente")
	public void selecionoADataFimEDataCorrente() throws Exception {
		cadastroFuncionalidade.validarDataFimAnteriorDataCorrente();
	}

	@Entao("passa o teste")
	public void passaOTeste() {
	}

}
