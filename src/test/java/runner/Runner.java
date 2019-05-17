package runner;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = "pretty",
		monochrome = true,
		snippets = SnippetType.CAMELCASE,
		dryRun = false,
		strict = false, 
	    glue = {"classpath:steps"}, 
	    features = {"classpath:features"},
	    tags = {"@CadastroComSucesso"}
		)

public class Runner {  
}
