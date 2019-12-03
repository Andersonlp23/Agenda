package br.com.agenda.utils;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

//agendaPU
public class PersistenceUtil {
	
	private static EntityManagerFactory factory;
	
	public static EntityManagerFactory getEntityManagerFactory() {
		
		if (factory == null) {
			factory = Persistence.createEntityManagerFactory("agendaPU");
		}
		return factory;
	}
	
	public static void shutdown() {
		
		if (factory != null) {
			factory.close();
		}
	}
}
