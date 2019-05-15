package pages.page;

import java.util.List;

import org.openqa.selenium.WebElement;

import Controller.ControllerPage;

public class CadastroPage extends ControllerPage {

	public void preencherCnpj(String cnpj) throws Exception {

		this.setInput("//input[@id='partnerDocumentNumber']", cnpj);

	}

	public void preencherRazaoSocial(String razaoSocial) throws Exception {

		this.setInput("//input[@id='partnerCompanyName']", razaoSocial);

	}

	public void preencherLogradouro(String logradouro) throws Exception {

		this.setInput("//input[@id='partnerAddressStreet']", logradouro);

	}

	public void preencherNumero(String numero) throws Exception {

		this.setInput("//input[@id='partnerAddressNumber']", numero);

	}

	public void preencherComplemento(String complemento) throws Exception {

		this.setInput("//input[@id='partnerAddressComplement']", complemento);

	}

	public void preencherBairro(String bairro) throws Exception {

		this.setInput("//input[@id='partnerAddressNeighborhood']", bairro);

	}

	public void preencherCidade(String cidade) throws Exception {

		this.setInput("//input[@id='partnerAddressCity']", cidade);

	}

	public void selecionarUF(String uf) throws Exception {
		this.getLabel("//mat-select[@ng-reflect-placeholder='UF']").click();
		this.getLabel("//span[contains(text(),'" + uf + "')]").click();

	}

	public void preencherCep(String cep) throws Exception {

		this.setInput("//input[@id='partnerAddressPostalCode']", cep);

	}

	public void botaoContinuar() throws Exception {
		this.getButton("//button[@id='btnParceiros1']//span[@class='mat-button-wrapper'][contains(text(),'continuar')]")
				.click();
	}

	public void selecionarProduto(String debito) throws Exception {
		this.getLabel("//mat-select[@id='mat-select-6']").click();
		this.getLabel("//span[@class='mat-option-text'][contains(text(),'" + debito + "')]").click();

	}

	public void selecionarModalidadeSemJuros() throws Exception {
		this.getLabel("//mat-select[@id='mat-select-7']").click();
		this.getLabel("//span[contains(text(),'Parcelado sem juros')]").click();
	}

	public void selecionarModalidade() throws Exception {
		this.getLabel("//mat-select[@id='mat-select-7']").click();
		this.getLabel("//span[contains(text(),'À vista')]").click();
	}

	public void selecionarRamoAtividade() throws Exception {
		this.getLabel("//mat-select[@ng-reflect-placeholder='Ramo de Atividade']").click();
		this.getLabel("//span[contains(text(),'Bares')]").click();
	}

	public void preencherTaxa(String taxa) throws Exception {

		this.setInput("//input[@id='productTax']", taxa);
	}

	public void preencherTarifa(String tarifa) throws Exception {
		this.setInput("//input[@id='productFare']", tarifa);
	}

	public void btnAdicionarProdutor() throws Exception {
		this.getButton("//span[contains(text(),'adicionar produto')]").click();
	}

	public void botaoContinuar2() throws Exception {
		this.getButton("//button[@id='btnParceiros2']").click();
	}

	public void btnCompulsorio() throws Exception {
		this.getButton("//span[contains(text(),'Flex compulsório para todos os clientes')]").click();
	}

	public void btnCampanhaD2() throws Exception {
		this.getButton("//span[contains(text(),'Campanha D2')]").click();
	}

	public void preencherRegime(String regime) throws Exception {
		this.setInput("//input[@id='regime']", regime);
	}

	public void preencherFator1(String fator1) throws Exception {
		this.setInput("//input[@id='firstFactor']", fator1);
	}

	public void preencherFator2(String fator2) throws Exception {
		this.setInput("//input[@id='secondFactor']", fator2);
	}

	public void botaoContinuar3() throws Exception {
		this.getButton("//button[@id='btnParceiros3']").click();
	}

	public void preencherCarteira(String carteira) throws Exception {
		this.setInput("//input[@id='commercialPortfolio']", carteira);
	}

	public void preencherCelula(String celula) throws Exception {
		this.setInput("//input[@id='commercialCell']", celula);
	}

	public void preencherGrupoComercial(String grupoComercial) throws Exception {
		this.setInput("//input[@id='commercialGroup']", grupoComercial);
	}

	public void preencherCanal(String canal) throws Exception {
		this.setInput("//input[@id='commercialChannel']", canal);
	}

	public void selecionarPrecificaçaoClienteFinal() throws Exception {
		this.getLabel("//mat-select[@id='mat-select-1']//div[@class='mat-select-value']").click();
		this.getLabel("//span[@class='mat-option-text'][contains(text(),'Rede')]").click();
	}

	public void btnPermiteAntecipação() throws Exception {
		this.getButton("//mat-slide-toggle[@id='mat-slide-toggle-1']//div[@class='mat-slide-toggle-bar']").click();
	}

	public void selecionarPropriedadeTerminal() throws Exception {
		this.getLabel("//mat-select[@id='mat-select-2']//div[@class='mat-select-value']").click();
		this.getLabel("//span[@class='mat-option-text'][contains(text(),'Rede')]").click();
	}

	public void selecionarPropriedadeAplicaçao(String rede) throws Exception {
		this.getLabel("//mat-select[@id='mat-select-3']//div[@class='mat-select-value']").click();
		this.getLabel("//span[@class='mat-option-text'][contains(text(),'" + rede + "')]").click();
	}

	public void setFornecedordaAplicaçao(String aplicacao) throws Exception {
		this.setInput("//input[@id='comercialApplicationProperties']", aplicacao);
	}

	public void btnCanaisdeVenda() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-23']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnTLMKTAtivo() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-24']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnExecutivosRede() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-25']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnAutoCredenciamento() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-26']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnTipodeCaptura() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-7']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnTecnologiaCaptura() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-11']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void selecionarMarca() throws Exception {
		this.getLabel("//mat-select[@id='mat-select-4']//div[@class='mat-select-value']").click();
		this.getLabel("//span[@class='mat-option-text'][contains(text(),'Rede')]").click();
	}

	public void btnComunicaçao() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-16']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnComunicaçaoSerasa() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-17']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnComunicaçaoAtivacaoProdutos() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-18']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void selecionarCentralAtendimento() throws Exception {
		this.getLabel("//mat-select[@id='mat-select-5']//div[@class='mat-select-value']").click();
		this.getLabel("//span[@class='mat-option-text'][contains(text(),'Rede')]").click();
	}

	public void btnLimiteAtuacao() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-28']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnRegiaoGeografica() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-27']//div[@class='mat-checkbox-inner-container']").click();
	}	

	public void btnMatrizRisco() throws Exception {
		this.getButton("//mat-slide-toggle[@id='mat-slide-toggle-4']//div[@class='mat-slide-toggle-bar']").click();
	}

	public void btnCredenciamento() throws Exception {
		this.getButton("//mat-checkbox[@id='mat-checkbox-2']//div[@class='mat-checkbox-inner-container']").click();
	}

	public void btnCadastrarParceiro() throws Exception {
		this.getButton("//span[contains(text(),'cadastrar parceiro')]").click();
	}

	public void preencherNomeParceiro(String nome) throws Exception {
		this.setInput("//input[@id='partnerCompanyNickname']", nome);
	}

	public void validarMdrSucesso() throws Exception {
		List<WebElement> allvalue = this.table("//table[@class='mat-elevation-z8 mat-table']");
		for (int i = 0; i < allvalue.size(); i++) {
			System.out.println("Value é : " + allvalue.get(i).getText());
			System.out.println(allvalue.get(i).getAttribute("textContent"));
		}

	}

	public void preencherProduto(String credito) throws Exception {
		this.getLabel("//mat-select[@ng-reflect-placeholder='Produto']").click();
		this.getLabel("//span[contains(text(),'" + credito + "')]").click();
	}

	public List<String> preencherModalidade(String crediario) throws Exception {
		this.getLabel("//mat-select[@ng-reflect-placeholder='Modalidade']").click();
		this.getLabel("//span[contains(text(),'" + crediario + "')]").click();
		return null;

	}

	public boolean validarMsg(String msg) throws Exception {

		return this.getMsg("//div[@class='cdk-visually-hidden']", msg);
	}

	public boolean validarMsgDeErro(String msg) throws Exception {
		return this.getMsg("//strong[contains(text(),'" + msg + "')]", msg);
	}
	
	public boolean validarMsgDeErroAdicionarProduto(String msg) throws Exception {
		return this.getMsg("//div[@class='cdk-visually-hidden']", msg);
	}

	public void btnCondiçõesComerciais() throws Exception {
		this.getButton("//div[contains(text(),'Condições Comerciais - MDR')]").click();
	}

	public void btnCondiçõesComerciaisFlex() throws Exception {
		this.getButton("//div[contains(text(),'Condições Comerciais - Flex')]").click();
	}

	public void btnParametrosDaParceria() throws Exception {
		this.getButton("//div[contains(text(),'Parâmetros da Parceria')]").click();
	}

}