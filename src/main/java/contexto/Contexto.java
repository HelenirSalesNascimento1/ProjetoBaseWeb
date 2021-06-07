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
		listaURL.add("https://seubarriga.wcaquino.me/login");
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
	
	public String recuperarLinkTeste(){
		int posicao = 3;
		return listaURL.get(posicao);
	}
 }