package pages.page;

import Controller.ControllerPage;

public class ExclusãoPage extends ControllerPage{
	
	public void btnExcluirProduto() throws Exception {
		getButton("//button[@class='mat-icon-button mat-warn']").click();
		
	}
	public void btnExcluirParceiro() throws Exception {
		getButton("//button[@id='deletePartner']").click();
	}
	public void botaoExcluirParceiro() throws Exception {
		getButton("//button[@id='deletePartner']").click();
		
	}
	

}
