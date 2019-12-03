package br.com.agenda.persistence;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUtil;

import br.com.agenda.model.Contato;

public class ContatoDao {

	//EntityManagerFactory emf = PersistenceUtil.getEntityManagerFactory();
	EntityManager factory = null;

	public void salvar (Contato contato) throws Exception {
		
		//EntityManagerFactory emf;
		//this.factory = emf.createEntityManager();
		
		//try {
			//factory.getTransaction().begin();
			//if (contato.getId()== null) {
				//factory.persist(contato);
				
			//}else {
				//factory.merge(contato);
			//}
		//} 
	}
}
	
