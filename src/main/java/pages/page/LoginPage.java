package pages.page;

import Controller.ControllerPage;

public class LoginPage extends ControllerPage {

	public void preecherLogin(String login) throws Exception {
		this.setInput("//input[@id='username']", login);

	}

	public void preecherSenha(String senha) throws Exception {
		this.setInput("//input[@id='password']", senha);

	}

	public void btnLogin() throws Exception {
		getButton("//button[@id='btnLogin']").click();
	}

	public boolean validarMsg(String msg) throws Exception {
		return this.getMsg("//p[contains(text(),'Cadastro de Parceiros')]", msg);

	}

	public boolean validarMsgError(String msg) throws Exception {
		return this.getMsg("//div[@class='cdk-visually-hidden']", msg);
	}

	public boolean validarMsgErroLogin(String msg) throws Exception {
		return this.getMsg("//mat-error[@class='mat-error ng-star-inserted']", msg);
	}
}
