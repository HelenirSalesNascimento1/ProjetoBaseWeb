package funcionalidades;

import org.openqa.selenium.By;

import telas.PageLogin;
import utils.WebDriverFactory;

public class LoginFuncionalidades2 {

	WebDriverFactory DriverFactory = new WebDriverFactory();
	PageLogin loginPage = new PageLogin();

	public void acessarPortal(String url) throws Exception {
		loginPage.acessarPagina(url);

	} 

	public void realizarLogin(String user, String senha) throws Exception {

		loginPage.preencherEmail(user);
		loginPage.preencherSenha(senha);
//		/Evidencia.tirarPrint("Senha");

		loginPage.clicarButton();
		//Evidencia.tirarPrint("Login Realizado com Sucesso");
		// loginPage.getButton("//button[text() = 'Entrar']");

		// System.out.println("Login realizado com sucesso");

		// Evidencia.tirarPrint("Tela de Login", loginPage.preencherEmail(),
		// loginPage.preencherSenha(),
		// loginPage.clicarButton());

	}

	public void validarMensagem(String msg) throws Exception {

		System.out.println(loginPage.validarMsg(msg) + msg);

	}

	public boolean expressBooleanMsg() {

		boolean msgValidacao = true;

		try {
			DriverFactory.getWebDriver()
					.findElement(By.xpath("//div[contains(text(), 'Problemas com o login do usu�rio')]"));

			msgValidacao = true;

		} catch (Exception e) {

			msgValidacao = false;

		}
		return msgValidacao;
	}

}
