package steps;

import java.sql.SQLException;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import funcionalidades.CadastroFuncionalidade;

public class AtualizacaoStep {

	MassaDadosUtils dados = new MassaDadosUtils();
	CadastroFuncionalidade cadastroFuncionalidade;
	String cnpj = "";
	
	public AtualizacaoStep() throws ClassNotFoundException, SQLException {
		cadastroFuncionalidade = new CadastroFuncionalidade();
	}

	@Dado("que cadastro uma parceria")
	public void queCadastroUmaParceria() throws Exception {
		cadastroFuncionalidade.preencherParceiros();
		cadastroFuncionalidade.preencherParêmetrosParceirias();
		cadastroFuncionalidade.preecherCondiçõesComerciais();
		cadastroFuncionalidade.btnContinuarMdr();
		cadastroFuncionalidade.preencherDadosFlex();
		cadastroFuncionalidade.btnCadastrarParceiro();
		cadastroFuncionalidade.validarMsgDeCadastroComSucesso();
	}

	@Dado("que carrego os dados da parceria cadastrada")
	public void queCarregoOsDadosDaParceriaCadastrada() throws Exception {
		cadastroFuncionalidade.setCnpj();
		

	}
	@Dado("removo um item na lista de MDR")
	public void removoUmItemNaListaDeMDR() {
		
	}

}
