package steps;

import java.sql.SQLException;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import funcionalidades.AtualizacaFuncionalidade;
import funcionalidades.CadastroFuncionalidade;

public class AtualizacaoStep {

	MassaDadosUtils dados = new MassaDadosUtils();
	CadastroFuncionalidade cadastroFuncionalidade;
	AtualizacaFuncionalidade atualizacaFuncionalidade;

	String cnpj = "";

	public AtualizacaoStep() throws ClassNotFoundException, SQLException {
		cadastroFuncionalidade = new CadastroFuncionalidade();
		atualizacaFuncionalidade = new AtualizacaFuncionalidade();
	}

	@Dado("que cadastro uma parceria")
	public void queCadastroUmaParceria() throws Exception {
		cadastroFuncionalidade.preencherParceiros();
		cadastroFuncionalidade.botaoContinuarCadastroParceiro();
		cadastroFuncionalidade.preencherParametrosParceirias();
		cadastroFuncionalidade.clicarContinuar3();
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

	@Dado("preencho o campo razao social {string}")
	public void preenchoOCampoRazaoSocial(String razaoSocial) {
		atualizacaFuncionalidade.preencherRazaoSocialEmBranco(dados.switValue(razaoSocial));

	}

	@Dado("preencho o campo logradouro com valor {string}")
	public void preenchoOCampoLogradouroComValor(String logradouro) {
		atualizacaFuncionalidade.preencherLogradouroEmBranco(dados.switValue(logradouro));
	}

	@Dado("preencho o campo numero com valor {string}")
	public void preenchoOCampoNumeroComValor(String numero) {
		atualizacaFuncionalidade.preencherNumeroEmBranco(dados.switValue(numero));
	}

	@Dado("preencho o campo bairro com valor {string}")
	public void preenchoOCampoBairroComValor(String bairro) {
		atualizacaFuncionalidade.preencherBairroEmBranco(dados.switValue(bairro));
	}

	@Dado("preencho o campo cidade com valor {string}")
	public void preenchoOCampoCidadeComValor(String cidade) {
		atualizacaFuncionalidade.preencherCidadeEmBranco(dados.switValue(cidade));
	}

	@Dado("preencho o campo uf com valor {string}")
	public void preenchoOCampoUfComValor(String uf) {
		atualizacaFuncionalidade.preencherUFEmBranco(dados.switValue(uf));
	}

	@Dado("preencho o campo cep com valor {string}")
	public void preenchoOCampoCepComValor(String cep) {
		atualizacaFuncionalidade.preencherCEPEmBranco(dados.switValue(cep));
	}

	@Dado("preencho o campo NomeParceiro com valor {string}")
	public void preenchoOCampoNomeParceiroComValor(String nomeParceiro) {
		atualizacaFuncionalidade.preencherNomeParceiro(dados.switValue(nomeParceiro));
		
	}
	
	@Dado("clico no botao alterar parceiro")
	public void clicoNoBotaoAlterarParceiro() throws Exception {
	}
	
	@Dado("clico condicoes comerciais")
	public void clicoCondiçõedsComerciais() throws Exception {
		cadastroFuncionalidade.btnCondiçaoComerciaisMDR();
		
	}
	@Dado("clico condicoes comerciais flex")
	public void clicoCondiçoesComerciaisFlex() throws Exception {
		cadastroFuncionalidade.btnCondiçaoComerciaisFlex();
	}
	
	@Dado("clico par�metros da parceria")
	public void clicoParametrosDaParceria() throws Exception {
		cadastroFuncionalidade.btnParametrosDaParceria();
	}
	@Dado("preencho o campo TAXA com valor {string}")
	public void preenchoOCampoTAXAComValor(String taxa) {
		atualizacaFuncionalidade.preencherCampoTaxaEmBranco(dados.switValue(taxa));
		
	}
	@Dado("preencho o campo TARIFA com valor {string}")
	public void preenchoOCampoTARIFAComValor(String tarifa) {
		atualizacaFuncionalidade.preencherCampoTarifaEmBranco(dados.switValue(tarifa));
	}

}
