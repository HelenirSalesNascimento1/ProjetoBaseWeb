package funcionalidades;

import java.sql.SQLException;

import apoio.MassaCadastro;
import apoio.MassaDadosUtils;
import pages.page.LoginPage;
import readers.Config;
import utils.WebDriverFactory;

public class LoginFuncionalidade {
	WebDriverFactory DriverFactory = new WebDriverFactory();
	LoginPage loginPage = new LoginPage();
	MassaCadastro massa;
	MassaDadosUtils dados = new MassaDadosUtils();

	public LoginFuncionalidade() throws ClassNotFoundException, SQLException {
		carregarMassaDados(massa = new MassaCadastro());
	}

	private void carregarMassaDados(MassaCadastro massa) throws ClassNotFoundException, SQLException {
		massa.setLogin(Config.getProperty("login"));
		massa.setSenha(Config.getProperty("senha"));
	}

	public void setLogin() throws Exception {
		loginPage.preecherLogin(massa.getLogin());
	}

	public void setSenha() throws Exception {
		loginPage.preecherSenha(massa.getSenha());
	}

	public void btnLogin() throws Exception {
		loginPage.btnLogin();
	}

	public void setLoginInvalido() throws Exception {
		loginPage.preecherLogin("testes");
	}

	public void setSenhaInvalido() throws Exception {
		loginPage.preecherSenha("12345");
	}

	public void logarInvalido() throws Exception {
		setLoginInvalido();
		setSenha();
		btnLogin();

	}

	public void Logar() throws Exception {
		setLogin();
		setSenha();
		btnLogin();

	}

	public void senhaInvalido() throws Exception {
		setLogin();
		setSenhaInvalido();
		btnLogin();

	}

	public void loginEmBraco(String login) throws Exception {
		massa.setLogin(login);
		Logar();

	}

	public void senhaEmBraco(String senha) throws Exception {
		massa.setSenha(senha);
		Logar();

	}

	public void validarMsgSucesso(String msg) throws Exception {
		System.out.println(loginPage.validarMsg(msg) + msg);
	}

	public void validarSucessoLogin() throws Exception {
		validarMsgSucesso("Cadastro de Parceiros");
	}

}
