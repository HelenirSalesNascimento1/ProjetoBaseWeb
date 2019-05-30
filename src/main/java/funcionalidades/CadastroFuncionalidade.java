package funcionalidades;

import java.sql.SQLException;
import java.text.DateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;

import apoio.MassaCadastro;
import apoio.MassaDadosUtils;
import pages.page.CadastroPage;
import readers.Config;
import utils.WebDriverFactory;

public class CadastroFuncionalidade {

	WebDriverFactory DriverFactory = new WebDriverFactory();
	CadastroPage cadastroPage = new CadastroPage();
	MassaCadastro massa;
	MassaDadosUtils dados = new MassaDadosUtils();

	public CadastroFuncionalidade() throws ClassNotFoundException, SQLException {
		try {
			carregarMassaDados(massa = new MassaCadastro());
		} catch (Exception e) {
			throw e;
		}
	}

	private void carregarMassaDados(MassaCadastro massa) throws ClassNotFoundException, SQLException {
		String cnpj = MassaDadosUtils.gerarCNPJ();

		massa.setCnpj(cnpj);
		massa.setRazaoSocial(Config.getProperty("razaoSocial"));
		massa.setNomeParceiro(Config.getProperty("nomeParceiro"));
		massa.setLogradouro(Config.getProperty("logradouro"));
		massa.setNumero(Config.getProperty("numero"));
		massa.setComplemento(Config.getProperty("complemento"));
		massa.setBairro(Config.getProperty("bairro"));
		massa.setCidade(Config.getProperty("cidade"));
		massa.setCep(Config.getProperty("cep"));
		massa.setTaxaDebito(Config.getProperty("taxaDebito"));
		massa.setTarifaDebito(Config.getProperty("tarifaDebito"));
		massa.setTaxaCredito(Config.getProperty("taxaCredito"));
		massa.setTarifaCredito(Config.getProperty("tarifaCredito"));
		massa.setRegime(Config.getProperty("regime"));
		massa.setFator1(Config.getProperty("fator1"));
		massa.setFator2(Config.getProperty("fator2"));
		massa.setParametrosParceria(Config.getProperty("parametrosParceria"));
		massa.setNegativo("");
		massa.setZerado("000000");
		massa.setCarteira(Config.getProperty("carteira"));
		massa.setCelula(Config.getProperty("celula"));
		massa.setGrupoComercial(Config.getProperty("grupoComercial"));
		massa.setCanal(Config.getProperty("canal"));
	}

	public void setRazaoSocial() throws Exception {

		cadastroPage.preencherRazaoSocial(massa.getRazaoSocial());

	}

	public void setCnpj() throws Exception {

		cadastroPage.preencherCnpj(massa.getCnpj());

	}

	public void setNomeParceiro() throws Exception {

		cadastroPage.preencherNomeParceiro(massa.getNomeParceiro());
	}

	public void setLogradouro() throws Exception {

		cadastroPage.preencherLogradouro(massa.getLogradouro());

	}

	public void setNumero() throws Exception {

		cadastroPage.preencherNumero(massa.getNumero());
	}

	public void setComplemento() throws Exception {

		cadastroPage.preencherComplemento(massa.getComplemento());

	}

	public void setBairro() throws Exception {

		cadastroPage.preencherBairro(massa.getBairro());
	}

	public void setCidade() throws Exception {

		cadastroPage.preencherCidade(massa.getCidade());

	}

	public void selecionarUf() throws Exception {

		cadastroPage.selecionarUF("SP");

	}

	public void setCep() throws Exception {

		cadastroPage.preencherCep(massa.getCep());

	}

	public void clicarContinuar() throws Exception {
		cadastroPage.botaoContinuar();

	}

	public void selecionarProduto() throws Exception {
		cadastroPage.preencherProduto("Débito");
	}

	public void selecionarModalidade() throws Exception {
		cadastroPage.preencherModalidade(" À Vista ");
	}

	public void selecionarRamoDeAtividade() throws Exception {
		cadastroPage.selecionarRamoAtividade();
	}

	public void setTaxaDebito() throws Exception {
		cadastroPage.preencherTaxa(massa.getTaxaDebito());
	}

	public void setTarifaDebito() throws Exception {
		cadastroPage.preencherTarifa(massa.getTarifaDebito());
	}

	public void setTaxaCredito() throws Exception {
		cadastroPage.preencherTaxa(massa.getTaxaCredito());
	}

	public void setTarifaCredito() throws Exception {
		cadastroPage.preencherTarifa(massa.getTarifaCredito());
	}

	public void setTaxaNegativo() throws Exception {
		cadastroPage.preencherTaxa(massa.getNegativo());
	}

	public void setTarifaNegativo() throws Exception {
		cadastroPage.preencherTarifa(massa.getNegativo());
	}

	public void setTaxaZerado() throws Exception {
		cadastroPage.preencherTaxa(massa.getZerado());
	}

	public void setTarifaZerada() throws Exception {
		cadastroPage.preencherTarifa(massa.getZerado());
	}

	public void setFator1Negativo() throws Exception {
		cadastroPage.preencherFator1(massa.getNegativo());
	}

	public void setFator1Zerado() throws Exception {
		cadastroPage.preencherFator1(massa.getZerado());
	}

	public void setFator2Negativo() throws Exception {
		cadastroPage.preencherFator2(massa.getNegativo());
	}

	public void setFator2Zerado() throws Exception {
		cadastroPage.preencherFator2(massa.getZerado());
	}

	public void clicarAdicionarProduto() throws Exception {
		cadastroPage.btnAdicionarProdutor();

	}

	public void clicarContinuar2() throws Exception {
		cadastroPage.botaoContinuar2();

	}

	public void clicarCompulsorio() throws Exception {
		cadastroPage.btnCompulsorio();

	}

	public void clicarCampanhaD2() throws Exception {
		cadastroPage.btnCampanhaD2();

	}

	public void setRegime() throws Exception {
		cadastroPage.preencherRegime(massa.getRegime());
	}

	public void setFator1() throws Exception {
		cadastroPage.preencherFator1(massa.getFator1());
	}

	public void setFator2() throws Exception {
		cadastroPage.preencherFator2(massa.getFator2());
	}

	public void clicarContinuar3() throws Exception {
		cadastroPage.botaoContinuar3();
	}

	public void selecionarClienteFinal() throws Exception {
		cadastroPage.selecionarPrecificaçaoClienteFinal();
	}

	public void preencherCarteira(String carteira) throws Exception {
		cadastroPage.preencherCarteira(carteira);
	}

	public void btnAntecipaçaoRecebiveis() throws Exception {
		cadastroPage.btnPermiteAntecipaçao();
	}

	public void selecionarPropriedadeTerminal() throws Exception {
		cadastroPage.selecionarPropriedadeTerminal();
	}

	public void selecionarPropriedadeAplicacao() throws Exception {
		cadastroPage.selecionarPropriedadeAplicaçao("Rede");
	}

	public void selecionarPropriedadeAplicacaoParceiro() throws Exception {
		cadastroPage.selecionarPropriedadeAplicaçao("Parceiro");
	}

	public void preencherCarteira() throws Exception {

		cadastroPage.preencherCarteira(massa.getCarteira());

	}

	public void preencherCelula() throws Exception {

		cadastroPage.preencherCelula(massa.getCelula());

	}

	public void preencherGrupoComercial() throws Exception {

		cadastroPage.preencherGrupoComercial(massa.getGrupoComercial());

	}

	public void preencherCanal() throws Exception {

		cadastroPage.preencherCanal(massa.getCanal());

	}

	public void setFornecedorAplicacao() throws Exception {

		cadastroPage.setFornecedordaAplicaçao(massa.getParametrosParceria());

	}

	public void selecionarCanaisVenda() throws Exception {
		cadastroPage.btnCanaisdeVenda();
	}

	public void selecionarTLMKTAtivo() throws Exception {
		cadastroPage.btnTLMKTAtivo();
	}

	public void selecionarExecutivosRede() throws Exception {
		cadastroPage.btnExecutivosRede();
	}

	public void selecionarAutoCredenciamento() throws Exception {
		cadastroPage.btnAutoCredenciamento();
	}

	public void selecionarTipoCaptura() throws Exception {
		cadastroPage.btnTipodeCaptura();
	}

	public void selecionarTecnologiaCaptura() throws Exception {
		cadastroPage.btnTecnologiaCaptura();
	}

	public void selecionarMarca() throws Exception {

		cadastroPage.selecionarMarca();

	}

	public void btnComunicacao() throws Exception {

		cadastroPage.btnComunicaçao();

	}

	public void btnSerasa() throws Exception {
		cadastroPage.btnComunicaçaoSerasa();
	}

	public void btnAtivacaoProdutos() throws Exception {
		cadastroPage.btnComunicaçaoAtivacaoProdutos();
	}

	public void selecionarCentralAtendimento() throws Exception {

		cadastroPage.selecionarCentralAtendimento();

	}

	public void btnLimiteAtuacao() throws Exception {

		cadastroPage.btnLimiteAtuacao();

	}

	public void btnRegiaoGeografica() throws Exception {

		cadastroPage.btnRegiaoGeografica();

	}

	public void btnMatrizRisco() throws Exception {

		cadastroPage.btnMatrizRisco();

	}

	public void btnCredenciamento() throws Exception {

		cadastroPage.btnCredenciamento();

	}

	public void btnCadastrarParceiro() throws Exception {
		cadastroPage.btnCadastrarParceiro();
	}

	public void validarCnpj(String cnpj) throws Exception {
		massa.setCnpj(cnpj);
		preencherParceiros();

	}

	public void preencherParceiros() throws Exception {
		setCnpj();
		setRazaoSocial();
		setNomeParceiro();
		setCep();
		setLogradouro();
		setNumero();
		setComplemento();
		setBairro();
		setCidade();
		selecionarUf();
		// botaoContinuarCadastroParceiro();

	}

	public void botaoContinuarCadastroParceiro() throws Exception {
		clicarContinuar();
	}

	public void preencherParceirosComMesmoEndereço() throws Exception {
		setRazaoSocial();
		setNomeParceiro();
		setCep();
		setLogradouro();
		setNumero();
		setComplemento();
		setBairro();
		setCidade();
		selecionarUf();
		clicarContinuar();

	}

	public void preencherParceirosSemUF() throws Exception {
		setCnpj();
		setRazaoSocial();
		setNomeParceiro();
		setCep();
		setLogradouro();
		setNumero();
		setComplemento();
		setBairro();
		setCidade();
		clicarContinuar();

	}

	public void preecherCondiçõesComerciais() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preecherCondiçõesComerciaisTaxaNegativo() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaNegativo();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preecherCondiçõesComerciaisTarifaNegativo() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaNegativo();
		clicarAdicionarProduto();

	}

	public void preecherCondiçõesComerciaisTaxaZerado() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaZerado();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preecherCondiçõesComerciaisTarifaZerado() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaZerada();
		clicarAdicionarProduto();

	}

	public void preecherCondiçõesComerciaisSemProduto() throws Exception {
		selecionarModalidadeSemJuro();
		selecionarRamoDeAtividade();
		setTaxaCredito();
		setTarifaCredito();
		btnAdicionarProduto();

	}

	public void selecionarModalidadeSemJuro() throws Exception {
		cadastroPage.preencherModalidade(" Parcelado sem juros ");
	}

	public void btnAdicionarProduto() throws Exception {
		clicarAdicionarProduto();
	}

	public void preecherCondiçõesComerciaisSemModalidade() throws Exception {
		selecionarProduto();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preecherCondiçõesComerciaisSemRamo() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preencherDadosFlex() throws Exception {
		clicarCompulsorio();
		clicarCampanhaD2();
		setRegime();
		setFator1();
		setFator2();
		// clicarContinuar3();

	}

	public void preencherDadosFlexFator1Negativo() throws Exception {
		clicarCompulsorio();
		clicarCampanhaD2();
		setRegime();
		setFator1Negativo();
		setFator2();
		// clicarContinuar3();

	}

	public void preencherDadosFlexFator1Zerado() throws Exception {
		clicarCompulsorio();
		clicarCampanhaD2();
		setRegime();
		setFator1Zerado();
		setFator2();
		// clicarContinuar3();

	}

	public void preencherDadosFlexFator2Negativo() throws Exception {
		clicarCompulsorio();
		clicarCampanhaD2();
		setRegime();
		setFator1();
		setFator2Negativo();
		// clicarContinuar3();

	}

	public void preencherDadosFlexFator2Zerado() throws Exception {
		clicarCompulsorio();
		clicarCampanhaD2();
		setRegime();
		setFator1();
		setFator2Zerado();
		// clicarContinuar3();

	}

	public void preencherParametrosParceirias() throws Exception {
		selecionarCalendario();
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		// setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		// clicarContinuar3();

		// btnMatrizRisco();

	}

	public void preencherParametrosParceiria() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		// setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

		// btnMatrizRisco();

	}

	public void preencherPametrosParceiriasCampoPropriedadeAplicacao() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacaoParceiro();
		setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		// clicarContinuar3();
	}

	public void preencherParametrosParceiriasCanalVendaEmBranco() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		// setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

		// btnMatrizRisco();

	}

	public void preencherParametrosParceiriasComunicacaoEmBranco() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		// setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		btnLimiteAtuacao();
		clicarContinuar3();

		// btnMatrizRisco();

	}

	public void preencherParametrosParceiriasComunicacaoMaximoItem() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		btnSerasa();
		btnAtivacaoProdutos();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();
	}

	public void preencherParametrosParceiriasAtuacaoMaximoItem() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		btnRegiaoGeografica();
		clicarContinuar3();
	}

	public void preencherParametrosParceiriasCanalVendaMaximoItem() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		selecionarTLMKTAtivo();
		selecionarExecutivosRede();
		selecionarAutoCredenciamento();
		btnLimiteAtuacao();
		clicarContinuar3();
	}

	public void preencherParametrosParceriaSemClienteFinal() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		// setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		// aclicarContinuar3();

	}

	public void preencherParametrosParceriaSemPropriedadeTerminal() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeAplicacao();
		// setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		// clicarContinuar3();

	}

	public void preencherParametrosParceriaSemPropriedadeAplicar() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		// setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();

	}

	public void preencherParametrosParceriaSemCanalVenda() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		btnLimiteAtuacao();
		clicarContinuar3();

	}

	public void preencherParametrosParceriaSemMarca() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		setFornecedorAplicacao();
		selecionarCentralAtendimento();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		// clicarContinuar3();

	}

	public void preencherParametrosParceriaSemCampoCentralAtendimento() throws Exception {
		preencherCarteira();
		preencherCelula();
		preencherGrupoComercial();
		preencherCanal();
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		setFornecedorAplicacao();
		selecionarMarca();
		btnAntecipaçaoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		// clicarContinuar3();

	}

	public void btnContinuarMdr() throws Exception {
		clicarContinuar2();
	}

	public void validarRazaoSocial(String razaoSocial) throws Exception {
		massa.setRazaoSocial(razaoSocial);
		preencherParceiros();

	}

	public void validarLogradouro(String logradouro) throws Exception {
		massa.setLogradouro(logradouro);
		preencherParceiros();

	}

	public void validarNumero(String numero) throws Exception {
		massa.setNumero(numero);
		preencherParceiros();
	}

	public void validarComplemento(String complemento) throws Exception {
		massa.setComplemento(complemento);
		preencherParceiros();

	}

	public void validarBairro(String bairro) throws Exception {
		massa.setBairro(bairro);
		preencherParceiros();
	}

	public void validarCidade(String cidade) throws Exception {
		massa.setCidade(cidade);
		preencherParceiros();

	}

	public void validarCep(String cep) throws Exception {
		massa.setCep(cep);
		preencherParceiros();

	}

	public void validarNomeParceiro(String nomeParceiro) throws Exception {
		massa.setNomeParceiro(nomeParceiro);
		preencherParceiros();

	}

	public void validarMdrSucesso() throws Exception {
		preecherCondiçõesComerciais();
		validarMensagemMDR();
		btnContinuarMdr();
	}

	public void validarMensagemMDR() throws Exception {
		cadastroPage.validarMdrSucesso();

	}

	public void preencherMDRSemProduto() throws Exception {
		preecherCondiçõesComerciaisSemProduto();
		// btnContinuarMdr();
	}

	public void preencherMDRSemModalidade() throws Exception {
		preecherCondiçõesComerciaisSemModalidade();
		// btnContinuarMdr();
	}

	public void preencherMDRSemRamo() throws Exception {
		preecherCondiçõesComerciaisSemRamo();
		// btnContinuarMdr();
	}

	public void preecherCondiçõesComerciaisSemTaxa(String taxa) throws Exception {
		massa.setTaxaDebito(taxa);
		preecherCondiçõesComerciais();
		// btnContinuarMdr();

	}

	public void preecherCondiçõesComerciaisSemTarifa(String tarifa) throws Exception {
		massa.setTarifaDebito(tarifa);
		preecherCondiçõesComerciais();
		// btnContinuarMdr();

	}

	public void selecionaProdutoCredito() throws Exception {
		cadastroPage.preencherProduto("Crédito");

	}

	public void clicarCondicaoComerciaisMDR() throws Exception {
		cadastroPage.btnCondiçoesComerciais();
	}

	public void clicarCondicaoComerciaisFlex() throws Exception {
		cadastroPage.btnCondiçoesComerciaisFlex();
	}

	public void clicarParametrosDaParceria() throws Exception {
		cadastroPage.btnParametrosDaParceria();
	}

	public void selecionaModalidadeCrediario() throws Exception {
		cadastroPage.preencherModalidade("Crediário");

	}

	public void selecionaProdutoVista() throws Exception {

		try {
			cadastroPage.preencherModalidade(" À vista ");
		} catch (Exception e) {
			System.out.println("Erro ao selecionar opção a vista pois Crédito não possui essa opção");
			throw e;
		}

	}

	public void selecionaProdutoComJuros() throws Exception {
		cadastroPage.preencherModalidade("Parcelado com juros");

	}

	public void selecionaProdutoSemJuros() throws Exception {
		cadastroPage.preencherModalidade("Parcelado sem juros");

	}

	public void btnCondiçaoComerciaisMDR() throws Exception {
		clicarCondicaoComerciaisMDR();
	}

	public void btnCondiçaoComerciaisFlex() throws Exception {
		clicarCondicaoComerciaisFlex();
	}

	public void btnParametrosDaParceria() throws Exception {
		clicarParametrosDaParceria();
	}

	public void preencherDadosMDR() throws Exception {

		selecionaProdutoCredito();
		selecionaModalidadeCrediario();
		selecionarRamoDeAtividade();
		setTaxaCredito();
		setTarifaCredito();
		clicarAdicionarProduto();

	}

	public void preencherDadosMDR2() throws Exception {
		selecionaProdutoCredito();
		selecionaProdutoVista();
		selecionarRamoDeAtividade();
		setTaxaCredito();
		setTarifaCredito();
		clicarAdicionarProduto();

	}

	public void preecherDadosMDR3() throws Exception {
		selecionaProdutoCredito();
		selecionaProdutoComJuros();
		selecionarRamoDeAtividade();
		setTaxaCredito();
		setTarifaCredito();
		clicarAdicionarProduto();

	}

	public void preencherDadosMDR4() throws Exception {
		selecionaProdutoCredito();
		selecionaProdutoSemJuros();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preencherDadosMDR5() throws Exception {
		selecionarProduto();
		selecionaProdutoVista();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preencherDadosMDR6() throws Exception {
		selecionarProduto();
		selecionaProdutoComJuros();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();
	}

	public void preecherDadosMDR7() throws Exception {
		selecionarProduto();
		selecionaProdutoSemJuros();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preencherDadosMDR8() throws Exception {
		selecionarProduto();
		selecionaModalidadeCrediario();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preencherCondiçaoComerciaisFlexSemRegime(String regime) throws Exception {
		massa.setRegime(regime);
		preencherDadosFlex();

	}

	public void preencherCondiçaoFlexSemFator1(String fator1) throws Exception {
		massa.setFator1(fator1);
		preencherDadosFlex();

	}

	public void preencherCondicaoFlexSemFator2(String fator2) throws Exception {
		massa.setFator2(fator2);
		preencherDadosFlex();

	}

	public void preencherSemClienteFinal() throws Exception {
		preencherParametrosParceriaSemClienteFinal();

	}

	public void preencherSemPropriedadeTerminal() throws Exception {
		preencherParametrosParceriaSemPropriedadeTerminal();

	}

	public void preencherSemPropriedadeAplicacao() throws Exception {
		preencherParametrosParceriaSemPropriedadeAplicar();

	}

	public void preencherSemForncedorAplicaçao(String fornecedorAplicaçao) throws Exception {
		massa.setParametrosParceria(fornecedorAplicaçao);
		preencherPametrosParceiriasCampoPropriedadeAplicacao();
	}

	public void selecionarSemMarca() throws Exception {
		preencherParametrosParceriaSemMarca();

	}

	public void selecionarSemCampoCentralAtendimento() throws Exception {
		preencherParametrosParceriaSemCampoCentralAtendimento();

	}

	public void preencherTaxaNegativo() throws Exception {
		preecherCondiçõesComerciaisTaxaNegativo();
	}

	public void preencherTaxaZerada() throws Exception {
		preecherCondiçõesComerciaisTaxaZerado();

	}

	public void preencherTarifaNegativo() throws Exception {
		preecherCondiçõesComerciaisTarifaNegativo();

	}

	public void preencherFator1Negativo() throws Exception {
		preencherDadosFlexFator1Negativo();
	}

	public void preencherFator1Zerado() throws Exception {
		preencherDadosFlexFator1Zerado();

	}

	public void preencherFator2Negativo() throws Exception {
		preencherDadosFlexFator2Negativo();

	}

	public void preencherFator2Zerado() throws Exception {
		preencherDadosFlexFator2Zerado();
	}

	public void validarCanalVenda() throws Exception {
		preencherParametrosParceriaSemCanalVenda();

	}

	public void comunicacaoMaximoItem() throws Exception {

		preencherParametrosParceiriasComunicacaoMaximoItem();
	}

	public void atuacaoMaximoItem() throws Exception {
		preencherParametrosParceiriasAtuacaoMaximoItem();

	}

	public void canalVendaMaximoItem() throws Exception {
		preencherParametrosParceiriasCanalVendaMaximoItem();

	}

	public void preencherCanalVendaEmBranco() throws Exception {
		preencherParametrosParceiriasCanalVendaEmBranco();

	}

	public void preecherComunicacaoEmBranco() throws Exception {

		preencherParametrosParceiriasCanalVendaEmBranco();
	}

	public void preecherAtuacaoEmBranco() throws Exception {
		preencherParametrosParceiriasCanalVendaEmBranco();
	}

	public void preencherOutroCNPJ() throws Exception {
		setCnpj();

	}

	public void preencherComMesmoEndereçoAnteriomente() throws Exception {
		preencherParceirosComMesmoEndereço();

	}

	public void msgComSucesso(String msg) throws Exception {
		System.out.println(cadastroPage.validarMsg(msg) + msg);
	}

	public void validarMsgDeCadastroComSucesso() throws Exception {
		msgComSucesso("Parceiro cadastrado com sucesso.");
	}

	public void btnContinuarCadastroParceiro() throws Exception {
		botaoContinuarCadastroParceiro();

	}

	public void validarMsgDeError(String msg) throws Exception {
		System.out.println(cadastroPage.validarMsgDeError(msg) + msg);
	}

	public void validarMsgDeErroAdicionarProduto() throws Exception {
		validarMsgDeError("O campo produto é obrigatório");

	}

	public void validarMsgDeErroAdicionarModalidade() throws Exception {
		validarMsgDeError("O campo modalidade é obrigatório");

	}

	public void validarMsgDeErroAdicionaRamoAtividade() throws Exception {
		validarMsgDeError("O campo ramo de atividade é obrigatório");

	}

	public void validarMsgDeErroAdicionaTaxa() throws Exception {
		validarMsgDeError("O campo taxa é obrigatório");

	}

	public void validarMsgDeErroAdicionaTarifa() throws Exception {
		validarMsgDeError("O campo tarifa é obrigatório");

	}

	public void validarMsgErro(String msg) throws Exception {
		System.out.println(cadastroPage.validarMsgDeErro(msg) + msg);

	}

	public void validarMsgErrobtn3(String msg) throws Exception {
		System.out.println(cadastroPage.validarMsgDeErroBtn3(msg) + msg);

	}

	public void validarMsgDuplicada(String msg) throws Exception {
		System.out.println(cadastroPage.validarMsgDeError(msg) + msg);
	}

	public void validarMsgDuplicada() throws Exception {
		validarMsgDuplicada("Já existe MDR cadastrado para estes parametros.");

	}

	public void validarMsgDeErroObrigatorio() throws Exception {
		validarMsgErro("continuar");

	}

	public void validarMsgDeErroObrigatoriobtn3() throws Exception {
		validarMsgErrobtn3("continuar");

	}

	public void validarMsgDeErroObrigatoriaRegime() throws Exception {
		validarMsgDeError(" O regime é Inválido ");

	}

	public void validarMsgDeErroObrigatoriaFator1() throws Exception {
		validarMsgDeError(" O fator1 é inválido ");

	}

	public void validarMsgDeErroObrigatoriaFator2() throws Exception {
		validarMsgDeError("O fator2 é inválido");

	}

	public void validarMsgDeErroObrigatoriaCarteira() throws Exception {
		validarMsgDeError("O campo carteira é obrigatório");

	}

	public void selecionarParceiro() throws Exception {
		preencherPametrosParceiriasCampoPropriedadeAplicacao();
	}

	public void preencherCarteiraEmBranco(String carteira) throws Exception {
		massa.setCarteira(carteira);
		preencherParametrosParceirias();
	}

	public void preencherCelulaEmBranco(String celula) throws Exception {
		massa.setCelula(celula);
		preencherParametrosParceirias();

	}

	public void preencherGrupoComercialEmBranco(String grupoComercial) throws Exception {
		massa.setGrupoComercial(grupoComercial);
		preencherParametrosParceirias();

	}

	public void preencherCanalEmBranco(String canal) throws Exception {
		massa.setCanal(canal);
		preencherParametrosParceirias();

	}

	public void preencherTarifaZerada() throws Exception {
		preecherCondiçõesComerciaisTarifaZerado();

	}

	public void validarMsgDuplicadaMDR() throws Exception {

		validarMsgDuplicada();
	}

	private void selecionarInicio(LocalDateTime date) throws Exception {
		cadastroPage.calendarioInicio(date.getDayOfMonth());
		Thread.sleep(1000);
	}

	private void selecionarFim(LocalDateTime date) throws Exception {
		cadastroPage.calendarioFim(date.getDayOfMonth());
	}

	public void selecionarCalendario() throws Exception {
		selecionarInicio(dados.getDataAtual());
		selecionarFim(dados.getDataAtual());

	}

	public void validarSemCampoDataFim() throws Exception {
		selecionarInicio(dados.getDataAtual());

	}

	public void mensagemDeErro() throws Exception {
		validarMsgDeError("O fim da vigência é obrigatório");

	}

	public void validarDataInicioAnterioDataCorrente() throws Exception {
		selecionarCalendario();
	}

	public void validarDataFimAnteriorDataCorrente() throws Exception {
		selecionarCalendario();

	}

}
