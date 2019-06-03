package contexto;

import java.util.ArrayList;

public class Contexto {
	
	public static final boolean exibirPrintLog = true;
	public static Contexto instancia;
	
	public static Contexto recuperarInstancia(){
		if(instancia == null){
			instancia = new Contexto();
		}
		return instancia;
	} 

	
	private static ArrayList<String> listaURL = new ArrayList<String>();{
		listaURL.add("http://dev-rl7-partner-ui.s3-website-us-east-1.amazonaws.com/#/");
		listaURL.add("http://localhost:4200/#/login");
		listaURL.add("http://partner.ui.redelabs.tech.s3-website-us-east-1.amazonaws.com/#/login");
		listaURL.add("");
	}
	 
	public String recuperarLinkDev(){
		int posicao = 0;
		return listaURL.get(posicao);
	}
	
	public String recuperarLinkHom(){
		int posicao = 0;
		return listaURL.get(posicao);
	}
	
	public String recuperarLink(){
		int posicao = 0;
		return listaURL.get(posicao);
	}
 }