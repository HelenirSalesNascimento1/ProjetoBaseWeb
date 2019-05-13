package funcionalidades;

import java.sql.SQLException;

import apoio.MassaPadraoString;

public class Conta {
	private MassaPadraoString massa;
	
	public Conta() throws ClassNotFoundException, SQLException {
		carregarMassaDados(massa =  new MassaPadraoString());
	}


	private void carregarMassaDados(MassaPadraoString massa) throws ClassNotFoundException, SQLException {
		massa.setNome("adwfesg");
	}

	
}
