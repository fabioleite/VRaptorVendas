package br.com.caelum.vraptor.blank;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;

@Resource
public class ProdutosController {

	private ProdutoDao dao;
	private Result result;
	private Validator validator;

	public ProdutosController(ProdutoDao dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Produto> lista() {
		return dao.listaTodos();
	}

	public void form() {
	}
	
	public Produto editar(Produto produto) {
		produto = dao.find(produto);
		validator.onErrorUsePageOf(ProdutosController.class).form();
		return produto;
	}
	
	public void atualizar(Produto produto) {
		if(produto.getNome().equals("")) {
	        validator.add(new ValidationMessage("nome.prod","nome.vazio"));
	    }
		
		if(produto.getPreco() == null) {
	        validator.add(new ValidationMessage("preco.prod","preco.invalido"));
	    }
		
		validator.onErrorUsePageOf(ProdutosController.class).form();
		dao.atualizar(produto);
		result.redirectTo(ProdutosController.class).lista();
	}
	
	public void remover(Produto produto) {
		produto = dao.find(produto);
		dao.remover(produto);
		result.redirectTo(ProdutosController.class).lista();
	}

	public void adiciona(Produto produto) {
//		validator.checking(new Validations() {
//			{
//				that(!produto.getNome().isEmpty(), "produto.nome", "nome.vazio");
//				that(produto.getPreco() > 0, "produto.preco", "preco.invalido");
//			}
//		});
		
		if(produto.getNome().equals("")) {
	        validator.add(new ValidationMessage("nome.prod","nome.vazio"));
	    }
		
		if(produto.getPreco() == null) {
	        validator.add(new ValidationMessage("preco.prod","preco.invalido"));
	    }
		
		validator.onErrorUsePageOf(ProdutosController.class).form();
		dao.adiciona(produto);
		result.redirectTo(ProdutosController.class).lista();
	}
	
	

	public void setDao(ProdutoDao dao) {
		this.dao = dao;
	}

	public ProdutoDao getDao() {
		return dao;
	}

}
