package steps;

import apoio.MassaDadosUtils;
import contexto.Aplicacao;
import contexto.Contexto;
import cucumber.api.java.pt.Dado;
import funcionalidades.LoginFuncionalidade;

public class Step {

	// private MassaPadraoString massa;
	Aplicacao app;
	MassaDadosUtils dados = new MassaDadosUtils();

	@Dado("acesso ao portal Parceiros")
	public void acessoAoPortalParceiro() throws Exception {
		app = new Aplicacao();
		app.acessarPagina(Contexto.recuperarInstancia().recuperarLink());
	}

	@Dado("entro com usuario e senha validos")
	public void entroComUsuarioESenhaValidos() throws Exception {
		LoginFuncionalidade login = new LoginFuncionalidade();
		login.Logar(); 
	} 

//	 @Dado("login no portal com usuario e senha validos")
//	 public void loginNoPortalComUsuarioESenhaValidos() throws Exception {
//	 new LoginFuncionalidades().acessarPortal(null);
//	 new LoginFuncionalidades().realizarLogin(Config.getProperty("email.barriga"),
//	 Config.getProperty("senha.barriga"));
//	 }
	//
	// @Quando("criar uma nova conta")
	// public void criarUmaNovaConta() throws MalformedURLException, IOException {
	// new AddContaFuncionalidade().addNovoUsuario();
	// }
	//
	// @Entao("validar que a conta foi adicionada com sucesso")
	// public void validarQueAContaFoiAdicionadaComSucesso() {
	// new ListarContasFuncionalidades().validarContaCriada();
	// }
	//
	// @Quando("criar movimentacao")
	// public void criarMovimentacao() throws MalformedURLException, IOException {
	// new CriarMovimentacaoFuncionalidade().criarMovimentacao();
	// }
	//
	//
	// @Entao("verificar se a movimentacao foi criada")
	// public void verificarSeAMovimentacaoFoiCriada() throws MalformedURLException,
	// IOException {
	// new ResumoMensalFuncionalidade().removerMovimentacao();
	// }
	//
	// @Entao("deslogar do portal")
	// public void deslogarDoPortal() throws MalformedURLException, IOException {
	// new ListarContasFuncionalidades().removerContas();
	// new MenuFuncionalidades().clicarMenuSair();
	// }

}
