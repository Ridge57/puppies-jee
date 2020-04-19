package com.puppies.metier.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.puppies.service.dao.AnnonceDao;
import com.puppies.service.entity.Annonce;

@Service
public class AnnonceMetierDaoImp implements AnnonceMetierDao{
	
	@Autowired
	private AnnonceDao dao;

	@Override
	public int create(Annonce a) {
		return dao.create(a);
	}

	@Override
	public List<Annonce> getAll() {
		return dao.getAll();
	}

	@Override
	public List<Annonce> getAllAbsolute() {
		return dao.getAllAbsolute();
	}

	@Override
	public int update(Annonce a) {
		return dao.update(a);
	}

	@Override
	public void delete(int id) {
		dao.delete(id);
		
	}

	@Override
	public List<Annonce> findAnnonce(String animal, String region) {
		return dao.findAnnonce(animal, region);
	}

	@Override
	public void reservation(int id_annonce, int id_reserveur) {
		dao.reservation(id_annonce, id_reserveur);
		
	}

	@Override
	public List<Annonce> getReserved(int id_reserveur) {
		return dao.getReserved(id_reserveur);
	}

	@Override
	public List<Annonce> getPosted(int id_annonceur) {
		return dao.getPosted(id_annonceur);
	}

	@Override
	public Annonce getAnnonceById(int id_annonce) {
		return dao.getAnnonceById(id_annonce);
	}

}
