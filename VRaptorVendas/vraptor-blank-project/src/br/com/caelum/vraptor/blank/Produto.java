package br.com.caelum.vraptor.blank;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="Produtos")
public class Produto {
	@Id
	@GeneratedValue
    private Long id;
    
    private String nome;
    private String descricao;
    private Double preco;
    
    public Produto() {
		this.nome = "";
		this.descricao = "";
		this.preco = 0.0;
	}
    
	public Produto(String nome, String descricao, Double preco) {
		this.nome = nome;
		this.descricao = descricao;
		this.preco = preco;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Double getPreco() {
		return preco;
	}
	public void setPreco(Double preco) {
		this.preco = preco;
	}
    
    
}