package com.puppies.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.puppies.service.db.SingletonConnection;
import com.puppies.service.entity.Animal;
import com.puppies.service.entity.Annonce;



@Service
public class AnimalDaoImp implements AnimalDao{

	@Override
	public List<Animal> findAll() {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		List<Animal> animaux = new ArrayList<Animal>();
		try {
			//debut de transaction
			session.beginTransaction();


			Query q = session.createQuery("select animal from Animal animal");
			animaux = q.list();
			session.getTransaction().commit();
			return animaux;
		} catch (Exception e) {
			System.out.println("erreur dans la methode finAll() [AnimalDaoImp]");
			return null;
		}

	}
}
