package pages.page;

import Controller.ControllerPage;

public class AtualizacaoPage extends ControllerPage {
	
	
	public void botãoAlterarParceiro() throws Exception{
		this.getButton("//button[@id='registerNew']").click();
	}
	
	public void calendarioInicio(int data) throws Exception {
		this.getButton("//mat-datepicker-toggle[@id='commercialBeginningValidity']//button[@class='mat-icon-button']").click();
		this.getButton("//div[contains(text(),'" + (data - 2) + "')]").click();
	}
	public void calendarioFim(int value) throws Exception {
		this.getButton("//mat-datepicker-toggle[@id='commercialEndValidity']//button[@class='mat-icon-button']").click();
		this.getButton("//div[contains(text(),'" + value + "')]").click();
	}

}
