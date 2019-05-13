package funcionalidades.menuPrincipal;

public enum EnumMenuPrincipal {
		
		Home				("Home"),
		Contas 				("Contas"),
		CriarMovimentacao 	("Criar Movimentação"),
		ResumoMensal		("Resumo Mensal"),
		Sair				("Sair");
		
	
	private String opcao;
	private EnumMenuPrincipal(String opcao) {
		this.opcao = opcao;
	}
	
	public String getOpcao() {
		return opcao;
	}
}
