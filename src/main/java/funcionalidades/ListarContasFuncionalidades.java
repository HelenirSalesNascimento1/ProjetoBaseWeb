package funcionalidades;

import telas.ListarContasPage;

public class ListarContasFuncionalidades {

	ListarContasPage listarContasPage = new ListarContasPage();

	public void validarContaCriada() {

		if (listarContasPage.contaCriadaComSucesso()) {
			System.out.println("\tValida��o Conta Criada Com Sucesso: Passou!");
		} else {
			System.out.println("\tValida��o Conta Criada Com Sucesso: Falhou!");
		}

	}

	public void removerContas() {
		new MenuFuncionalidades().listarContas();
		listarContasPage.clickBtnRemoverConta();
	}
}
