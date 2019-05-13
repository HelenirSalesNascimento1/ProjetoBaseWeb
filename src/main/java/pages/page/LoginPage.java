package pages.page;

import Controller.ControllerPage;

public class LoginPage extends ControllerPage {

	public void preecherLogin(String login) throws Exception {
		this.setInput("//input[@ng-reflect-name='username']", login);
	}

	public void preecherSenha(String senha) throws Exception {
		this.setInput("//input[@ng-reflect-name='password']", senha);
		
	}       

	public void btnLogin() throws Exception {
		getButton("//button[@class='mat-button']").click();
}
	public boolean validarMsg(String msg) throws Exception {
      return this.getMsg("//p[contains(text(),'Cadastro de Parceiros')]", msg);
 
} }
