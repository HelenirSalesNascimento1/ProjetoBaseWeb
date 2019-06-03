package readers;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

import exceptions.ExceptionUtils;



public class Config {
	/**
	 * Este metodo l� um arquivo de properties e retorna o valor correspondente pela chave informada
	 * @author F�bio Vaz
	 * @since 27/09/2018
	 */
	public static String getProperty(String value) throws ExceptionUtils {
		
		Properties properties = null;
		InputStream inputStream = null;
		
		try {
		inputStream = new FileInputStream(System.getProperty("user.dir") + "./src/test/resources/properties/config.properties");
			properties = new Properties();
			properties.load(inputStream); 
			return properties.getProperty(value).trim();
		} catch (Exception exception) {
			System.out.println(exception.getStackTrace());
		} 
				
		return properties.getProperty(value).trim();
	}

}
