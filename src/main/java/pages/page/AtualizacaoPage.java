package pages.page;

import Controller.ControllerPage;

public class AtualizacaoPage extends ControllerPage {
	
	
	public void botãoAlterarParceiro() throws Exception{
		this.getButton("//button[@id='registerNew']").click();
	}

}
