package steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import funcionalidades.menuPrincipal.MenuPrincipal;

public class AcicionarConta {
	MenuPrincipal menu = new MenuPrincipal();
	
	@Dado("acesso o submenu {string} do menu Contas")
	public void acessoOSubmenuDoMenu(String subMenu) {
		menu.acessarContas(subMenu);
	}

	@Dado("adiciono uma conta")
	public void adicionoUmaConta() {
	    // Write code here that turns the phrase above into concrete actions
	}
//
//	@Entao("a mensagem de conta adicionada é exibida")
//	public void aMensagemDeContaAdicionadaÉExibida() {
//	    // Write code here that turns the phrase above into concrete actions
//	}


}
