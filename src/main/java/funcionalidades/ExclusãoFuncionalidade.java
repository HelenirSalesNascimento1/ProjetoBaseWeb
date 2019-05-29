package funcionalidades;

import java.sql.SQLException;

import apoio.MassaCadastro;
import apoio.MassaDadosUtils;
import pages.page.ExclusãoPage;
import readers.Config;
import utils.WebDriverFactory;

public class ExclusãoFuncionalidade {
	
	WebDriverFactory DriverFactory = new WebDriverFactory();
	ExclusãoPage exclusãoPage = new ExclusãoPage();
	MassaCadastro massa;
	MassaDadosUtils dados = new MassaDadosUtils();
	
	public ExclusãoFuncionalidade() throws ClassNotFoundException, SQLException {
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

	public void excluirProduto() throws Exception {
		exclusãoPage.btnExcluirProduto();
		
	}

	public void validarExclusao() {
		
		
	}

	public void clicarBotaoExcluir() throws Exception {
		exclusãoPage.botaoExcluirParceiro();
		
	}

}
