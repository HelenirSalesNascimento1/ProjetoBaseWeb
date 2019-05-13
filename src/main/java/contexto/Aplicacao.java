package contexto;

import utils.WebDriverFactory;

public class Aplicacao {
	
	
	public void iniciar(String url) throws Exception{
		//ControleWeb.chromeHeadless(Navegador.CHROME);
//		ControleWeb.determinarNavegador(Navegador.CHROME);
//		ControleWeb.abrirBrowser(url);
		
	}
	
//	
//	public void iniciar() throws Exception{
//		ControleWeb.determinarNavegador(Navegador.CHROME);
//		ControleWeb.abrirBrowser(Contexto.recuperarInstancia().recuperarLinkDev());
//	}
//	
//	public void fechar(){
//		ControleWeb.fecharBrowser();
//	}
	
	public void acessarPagina(String url) throws Exception{
		try {
			WebDriverFactory webDriverFactory = new WebDriverFactory();
			webDriverFactory.getWebDriver().get(url);
		}catch (Exception e) {
			System.out.println("Erro ao carregar Nagevador com Url: " + url);
			throw e;
		}
	}
	
}