package steps;

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

	@Quando("login com usu�rio v�lido e senha inv�lida")
	public void loginComUsuarioValidoESenhaInvalida() throws Exception {
		LoginFuncionalidade loginFuncionalidade = new LoginFuncionalidade();
		loginFuncionalidade.senhaInvalido();

	} 

	@Quando("login sem usu�rio {string}")
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

}
