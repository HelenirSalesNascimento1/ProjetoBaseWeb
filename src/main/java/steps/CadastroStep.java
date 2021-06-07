package steps;

import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.SQLException;

import apoio.MassaDadosUtils;
import apoio.MassaPadraoString;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;
import pages.page.CadastroPage;
import pages.page.LoginPage;
import readers.Config;

public class CadastroStep {

	MassaDadosUtils dados = new MassaDadosUtils();
	private MassaPadraoString massa;
	CadastroPage cadastro = new CadastroPage();
	LoginPage loginPage = new LoginPage();

	public CadastroStep() throws ClassNotFoundException, SQLException, MalformedURLException, IOException {
		carregarMassaDados(massa = new MassaPadraoString());

	}

	private void carregarMassaDados(MassaPadraoString massa)
			throws ClassNotFoundException, SQLException, MalformedURLException, IOException {
		massa.setNome(MassaDadosUtils.gerarNomeAleatorio(5));
		massa.setLogin(MassaDadosUtils.gerarNomeAleatorio(5) + "@gmail.com");
		massa.setSenha(MassaDadosUtils.gerarNumeroAleatorio(6));

	}

	@Dado("clico no botao novo usuario")
	public void clicoNoBotaoNovoUsuario() throws Exception {
		cadastro.clicarBotaoNovoUsuario();
	}

	@Quando("preencho os dados validos")
	public void preenchoOsDadosValidos() throws Exception {
		loginPage.preencherNomeSeuBarriga(massa.getNome());
		loginPage.preencherLoginSeuBarriga(massa.getLogin());
		loginPage.preencherSenhaSeuBarriga(massa.getSenha());

	}

	@Quando("clico no botao cadastrar usuario")
	public void clicoNoBotaoCadastrarUsuario() throws Exception {
		cadastro.clicarBotaoCadastrar();
	}

	@Entao("apresentar mensagem cadastro com sucesso")
	public void apresentarMensagemCadastroComSucesso() throws Exception {
		cadastro.validaMsgCadastroSucesso("Usuário inserido com sucesso");
	}

	@Dado("preencho login invalido")
	public void preenchoLoginInvalido() {
		massa.setLogin(Config.getProperty("email.invalido.barriga"));
	}

	@Dado("preencho senha valida")
	public void preenchoSenhaValida() throws Exception {
		loginPage.preencherSenhaSeuBarriga(massa.getSenha());

	}

	@Dado("preencho nome valido")
	public void preenchoNomeValido() throws Exception {
		loginPage.preencherNomeSeuBarriga(massa.getNome());
	}

	@Entao("apresentar mensagem email invalido")
	public void apresentarMensagemEmailInvalido() throws Exception {
		cadastro.validaMsgInvalidaEmail("Email é um campo obrigatório");
	}

	@Dado("preencho login valido")
	public void preenchoLoginValido() throws Exception {
		loginPage.preencherLoginSeuBarriga(massa.getLogin());

	}

	@Entao("apresentar mensagem senha invalido")
	public void apresentarMensagemSenhaInvalido() throws Exception {
       cadastro.validaMsgInvalidaSenha("Senha é um campo obrigatório");
	}
	
	@Dado("valido nome ivalido")
	public void validoNomeIvalido() {
		massa.setNome(Config.getProperty("nome.invalido.barriga"));
		
	}

	@Entao("apresentar mensagem nome invalido")
	public void apresentarMensagemNomeInvalido() throws Exception {
		cadastro.validaMsgInvalidaNome("Nome é um campo obrigatório");
		
	}

}
