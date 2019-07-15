package steps;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;

import org.docx4j.openpackaging.packages.WordprocessingMLPackage;
import org.junit.Rule;
import org.junit.rules.TestName;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import framework.FrameworkDriver;
import framework.FrameworkWordEvidence;
import utils.WebDriverFactory;
import utils.evidencia.Evidencia;

public class Hooks {

	WebDriverFactory webDriverFactory = new WebDriverFactory();
		
	
	@Rule
	public TestName testName = new TestName();
	
	private List<String> wordTableString = new ArrayList<String>();
	@Before("@GoogleChrome")
	public void setGoogleChromeDriver(Scenario s) throws MalformedURLException, IOException {
		System.setProperty("webdriver.chrome.driver", "./src/test/resources/drivers/chromedriver.exe");
		webDriverFactory.setNavegador(new FrameworkDriver());
		((FrameworkDriver) webDriverFactory.getWebDriver()).setScenarioName(s.getName());
		new Evidencia(testName.getMethodName());
	}

	@After("@generate-word")
    public void generateWord(Scenario s) throws Exception {
        Properties prop = new Properties();
        String pathProperties;
        pathProperties = "src/test/resources/properties/config.properties";
        prop.load(new FileInputStream(pathProperties));
        String path = ((FrameworkDriver) webDriverFactory.getWebDriver()).utils.getEvidencePath();
        String fileName = ((FrameworkDriver) webDriverFactory.getWebDriver()).utils.getExampleName();
        FrameworkWordEvidence evidence = new FrameworkWordEvidence();
        WordprocessingMLPackage template = evidence.getTemplate(prop.getProperty("templateWord"));

         //evidence.replacePlaceholder(template, this.wordTableString.get(0), "<ambiente>");
         String timeStamp = new SimpleDateFormat("dd/MM/yyyy").format(Calendar.getInstance().getTime());
         evidence.replacePlaceholder(template, timeStamp, "<data>");
         //evidence.replacePlaceholder(template, this.wordTableString.get(1), "<id_nomeCT>");
         //evidence.replacePlaceholder(template, this.wordTableString.get(2), "<objetivo>");
         //evidence.replacePlaceholder(template, this.wordTableString.get(3), "<resultado_esperado>");
         //evidence.replacePlaceholder(template, this.wordTableString.get(4), "<resultado_obtido>");
         //evidence.replacePlaceholder(template, this.wordTableString.get(5), "<executor>");
         //evidence.replacePlaceholder(template, this.wordTableString.get(6), "<sp>");
         //evidence.replacePlaceholder(template, this.wordTableString.get(7), "<cdt>");

        evidence.createWordEvidence(template, path, fileName);
    }
	
	@After
	public void finalizaDrivers() {
		webDriverFactory.quitDriver();
		Evidencia.fecharDocumento();
	}

	
}
