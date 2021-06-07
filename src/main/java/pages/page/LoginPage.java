package pages.page;

import Controller.ControllerPage;

public class LoginPage extends ControllerPage {



public boolean validarMsgSeuBarriga(String msg) throws Exception {
      return this.getMsg("//div[contains(text(), 'Bem vindo, Automation!')]", msg);
 
} 
public boolean validaMsgSeubarrigaInvalido(String msg) throws Exception{
	return this.getMsg("//div[contains(text(), 'Email é um campo obrigatório')]", msg);
}
public boolean validaMsgSeubarrigaInvalidoSenha(String msg) throws Exception{
	return this.getMsg("//div[contains(text(), 'Senha é um campo obrigatório')]", msg);
}


public void preencherLoginSeuBarriga(String login) throws Exception {
   this.setInput("//input[@id='email']", login);
   
   
}	

public void preencherSenhaSeuBarriga(String senha) throws Exception{
   this.setInput("//input[@id='senha']", senha);
   
}

public void preencherNomeSeuBarriga(String senha) throws Exception{
	   this.setInput("//input[@id='nome']", senha);
	   
	}
public void preencherButtonSeuBarriga() throws Exception{
  this.getButton("//button[contains(text(), 'Entrar')]").click();
}
public boolean validaMensagemSeuBarriga(String msg) throws Exception{
   return this.getMsg("//div[contains(text(), " + msg + ")]", msg);
   
}
	
	
	
	
//	public void preecherLogin(String login) throws Exception {
//		this.setInput("//input[@id='username']", login);
//
//	}
//
//	public void preecherSenha(String senha) throws Exception {
//		this.setInput("//input[@id='password']", senha);
//
//	}
//
//	public void btnLogin() throws Exception {
//		getButton("//button[@id='btnLogin']").click();
//	}
//
//	public boolean validarMsg(String msg) throws Exception {
//		return this.getMsg("//p[contains(text(),'Cadastro de Parceiros')]", msg);
//
//	}
//
//	public boolean validarMsgError(String msg) throws Exception {
//		return this.getMsg("//div[@class='cdk-visually-hidden']", msg);
//	}
//
//	public boolean validarMsgErroLogin(String msg) throws Exception {
//		return this.getMsg("//mat-error[@class='mat-error ng-star-inserted']", msg);
//	}
	
	
}
