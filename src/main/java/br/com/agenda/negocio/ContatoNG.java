package br.com.agenda.negocio;

import br.com.agenda.model.Contato;
import br.com.agenda.persistence.ContatoDao;

public class ContatoNG {
	
	@SuppressWarnings("unused")
	private ContatoDao dao;
	
	public ContatoNG() {
		this.dao = new ContatoDao();
	}
	
	public void salvar (Contato contato) {
		this.salvar(contato);
	}

}
