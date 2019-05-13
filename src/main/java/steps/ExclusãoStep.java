package steps;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import funcionalidades.Exclus�oFuncionalidade;

public class Exclus�oStep {
	
	MassaDadosUtils dados = new MassaDadosUtils();
	
	@Dado("excluo os dados de condi��es comerciais MDR")
	public void excluoOsDadosDeCondi��esComerciaisMDR() throws Exception {
		Exclus�oFuncionalidade exclus�o = new Exclus�oFuncionalidade();
		exclus�o.excluirProduto();
	}

	@Dado("validar a exclus�o de MDR")
	public void validarAExclus�oDeMDR() {
	
		//Exclus�oFuncionalidade exclus�o = new Exclus�oFuncionalidade();
		//exclus�o.validarExclusao();
	}

}
