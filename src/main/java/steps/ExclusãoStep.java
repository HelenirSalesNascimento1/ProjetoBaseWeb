package steps;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import funcionalidades.ExclusãoFuncionalidade;

public class ExclusãoStep {
	
	MassaDadosUtils dados = new MassaDadosUtils();
	ExclusãoFuncionalidade exclusãoFuncionalidade;
	
	
	@Dado("removo os dados de condicoes comerciais MDR")
	public void excluoOsDadosDeCondiçõesComerciaisMDR() throws Exception {
		exclusãoFuncionalidade.excluirProduto();
	}

	@Dado("validar a exclusao de MDR")
	public void validarAExclusaoDeMDR() {
	
	}
	
	@Dado("clico no botao excluir parceiro")
	public void clicarBotaoExcluir() throws Exception {
		exclusãoFuncionalidade.clicarBotaoExcluir();
	}

}
