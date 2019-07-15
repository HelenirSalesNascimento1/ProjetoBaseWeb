package apoio;

import javax.xml.bind.annotation.XmlRootElement;

import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@XmlRootElement
@JsonInclude(JsonInclude.Include.NON_NULL)
public class MassaCadastro {

	private String cnpj;
	private String razaoSocial;
	private String nomeParceiro;
	private String logradouro;
	private String numero;
	private String complemento;
	private String bairro;
	private String cidade;
	private String uf;
	private String cep;
	private String taxaDebito;
	private String tarifaDebito;
	private String taxaCredito;
	private String tarifaCredito;
	private String regime;
	private String fator1;
	private String fator2;
	private String parametrosParceria;
	private String marca;
	private String comunicaçao;
	private String centralAtendimento;
	private String limiteAtuacao;
	private String matrizRisco;
	private String credenciamento;
	private String negativo;
	private String zerado;
	private String login;
	private String senha;
	private String carteira;
	private String celula;
	private String grupoComercial;
	private String canal;
	private String regimeMDR;
	private String telefone;
	private String email;

}
