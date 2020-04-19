package com.puppies.service.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.puppies.service.db.SingletonConnection;
import com.puppies.service.entity.Annonce;

@Service
public class AnnonceDaoImp implements AnnonceDao {

	public AnnonceDaoImp() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public int create(Annonce a) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		int ok=0;
		try {
			//debut de transaction
			session.beginTransaction();
			
			//ajouter p
			session.save(a);
			
			//compiler la transaction
			session.getTransaction().commit();
			ok=1;
			return ok;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("erreur d'ajout");
			return ok;
		}
	}

	@Override
	public List<Annonce> getAll() {
		//res = stm.executeQuery("SELECT * FROM annonce WHERE status = 'disponible'");
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		List<Annonce> annonces = new ArrayList<Annonce>();
		try {
			//debut de transaction
			session.beginTransaction();
			

			Query q = session.createQuery("select annonce from Annonce annonce where annonce.status = :etat");
			q.setParameter("etat", "disponible");
			annonces = q.list();
			session.getTransaction().commit();
			return annonces;
		} catch (Exception e) {
			System.out.println("erreur dans la methode getAll()");
			return null;
	}
}
	

	@Override
	public int update(Annonce a) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		try {
			//debut de transaction
			session.beginTransaction();
			
			//ajouter p
			session.merge(a);
			
			
			//compiler la transaction
			session.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erreur dans la méthode update()");
			return 0;
		}
	}

	@Override
	public void delete(int id) {
	//stm.executeUpdate("DELETE FROM annonce WHERE id =" + id + ";");
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		try {
			//debut de transaction
			session.beginTransaction();
		
			Annonce a=(Annonce)session.load(Annonce.class, id);
			session.delete(a);
			session.getTransaction().commit();

		} catch (Exception e) {
			System.out.println("erreur dans la methode delete()");
	}
}

	@Override
	public List<Annonce> findAnnonce(String animal, String region) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		List<Annonce> annonces = new ArrayList<Annonce>();
		try {
			//debut de transaction
			session.beginTransaction();
			

			Query q = session.createQuery("select annonce from Annonce annonce where annonce.animal = :famille and annonce.region = :lieu and annonce.status = :etat");
			q.setParameter("famille", animal);
			q.setParameter("lieu", region);
			q.setParameter("etat", "disponible");
			annonces = q.list();
			session.getTransaction().commit();
			return annonces;
		} catch (Exception e) {
			System.out.println("erreur dans la methode getAll()");
			return null;
	}
	}

	@Override
	public void reservation(int id_annonce, int id_reserveur) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("update Annonce set id_reserveur = :var1, status = :var2 where id = :var3");
			query.setParameter("var1", id_reserveur);
			query.setParameter("var2", "reservé");
			query.setParameter("var3", id_annonce);
			int i = query.executeUpdate();
			System.out.println(i);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("erreur dans la methode reservation()");
		}

	}

	@Override
	public List<Annonce> getReserved(int id_reserveur) {
		// "SELECT * FROM annonce WHERE id_reserveur = " + id_reserveur + ""
		//res = stm.executeQuery("SELECT * FROM annonce WHERE status = 'disponible'");
			Session session = SingletonConnection.getSessionFactory().getCurrentSession();
			List<Annonce> annonces = new ArrayList<Annonce>();
			try {
				//debut de transaction
				session.beginTransaction();
				
	
				Query q = session.createQuery("select annonce from Annonce annonce where annonce.id_reserveur = :id");
				q.setParameter("id", id_reserveur);
				annonces = q.list();
				return annonces;
			} catch (Exception e) {
				System.out.println("erreur dans la methode getReserved");
				return null;
			}
	}

	@Override
	public List<Annonce> getPosted(int id_annonceur) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		List<Annonce> annonces = new ArrayList<Annonce>();
		try {
			//debut de transaction
			session.beginTransaction();
			

			Query q = session.createQuery("select annonce from Annonce annonce where annonce.id_annonceur = :id");
			q.setParameter("id", id_annonceur);
			annonces = q.list();
			return annonces;
		} catch (Exception e) {
			System.out.println("erreur dans la methode getReserved");
			return null;
		}
	}

	@Override
	public List<Annonce> getAllAbsolute() {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		List<Annonce> annonces = new ArrayList<Annonce>();
		try {
			//debut de transaction
			session.beginTransaction();


			Query q = session.createQuery("select annonce from Annonce annonce");
			annonces = q.list();
			return annonces;
		} catch (Exception e) {
			System.out.println("erreur dans la methode getAllAbsolute()");
			return null;
		}
	}

	@Override
	public Annonce getAnnonceById(int id_annonce) {
		Session session = SingletonConnection.getSessionFactory().getCurrentSession();
		Annonce an = new Annonce();
		try {
			//debut de transaction
			session.beginTransaction();
			

			Query q = session.createQuery("select annonce from Annonce annonce where annonce.id = :id_annonce");
			q.setParameter("id_annonce", id_annonce);
			an = (Annonce) q.list().get(0);
			return an;
		} catch (Exception e) {
			System.out.println("erreur dans la methode getReserved");
			return null;
		}
	}
}
