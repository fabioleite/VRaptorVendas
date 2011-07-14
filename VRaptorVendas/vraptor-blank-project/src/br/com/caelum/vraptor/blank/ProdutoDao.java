package br.com.caelum.vraptor.blank;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;

@Component
public class ProdutoDao {
	private final EntityManager em;

	public ProdutoDao(EntityManager em) {
		this.em = em;
	}

	@SuppressWarnings("unchecked")
	public List<Produto> listaTodos() {
//		Produto p1 = new Produto("Abacaxi", "fruta boa", 20.0);
//		Produto p2 = new Produto("Pêra", "fruta marron", 2.0);
//		ArrayList<Produto> prods = new ArrayList<Produto>();
//		prods.add(p1);
//		prods.add(p2);
		
		return em.createQuery("SELECT p FROM Produtos p").getResultList();
	}

	public void adiciona(Produto produto) {
		em.persist(produto);
	}

	public Produto find(Produto produto) {
		return em.find(Produto.class, produto.getId());
	}

	public void atualizar(Produto produto) {
		em.merge(produto);
		
	}

	public void remover(Produto produto) {
		em.remove(produto);
	}

}
