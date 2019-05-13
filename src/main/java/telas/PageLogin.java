package telas;

import Controller.ControllerPagee;

public class PageLogin extends ControllerPagee {

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
