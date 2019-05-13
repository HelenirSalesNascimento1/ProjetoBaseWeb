package funcionalidades.menuPrincipal;

import telas.TelaMenuPrincipal;

public class MenuPrincipal {

	public void acessarContas(String subMenu) {
		acessarMenu(EnumMenuPrincipal.Contas.getOpcao(), subMenu);
		
	}

	private void acessarMenu(String opcao, String subMenu) {
		TelaMenuPrincipal tela = new TelaMenuPrincipal();
		tela.acessarMenu(opcao, subMenu);
	}

	
}
