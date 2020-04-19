package com.puppies.metier.dao;

import java.util.List;

import com.puppies.service.entity.Annonce;

public interface AnnonceMetierDao {
	public int create(Annonce a);
	public List<Annonce> getAll();
	public List<Annonce> getAllAbsolute();
	public int update (Annonce a);
	public void delete (int id);
	public List<Annonce> findAnnonce(String animal, String region);
	public void reservation(int id_annonce,int id_reserveur);
	public List<Annonce> getReserved(int id_reserveur);
	public List<Annonce> getPosted(int id_annonceur);
	public Annonce getAnnonceById(int id_annonce);

}
