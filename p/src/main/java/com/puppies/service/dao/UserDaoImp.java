package com.puppies.service.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.puppies.service.db.SingletonConnection;
import com.puppies.service.entity.User;


@Service
public class UserDaoImp implements UserDao{
	

	@Override
	public int createUser(User u) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		//debut de transaction
		Transaction tx = session.beginTransaction();
		try {
			
			
			//ajouter p
			session.save(u);
			
			//compiler la transaction
			tx.commit();
			return 1;
		} catch (Exception e) {
			System.out.println("erreur d'ajout user");
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<User> getAllUsers() {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		List<User> listUsers = new ArrayList<User>();
		try {
			//debut de transaction
			session.beginTransaction();
			
			//Hibernate Query Language
			//ATTENTION : Personne fait référence au nom de la classe et non celui de la table
			listUsers = session.createQuery("from User").list();
			 return listUsers;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erreur dans la methode getAllPersonne");
			return null;
		}
	}

	@Override
	public void delete(User u) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		try {
			//debut de transaction
			session.beginTransaction();
			
			//ajouter p
			session.delete(u);
			
			//compiler la transaction
			session.getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erreur dans la methode delete");
		}
	}

	@Override
	public User update(User u) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		try {
			//debut de transaction
			session.beginTransaction();
			
			//ajouter p
			User us = (User) session.merge(u);
			
			
			//compiler la transaction
			session.getTransaction().commit();
			return us;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erreur dans la méthode update()");
			return null;
		}
	}

	@Override
	public User find(User u) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		try {
			//debut de transaction
			session.beginTransaction();
			
			Query q = session.createQuery("select user from User user where user.nom = :userName and user.password =:userPass");
			q.setParameter("userName", u.getNom());
			q.setParameter("userPass", u.getPassword());
			User us = (User) q.list().get(0);
			session.getTransaction().commit();
			return us;
		} catch (Exception e) {
			System.out.println("erreur dans la methode find ");
			return null;
		}
	}

}
