package telas;

import Controller.ControllerPage;

public class TelaMenuPrincipal extends ControllerPage{

	public void acessarMenu(String opcao, String subMenu) {
		try {
			System.out.println();
			this.select("//a[@text='"+ opcao +"']");
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	
		
}
