package br.com.agenda.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.agenda.model.Contato;
import br.com.agenda.negocio.ContatoNG;

public class ContatoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ContatoNG negocio;
	private Contato contato;

	public ContatoController() {
        this.contato = new Contato();
        this.negocio = new ContatoNG ();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("cadContato.jsp");
		rd.forward(request, response);
	}

}
