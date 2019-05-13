package telas;

import Controller.ControllerPage;

public class PageLogin extends ControllerPage {

	public void clicarButton() throws Exception {
		this.getButton("//button[text() = 'Entrar']").click();
	}

	public void preencherEmail(String user) throws Exception {
		this.setTextFild("//input[@id = 'email']", user);
	}

	public void preencherSenha(String password) throws Exception {
		this.setTextFild("//input[@id = 'senha']", password);
	}

	public Boolean validarMsg(String msg) throws Exception {
		return this.getMsg("//div[contains(text(), 'Bem vindo')]", msg); 
	}

}
