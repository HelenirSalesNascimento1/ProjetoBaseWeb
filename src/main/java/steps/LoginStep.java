package steps;

import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.SQLException;

import apoio.MassaDadosUtils;
import apoio.MassaPadraoString;
import contexto.Aplicacao;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;
import pages.page.LoginPage;
//import funcionalidades.LoginFuncionalidade;
import readers.Config;

public class LoginStep {

	MassaDadosUtils dados = new MassaDadosUtils();
	LoginPage loginPage = new LoginPage();
	private MassaPadraoString massa;
	Aplicacao app;

	public LoginStep() throws ClassNotFoundException, SQLException, MalformedURLException, IOException {
		carregarMassaDados(massa = new MassaPadraoString());

	}

	private void carregarMassaDados(MassaPadraoString massa)
			throws ClassNotFoundException, SQLException, MalformedURLException, IOException {
		massa.setLogin(Config.getProperty("email.barriga"));
		massa.setSenha(Config.getProperty("senha.barriga"));

	}

	@Quando("preencho os campos usuario e senha validos")
	public void preenchoOsCamposUsuarioESenhaValidos() throws Exception {
		loginPage.preencherLoginSeuBarriga(massa.getLogin());
		loginPage.preencherSenhaSeuBarriga(massa.getSenha());

	}

	@Quando("clico no botao entrar seu barriga")
	public void clicoNoBotaoEntrarSeuBarriga() throws Exception {
		loginPage.preencherButtonSeuBarriga();
	}

	@Entao("valida mesangem com sucesso seu barriga")
	public void validaMesangemComSucessoSeuBarriga() throws Exception {
		loginPage.validarMsgSeuBarriga("Bem vindo, Automation!");
		System.out.println("Bem vindo, Automation!");

	}

	@Quando("preencho o login invalido")
	public void preenchoOLoginInvalido() {
		massa.setLogin(Config.getProperty("email.invalido.barriga"));
		
	}

	@Quando("valido senha valida")
	public void validoSenhaValida() throws Exception {
		loginPage.preencherSenhaSeuBarriga(massa.getSenha());
	}

	@Entao("apresentar mensagem invalida")
	public void apresentarMensagemInvalida() throws Exception {
		loginPage.validaMsgSeubarrigaInvalido("Email é um campo obrigatório");
		System.out.println("Email é um campo obrigatório");
	}
	@Quando("preencho o login valido")
	public void preenchoOLoginValido() throws Exception {
		loginPage.preencherLoginSeuBarriga(massa.getLogin());
		
	}

	@Quando("valido senha invalida")
	public void validoSenhaInvalida() {
		massa.setSenha(Config.getProperty("senha.invalido.barriga"));
	}
	
	@Entao("apresentar mensagem invalida senha")
	public void apresentarMensagemInvalidaSenha() throws Exception {
		loginPage.validaMsgSeubarrigaInvalidoSenha("Senha é um campo obrigatório");
		
	}

}
