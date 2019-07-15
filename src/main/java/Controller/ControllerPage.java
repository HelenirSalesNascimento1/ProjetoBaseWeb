package Controller;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import utils.WebDriverFactory;

public abstract class ControllerPage {

	WebDriverFactory webDriverFactory;
	private String msgError;
	protected WebDriver webDriver;
	private Integer timeOut = 100;

	protected WebDriverWait webDriverWait;

	public ControllerPage() {
		webDriverFactory = new WebDriverFactory();
		webDriverFactory.setTimeOut(30);
		webDriver = WebDriverFactory.getDriver();
		this.webDriverWait = new WebDriverWait(this.webDriver, timeOut);
	}

	public void acessarPagina(String URL) throws Exception {
		try {
			webDriverFactory.getWebDriver().get(URL);
		} catch (Exception e) {
			System.out.println("Erro ao carregar Nagevador com Url: " + URL);
			throw e;
		}
	}

	public WebElement getElement(String XPATH_INPUT) throws Exception {
		try {
			return webDriverFactory.getWebDriver().findElement(By.xpath(XPATH_INPUT));
		} catch (Exception e) {
			System.out.println("Erro ao encontrar xPath: " + XPATH_INPUT);
			throw e;
		}

	}

	public List<WebElement> getListElement(String XPATH_INPUT) throws Exception {
		try {
			return webDriverFactory.getWebDriver().findElements(By.xpath(XPATH_INPUT));
		} catch (Exception e) {
			System.out.println("Erro ao encontrar xPath: " + XPATH_INPUT);
			throw e;
		}

	}

	public void setInput(String xPath, String value) throws Exception {
		WebElement ele = getElement(xPath);
		try {
			ele.clear();
			ele.sendKeys(value);
		} catch (Exception e) {
			throw e;
		}
		
	}

	public void setInput(String xPath, String value, String atributo) throws Exception {
		WebElement ele = getElement(xPath);
		Thread.sleep(timeOut);
		try {
			String text = ele.getAttribute(atributo);
			for (Integer i = 0; i <= text.length(); i++) {
				ele.sendKeys(Keys.BACK_SPACE);
			}

			ele.sendKeys(value);
		} catch (Exception e) {
			throw e;
		}

	}

	public void setInput(String xPath, String value, Integer timeWait) throws Exception {

		WebElement ele = getElement(xPath);
		Thread.sleep(timeWait);
		try {
			ele.clear();
			ele.sendKeys(value);
		} catch (Exception e) {
			throw e;
		}

	}

	public WebElement getButton(String xPath) throws Exception {
		return getElement(xPath);
	}

	public WebElement getLabel(String xPath) throws Exception {
		return getElement(xPath);
	}

	public WebElement getTextField(String xPath) throws Exception {
		return getElement(xPath);
	}

	public void setTextFild(String xPath, String value) throws Exception {
		setInput(xPath, value);
	}

	public Boolean getMsg(String XPATH_MSG_LOGIN_SUCCESS, String msg) throws Exception {

		try {
			String aux = webDriverFactory.getWebDriver().findElement(By.xpath(XPATH_MSG_LOGIN_SUCCESS)).getText();
			if (aux.equalsIgnoreCase(msg))
				return true;
			return false;

		} catch (Exception e) {

			throw e;

		}

	}

	public void select(String xPath, String value, Integer position) throws Exception {
		WebElement wb = obterElementoWeb(xPath, position);
		Select select = new Select(wb);
		select.selectByVisibleText(value);

	}

	public void select(String xPath, String value) throws Exception {

		WebElement wb = obterElementoWeb(xPath, 0);
		Select select = new Select(wb);
		select.selectByVisibleText(value);

	}

	public void select(String xPath) throws Exception {
		WebElement wb = obterElementoWeb(xPath, 0);
		Select select = new Select(wb);
		select.selectByVisibleText(xPath.substring(xPath.indexOf("@") + 1, xPath.lastIndexOf("]")));
	}

	public void ComboBox(String xPath, String value) throws Exception {

		WebElement comboboxElement = getElement(xPath);
		Select combobox = new Select(comboboxElement);
		combobox.selectByValue(value);
	}

	private WebElement obterElementoWeb(String xPath, int posicao) throws Exception {

		By by = retornarBy(xPath, posicao);

		try {
			webDriverWait.until(ExpectedConditions.visibilityOfElementLocated(by));
			WebElement wb = webDriver.findElement(by);
			return wb;
		} catch (Exception e) {
			msgError = "Elemento: '" + xPath + "' nao encontrado ";
			System.out.println(msgError);
			throw e;
		}

	}

	protected By retornarBy(String xPath, int posicao) {
		String xpath = xPath;
		if (posicao + 1 > 1) {
			String pos = String.valueOf(posicao);
			xpath = xpath.replace("1", pos);
		}
		return By.xpath(xpath);
	}

	public List<WebElement> table(String xpath) throws Exception {
		List<WebElement> allvalue = webDriver.findElements(By.xpath(xpath));

		return allvalue;

	}

}
