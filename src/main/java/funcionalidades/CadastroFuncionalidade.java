package funcionalidades;

import java.sql.SQLException;

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
		}catch (Exception e) {
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
		massa.setZerado("0000");
	}



	public void setCnpj() throws Exception {

		cadastroPage.preencherCnpj(massa.getCnpj());

	}

	public void setRazaoSocial() throws Exception {

		cadastroPage.preencherRazaoSocial(massa.getRazaoSocial());

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
		cadastroPage.selecionarProduto("D�bito");
	}

	public void selecionarModalidade() throws Exception {
		cadastroPage.selecionarModalidade();
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

	public void clicarCompuls�rio() throws Exception {
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
		cadastroPage.selecionarPrecifica�aoClienteFinal();
	}

	public void btnAntecipa�aoRecebiveis() throws Exception {
		cadastroPage.btnPermiteAntecipa��o();
	}

	public void selecionarPropriedadeTerminal() throws Exception {
		cadastroPage.selecionarPropriedadeTerminal();
	}

	public void selecionarPropriedadeAplicacao() throws Exception {
		cadastroPage.selecionarPropriedadeAplica�ao();
	}

	public void setFornecedorAplicacao() throws Exception {

		cadastroPage.setFornecedordaAplica�ao(massa.getParametrosParceria());

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

		cadastroPage.btnComunica�ao();

	}
	public void btnSerasa() throws Exception {
		cadastroPage.btnComunica�aoSerasa();
	}
	public void btnAtivacaoProdutos() throws Exception {
		cadastroPage.btnComunica�aoAtivacaoProdutos();
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
		botaoContinuarCadastroParceiro();


	}
	
	public void botaoContinuarCadastroParceiro() throws Exception {
		clicarContinuar();
	}


	public void preencherParceirosComMesmoEndere�o() throws Exception {
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
		setLogradouro();
		setNumero();
		setComplemento();
		setBairro();
		setCidade();
		setCep();
		clicarContinuar();

	}

	public void preecherCondi��esComerciais() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preecherCondi��esComerciaisTaxaNegativo() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaNegativo();
		setTarifaDebito();
		clicarAdicionarProduto();

	}
	public void preecherCondi��esComerciaisTarifaNegativo() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaNegativo();
		clicarAdicionarProduto();

	}

	public void preecherCondi��esComerciaisTaxaZerado() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		selecionarRamoDeAtividade();
		setTaxaZerado();
		setTarifaDebito();
		clicarAdicionarProduto();

	}


	public void preecherCondi��esComerciaisSemProduto() throws Exception {
		selecionarModalidadeSemJuro();
		selecionarRamoDeAtividade();
		setTaxaCredito();
		setTarifaCredito();
		btnAdicionarProduto();

	}

	public void selecionarModalidadeSemJuro() throws Exception {
		cadastroPage.selecionarModalidadeSemJuros();
	}

	public void btnAdicionarProduto() throws Exception {
		clicarAdicionarProduto();
	}



	public void preecherCondi��esComerciaisSemModalidade() throws Exception {
		selecionarProduto();
		selecionarRamoDeAtividade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preecherCondi��esComerciaisSemRamo() throws Exception {
		selecionarProduto();
		selecionarModalidade();
		setTaxaDebito();
		setTarifaDebito();
		clicarAdicionarProduto();

	}

	public void preencherDadosFlex() throws Exception {
		clicarCompuls�rio();
		clicarCampanhaD2();
		setRegime();
		setFator1();
		setFator2();
		// clicarContinuar3();

	}
	public void preencherDadosFlexFator1Negativo() throws Exception {
		clicarCompuls�rio();
		clicarCampanhaD2();
		setRegime();
		setFator1Negativo();
		setFator2();
		// clicarContinuar3();

	}
	public void preencherDadosFlexFator1Zerado() throws Exception {
		clicarCompuls�rio();
		clicarCampanhaD2();
		setRegime();
		setFator1Zerado();
		setFator2();
		// clicarContinuar3();

	}
	public void preencherDadosFlexFator2Negativo() throws Exception {
		clicarCompuls�rio();
		clicarCampanhaD2();
		setRegime();
		setFator1();
		setFator2Negativo();
		// clicarContinuar3();

	}
	public void preencherDadosFlexFator2Zerado() throws Exception {
		clicarCompuls�rio();
		clicarCampanhaD2();
		setRegime();
		setFator1();
		setFator2Zerado();
		// clicarContinuar3();

	}



	public void preencherPar�metrosParceirias() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		//setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

		// btnMatrizRisco();

	}

	public void preencherPar�metrosParceiriasCanalVendaEmBranco() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		//setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		clicarContinuar3();

		// btnMatrizRisco();

	}
	public void preencherPar�metrosParceiriasComunicacaoEmBranco() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		//setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		btnLimiteAtuacao();
		clicarContinuar3();

		// btnMatrizRisco();

	}
	public void preencherParametrosParceiriasComunicacaoMaximoItem() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
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
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
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
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
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
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

	}

	public void preencherParametrosParceriaSemPropriedadeTerminal() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeAplicacao();
		setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

	}


	public void preencherParametrosParceriaSemPropriedadeAplicar() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

	}
	public void preencherParametrosParceriaSemCanalVenda() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		setFornecedorAplicacao();
		selecionarMarca();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		btnLimiteAtuacao();
		clicarContinuar3();

	}



	public void preencherParametrosParceriaSemMarca() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		setFornecedorAplicacao();
		selecionarCentralAtendimento();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

	}

	public void preencherParametrosParceriaSemCampoCentralAtendimento() throws Exception {
		selecionarClienteFinal();
		selecionarPropriedadeTerminal();
		selecionarPropriedadeAplicacao();
		setFornecedorAplicacao();
		selecionarMarca();
		btnAntecipa�aoRecebiveis();
		btnCredenciamento();
		selecionarTipoCaptura();
		selecionarTecnologiaCaptura();
		btnComunicacao();
		selecionarCanaisVenda();
		btnLimiteAtuacao();
		clicarContinuar3();

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
		preecherCondi��esComerciais();
		cadastroPage.validarMdrSucesso();
		btnContinuarMdr();
	}

	public void preencherMDRSemProduto() throws Exception {
		preecherCondi��esComerciaisSemProduto();
		// btnContinuarMdr();
	}

	public void preencherMDRSemModalidade() throws Exception {
		preecherCondi��esComerciaisSemModalidade();
		// btnContinuarMdr();
	}

	public void preencherMDRSemRamo() throws Exception {
		preecherCondi��esComerciaisSemRamo();
		// btnContinuarMdr();
	}

	public void preecherCondi��esComerciaisSemTaxa(String taxa) throws Exception {
		massa.setTaxaDebito(taxa);
		preecherCondi��esComerciais();
		// btnContinuarMdr();

	}

	public void preecherCondi��esComerciaisSemTarifa(String tarifa) throws Exception {
		massa.setTarifaDebito(tarifa);
		preecherCondi��esComerciais();
		// btnContinuarMdr();

	}

	public void selecionaProdutoCredito() throws Exception {
		cadastroPage.preencherProduto("Cr�dito");

	}

	public void selecionaModalidadeCrediario() throws Exception {
		cadastroPage.preencherModalidade("Credi�rio");

	}

	public void selecionaProdutoVista() throws Exception {
		cadastroPage.preencherModalidade("� vista");

	}

	public void selecionaProdutoComJuros() throws Exception {
		cadastroPage.preencherModalidade("Parcelado com juros");

	}

	public void selecionaProdutoSemJuros() throws Exception {
		cadastroPage.preencherModalidade("Parcelado sem juros");

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

	public void preencherCondi�aoComerciaisFlexSemRegime(String regime) throws Exception {
		massa.setRegime(regime);
		preencherDadosFlex();

	}

	public void preencherCondi�aoFlexSemFator1(String fator1) throws Exception {
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

	public void preencherSemForncedorAplica�ao(String fornecedorAplica�ao) throws Exception {
		massa.setParametrosParceria(fornecedorAplica�ao);
		preencherPar�metrosParceirias();
	}

	public void selecionarSemMarca() throws Exception {
		preencherParametrosParceriaSemMarca();

	}

	public void selecionarSemCampoCentralAtendimento() throws Exception {
		preencherParametrosParceriaSemCampoCentralAtendimento();

	}

	public void preencherTaxaNegativo() throws Exception {
		preecherCondi��esComerciaisTaxaNegativo();
	}

	public void preencherTaxaZerada() throws Exception {
		preecherCondi��esComerciaisTaxaZerado();

	}

	public void preencherTarifaNegativo() throws Exception {
		preecherCondi��esComerciaisTarifaNegativo();

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
		preencherPar�metrosParceiriasCanalVendaEmBranco();

	}

	public void preecherComunicacaoEmBranco() throws Exception {

		preencherPar�metrosParceiriasCanalVendaEmBranco();
	}

	public void preecherAtuacaoEmBranco() throws Exception {
		preencherPar�metrosParceiriasCanalVendaEmBranco();		
	}

	public void preencherOutroCNPJ() throws Exception {
		setCnpj();

	}

	public void preencherComMesmoEndere�oAnteriomente() throws Exception {
		preencherParceirosComMesmoEndere�o();

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
	public void validarMsgErro(String msg) throws Exception {
		System.out.println(cadastroPage.validarMsgDeErro(msg) + msg);
	}

	public void validarMsgDeErro() throws Exception {
		validarMsgErro("obrigat�rio");


	}



}