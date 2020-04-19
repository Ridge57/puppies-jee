package com.puppies.service.db;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SingletonConnection {

	public static SessionFactory sessionFactory;
	static {
		try {
			sessionFactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			System.out.println("connection with success");
					
		} catch (Exception e) {
			System.out.println("erreur de connection");
			e.printStackTrace();
		}
	}
	
	public static SessionFactory getSessionFactory()
	{
		return sessionFactory;
	}
}
