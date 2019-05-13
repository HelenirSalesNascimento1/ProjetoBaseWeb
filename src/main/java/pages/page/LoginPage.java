package pages.page;

import Controller.ControllerPagee;

public class LoginPage extends ControllerPagee {

	public void preecherLogin(String login) throws Exception {
		this.setInput("//input[@id='mat-input-0']", login);
	}

	public void preecherSenha(String senha) throws Exception {
		this.setInput("//input[@id='mat-input-1']", senha);
	}       

	public void btnLogin() throws Exception {
		getButton("//button[@class='mat-button']").click();
}
	public boolean validarMsg(String msg) throws Exception {
      return this.getMsg("//p[contains(text(),'Cadastro de Parceiros')]", msg);
 
} }
