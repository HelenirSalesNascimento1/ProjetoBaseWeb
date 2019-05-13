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
		listaURL.add("http://partner.ui.redelabs.tech/#/login");
		listaURL.add("Link2");
		listaURL.add("Link3");
		listaURL.add("Link4");
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