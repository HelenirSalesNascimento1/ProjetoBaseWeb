package steps;

import java.sql.SQLException;

import apoio.MassaDadosUtils;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
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
	public void preenchoOCampoRazaoSocial(String razaoSocial) throws Exception {
		atualizacaFuncionalidade.preencherRazaoSocialEmBranco(dados.switValue(razaoSocial));
		

	}

	@Dado("preencho o campo logradouro com valor {string}")
	public void preenchoOCampoLogradouroComValor(String logradouro) throws Exception {
		atualizacaFuncionalidade.preencherLogradouroEmBranco(dados.switValue(logradouro));
	}

	@Dado("preencho o campo numero com valor {string}")
	public void preenchoOCampoNumeroComValor(String numero) throws Exception {
		atualizacaFuncionalidade.preencherNumeroEmBranco(dados.switValue(numero));
	}

	@Dado("preencho o campo bairro com valor {string}")
	public void preenchoOCampoBairroComValor(String bairro) throws Exception {
		atualizacaFuncionalidade.preencherBairroEmBranco(dados.switValue(bairro));
	}

	@Dado("preencho o campo cidade com valor {string}")
	public void preenchoOCampoCidadeComValor(String cidade) throws Exception {
		atualizacaFuncionalidade.preencherCidadeEmBranco(dados.switValue(cidade));
	}

	@Dado("preencho o campo uf com valor {string}")
	public void preenchoOCampoUfComValor(String uf) {
		atualizacaFuncionalidade.preencherUFEmBranco(dados.switValue(uf));
	}

	@Dado("preencho o campo cep com valor {string}")
	public void preenchoOCampoCepComValor(String cep) throws Exception {
		atualizacaFuncionalidade.preencherCEPEmBranco(dados.switValue(cep));
	}

	@Dado("preencho o campo NomeParceiro com valor {string}")
	public void preenchoOCampoNomeParceiroComValor(String nomeParceiro) throws Exception {
		atualizacaFuncionalidade.preencherNomeParceiro(dados.switValue(nomeParceiro));
		
	}
	
	@Dado("clico no botao alterar parceiro")
	public void clicoNoBotaoAlterarParceiro() throws Exception {
		atualizacaFuncionalidade.clicarNoBotaoAlterarParceiro();
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
	public void preenchoOCampoTAXAComValor(String taxa) throws Exception {
		atualizacaFuncionalidade.preencherCampoTaxaEmBranco(dados.switValue(taxa));
		cadastroFuncionalidade.preecherCondiçõesComerciais();
		
		
	}
	@Dado("preencho o campo TARIFA com valor {string}")
	public void preenchoOCampoTARIFAComValor(String tarifa) throws Exception {
		atualizacaFuncionalidade.preencherCampoTarifaEmBranco(dados.switValue(tarifa));
		cadastroFuncionalidade.preecherCondiçõesComerciais();
	}
	
	@Entao("apresentar mensagem A razão social é inválida.")
	public void apresentarMensagemARazãoSocialÉInválida() throws Exception {
		atualizacaFuncionalidade.validarMsgRazaoSocial();
	}
	
	@Entao("apresentar mensagem O logradouro é inválida.")
	public void apresentarMensagemOLogradouroÉInválida() throws Exception {
		atualizacaFuncionalidade.validarMsgLogradouro();
	}
	@Entao("apresentar mensagem O número é inválido.")
	public void apresentarMensagemONumeroÉInválida() throws Exception {
		atualizacaFuncionalidade.validarMsgNumero();
	}
	@Entao("apresentar mensagem O bairro é inválido.")
	public void apresentarMensagemOBairroÉInválida() throws Exception {
		atualizacaFuncionalidade.validarMsgBairro();
	}
	@Entao("apresentar mensagem A cidade é inválida.")
	public void apresentarMensagemACidadeÉInválida() throws Exception {
		atualizacaFuncionalidade.validarMsgCidade();
	}
	@Entao("apresentar mensagem O CEP é inválido.")
	public void apresentarMensagemACEPÉInválida() throws Exception {
		atualizacaFuncionalidade.validarMsgCEP();
	}

	@Entao("apresentar mensagem O nome do parceiro é inválido.")
	public void apresentarMensagemONomeParceiroÉInválida() throws Exception {
		atualizacaFuncionalidade.validarMsgNomeParceiro();
	}
	@Entao("apresentar mensagem de sucesso")
	public void apresentarMensagemDeSucesso() throws Exception {
		atualizacaFuncionalidade.validarMsgAlteracaoParceiro();
	}
	@Dado("seleciono a data fim e data inicio do campo calendario parametros parceiria")
	public void selecionoOCampoCaledarioDeParametrosParceirias() throws Exception {
		atualizacaFuncionalidade.selecionarCalendarioAtualizacao();
	}
	@Dado("atualizar a data inicio e data corrente")
	public void atualizarADataInicioEDataCorrente() throws Exception {
		atualizacaFuncionalidade.validarDataInicioAnterioDataCorrente();

	}
	@Dado("atualizar a data fim e data corrente")
	public void atualizarADataFimEDataCorrente() throws Exception {
		atualizacaFuncionalidade.validarDataFimAnteriorDataCorrente();

	}
	
	
	
	
}
