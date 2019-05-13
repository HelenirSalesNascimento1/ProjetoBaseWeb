package steps;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import funcionalidades.ExclusãoFuncionalidade;

public class ExclusãoStep {
	
	MassaDadosUtils dados = new MassaDadosUtils();
	
	@Dado("excluo os dados de condições comerciais MDR")
	public void excluoOsDadosDeCondiçõesComerciaisMDR() throws Exception {
		ExclusãoFuncionalidade exclusão = new ExclusãoFuncionalidade();
		exclusão.excluirProduto();
	}

	@Dado("validar a exclusão de MDR")
	public void validarAExclusãoDeMDR() {
	
		//ExclusãoFuncionalidade exclusão = new ExclusãoFuncionalidade();
		//exclusão.validarExclusao();
	}

}
