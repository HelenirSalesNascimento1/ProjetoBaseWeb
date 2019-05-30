package funcionalidades;

import java.sql.SQLException;
import java.time.LocalDateTime;

import apoio.MassaCadastro;
import apoio.MassaDadosUtils;
import pages.page.AtualizacaoPage;
import pages.page.CadastroPage;
import readers.Config;
import utils.WebDriverFactory;

public class AtualizacaFuncionalidade {

	WebDriverFactory DriverFactory = new WebDriverFactory();
	CadastroPage cadastroPage = new CadastroPage();
	AtualizacaoPage atualizacao = new AtualizacaoPage();
	MassaCadastro massa;
	MassaDadosUtils dados = new MassaDadosUtils();

	public AtualizacaFuncionalidade() throws ClassNotFoundException, SQLException {
		carregarMassaDados(massa = new MassaCadastro());
	}

	private void carregarMassaDados(MassaCadastro massa) throws ClassNotFoundException, SQLException {
		String cnpj = MassaDadosUtils.gerarCNPJ();
		massa.setCnpj(MassaDadosUtils.gerarCNPJ());
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
	}

	public void setRazaoSocial() throws Exception {

		cadastroPage.preencherRazaoSocial(massa.getRazaoSocial());

	}

	public void preencherRazaoSocialEmBranco(String razaoSocial) throws Exception {
		massa.setRazaoSocial(razaoSocial);
		setRazaoSocial();
		setRazaoSocial();

	}

	public void setLogradouro() throws Exception {

		cadastroPage.preencherLogradouro(massa.getLogradouro());

	}

	public void preencherLogradouroEmBranco(String logradouro) throws Exception {
		massa.setLogradouro(logradouro);
		setLogradouro();
		setLogradouro();

	}

	public void setNumero() throws Exception {

		cadastroPage.preencherNumero(massa.getNumero());

	}

	public void preencherNumeroEmBranco(String numero) throws Exception {
		massa.setNumero(numero);
		setNumero();
		setNumero();

	}

	public void setBairro() throws Exception {

		cadastroPage.preencherBairro(massa.getBairro());

	}

	public void preencherBairroEmBranco(String bairro) throws Exception {
		massa.setBairro(bairro);
		setBairro();
		setBairro();

	}

	public void setCidade() throws Exception {

		cadastroPage.preencherCidade(massa.getCidade());

	}

	public void preencherCidadeEmBranco(String cidade) throws Exception {
		massa.setCidade(cidade);
		setCidade();
		setCidade();

	}

	public void preencherUFEmBranco(String uf) {
		massa.setUf(uf);

	}

	public void setCEP() throws Exception {

		cadastroPage.preencherCep(massa.getCep());

	}

	public void preencherCEPEmBranco(String cep) throws Exception {
		massa.setCep(cep);
		setCEP();
		setCEP();

	}

	public void setNomeParceiro() throws Exception {

		cadastroPage.preencherNomeParceiro(massa.getNomeParceiro());

	}

	public void preencherNomeParceiro(String nomeParceiro) throws Exception {
		massa.setNomeParceiro(nomeParceiro);
		setNomeParceiro();
		setNomeParceiro();

	}

	public void setTaxa() throws Exception {

		cadastroPage.preencherTaxa(massa.getTaxaDebito());

	}

	public void preencherCampoTaxaEmBranco(String taxa) throws Exception {
		massa.setTaxaDebito(taxa);
		setTaxa();
		setTaxa();

	}

	public void setTarifa() throws Exception {

		cadastroPage.preencherTarifa(massa.getTarifaDebito());

	}

	public void preencherCampoTarifaEmBranco(String tarifa) throws Exception {
		massa.setTarifaDebito(tarifa);
		setTarifa();
		setTarifa();

	}

	public void setRegime() throws Exception {

		cadastroPage.preencherRegime(massa.getRegime());

	}

	public void preencherCampoRegimeEmBranco(String regime) throws Exception {
		massa.setRegime(regime);
		setRegime();
		setRegime();
		setRegime();

	}

	public void setFator1() throws Exception {

		cadastroPage.preencherFator1(massa.getFator1());

	}

	public void preencherCampoFator1EmBranco(String fator1) throws Exception {
		massa.setFator1(fator1);
		setFator1();
		setFator1();

	}

	public void clicarNoBotaoAlterarParceiro() throws Exception {
		atualizacao.botãoAlterarParceiro();

	}

	public void validarMsgDeError(String msg) throws Exception {
		System.out.println(cadastroPage.validarMsgDeError(msg) + msg);
		if (!cadastroPage.validarMsgDeError(msg))
			throw new Exception();

	}

	public void validarMsgRazaoSocial() throws Exception {
		validarMsgDeError("A razão social é inválida.");

	}

	public void validarMsgLogradouro() throws Exception {
		validarMsgDeError("O logradouro é inválida.");

	}

	public void validarMsgNumero() throws Exception {
		validarMsgDeError("O número é inválido.");

	}

	public void validarMsgBairro() throws Exception {
		validarMsgDeError("O bairro é inválido.");

	}

	public void validarMsgCidade() throws Exception {
		validarMsgDeError("A cidade é inválida.");

	}

	public void validarMsgCEP() throws Exception {
		validarMsgDeError("O CEP é inválido.");

	}

	public void validarMsgNomeParceiro() throws Exception {
		validarMsgDeError("O nome do parceiro é inválido.");

	}

	public void validarMsgAlteracaoParceiro() throws Exception {
		validarMsgDeError("Parceiro alterado com sucesso.");

	}

	public void selecionarCalendarioAtualizacao() throws Exception {
		selecionarInicio(dados.getDataAtual());
		selecionarFim(dados.getDataAtual());
	}

	private void selecionarInicio(LocalDateTime date) throws Exception {
		atualizacao.calendarioInicio(date.getDayOfMonth());
		Thread.sleep(1000);
	}

	private void selecionarFim(LocalDateTime date) throws Exception {
		atualizacao.calendarioFim(date.getDayOfMonth());
	}

	public void validarDataInicioAnterioDataCorrente() throws Exception {
		selecionarCalendarioAtualizacao();

	}

	public void validarDataFimAnteriorDataCorrente() throws Exception {
		selecionarCalendarioAtualizacao();

	}

	public void validarMsgRegime() throws Exception {
		validarMsgDeError("O regime é inválido.");

	}

	public void validarMsgFator1() throws Exception {
		validarMsgDeError("O fator1 é inválido.");

	}

	public void preencherFator1() throws Exception {
		cadastroPage.preencherFator1(massa.getZerado());
	}

	public void preencherFator1Zerado() throws Exception {
		preencherFator1Zerado();
	}

	public void btnParametrosParceria() throws Exception {
		atualizacao.btnParametrosDaParceria();

	}

	public void preencherCampoCarteiraEmBranco(String carteira) throws Exception {
		cadastroPage.preencherCarteira(carteira);

	}

	public void validarMsgCarteira() throws Exception {
		validarMsgDeError("A carteira é inválido.");
	}

	public void preencherCampoCelulaEmBranco(String celula) throws Exception {
		cadastroPage.preencherCelula(celula);
		
	}

}
