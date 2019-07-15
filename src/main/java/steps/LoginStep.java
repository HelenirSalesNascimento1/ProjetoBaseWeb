package steps;

import java.sql.SQLException;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;
import funcionalidades.LoginFuncionalidade;

public class LoginStep {

	MassaDadosUtils dados = new MassaDadosUtils();

	@Quando("entro com usuario invalido e senha valida")
	public void entroComUsuarioInvalidoESenhaValida() throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.logarInvalido();

	}

	@Quando("entro com usuario valido e senha invalida")
	public void loginComUsuarioValidoESenhaInvalida() throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.senhaInvalido();

	}

	@Quando("login sem usuario {string}")
	public void loginSemUsuario(String login) throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.loginEmBraco(dados.switValue(login));
	}

	@Quando("login sem senha {string}")
	public void loginSemSenha(String senha) throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.senhaEmBraco(dados.switValue(senha));
	}

	@Entao("validar conta conectada com sucesso")
	public void validarContaConectadaComSucesso() throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.validarSucessoLogin();

	}

	@Entao("validar mensagem sem sucesso")
	public void validarMensagemSemSucesso() throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.msgSemSucesso();

	}
	@Entao("mensagem de error")
	public void mensagagemDeError() throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.msnDeError();
	}

}
