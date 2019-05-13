package telas;

import Controller.ControllerPagee;

public class TelaMenuPrincipal extends ControllerPagee{

	public void acessarMenu(String opcao, String subMenu) {
		try {
			System.out.println();
			this.select("//a[@text='"+ opcao +"']");
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	
		
}
