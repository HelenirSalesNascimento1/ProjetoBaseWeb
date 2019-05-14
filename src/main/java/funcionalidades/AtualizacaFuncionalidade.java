package funcionalidades;

import java.sql.SQLException;

import apoio.MassaCadastro;
import apoio.MassaDadosUtils;
import pages.page.CadastroPage;
import readers.Config;
import utils.WebDriverFactory;

public class AtualizacaFuncionalidade {

	WebDriverFactory DriverFactory = new WebDriverFactory();
	CadastroPage cadastroPage = new CadastroPage();
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

	public void preencherRazaoSocialEmBranco(String razaoSocial) {
		massa.setRazaoSocial(razaoSocial);

	}

	public void preencherLogradouroEmBranco(String logradouro) {
		massa.setLogradouro(logradouro);

	}

	public void preencherNumeroEmBranco(String numero) {
		massa.setNumero(numero);

	}

	public void preencherBairroEmBranco(String bairro) {
		massa.setBairro(bairro);

	}

	public void preencherCidadeEmBranco(String cidade) {
		massa.setCidade(cidade);

	}

	public void preencherUFEmBranco(String uf) {
		massa.setUf(uf);

	}

	public void preencherCEPEmBranco(String cep) {
		massa.setCep(cep);

	}

	public void preencherNomeParceiro(String nomeParceiro) {
		massa.setNomeParceiro(nomeParceiro);

	}

	public void preencherCampoTaxaEmBranco(String taxa) {
		massa.setTaxaDebito(taxa);

	}

	public void preencherCampoTarifaEmBranco(String tarifa) {
		massa.setTaxaDebito(tarifa);

	}

}
