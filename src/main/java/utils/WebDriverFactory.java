package utils;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class WebDriverFactory {
	static WebDriver driver;
	private Integer timeOut = 10;
	
	public void setNavegador(WebDriver driver) {
		WebDriverFactory.driver = driver;
		timeOutModule();
		driver.manage().window().maximize();
	}

	private void timeOutModule() {
		driver.manage().timeouts().implicitlyWait(getTimeOut(), TimeUnit.SECONDS);
	}

	public WebDriver getWebDriver() {
		return driver;
	}

	public void quitDriver() {
		driver.quit();
	}
	
	private Integer getTimeOut() {
		return timeOut;
	}
	
	public void setTimeOut(Integer timeSeconds) {
		timeOut = timeSeconds;
	}

	public static WebDriver getDriver() {
		return driver;
	}

	public static void setDriver(WebDriver driver) {
		WebDriverFactory.driver = driver;
	}
}
