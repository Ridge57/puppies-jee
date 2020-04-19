package com.puppies.service.entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="annonce")
public class Annonce implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id_annonce;

	
	@Column(name="datePublication")
	private String date_publication=(String)(new SimpleDateFormat("yyyy/MM/dd").format(new Date()));
	
	@Column(name="dateDebut")
	private String date_debut;
	
	@Column(name="dateFin")
	private String date_fin;
	
	@Column(name="animal")
	private String animal;
	
	@Column(name="id_annonceur")
	private int id_annonceur;
	
	@Column(name="description")
	private String description;
	
	@Column(name="prix")
	private int prix;
	
	@Column(name="region")
	private String region;
	
	@Column(name="status")
	private String status;
	
	@ManyToOne
	@JoinColumn(name="id_reserveur", referencedColumnName="id")
	private User user;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	public int getId_annonce() {
		return id_annonce;
	}
	public void setId_annonce(int id_annonce) {
		this.id_annonce = id_annonce;
	}
	public String getDate_publication() {
		return date_publication;
	}
	public void setDate_publication(String date_publication) {
		this.date_publication = date_publication;
	}
	public String getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(String date_debut) {
		this.date_debut = date_debut;
	}
	public String getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(String date_fin) {
		this.date_fin = date_fin;
	}
	public String getAnimal() {
		return animal;
	}
	public void setAnimal(String animal) {
		this.animal = animal;
	}
	public int getId_annonceur() {
		return id_annonceur;
	}
	public void setId_annonceur(int id_annonceur) {
		this.id_annonceur = id_annonceur;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Annonce() {
		super();
	}

	public Annonce(int id_annonce, String date_publication, String date_debut, String date_fin, String animal,
			int id_annonceur, String description, int prix, String region, String status, User user) {
		super();
		this.id_annonce = id_annonce;
		this.date_publication = date_publication;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.animal = animal;
		this.id_annonceur = id_annonceur;
		this.description = description;
		this.prix = prix;
		this.region = region;
		this.status = status;
		this.user = user;
	}
	public Annonce(String date_publication, String date_debut, String date_fin, String animal, int id_annonceur,
			String description, int prix, String region, String status, User user) {
		super();
		this.date_publication = date_publication;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.animal = animal;
		this.id_annonceur = id_annonceur;
		this.description = description;
		this.prix = prix;
		this.region = region;
		this.status = status;
		this.user = user;
	}
	@Override
	public String toString() {
		return "Annonce [id_annonce=" + id_annonce + ", date_publication=" + date_publication + ", date_debut="
				+ date_debut + ", date_fin=" + date_fin + ", animal=" + animal + ", id_annonceur=" + id_annonceur
				+ ", description=" + description + ", prix=" + prix + ", region=" + region + ", status=" + status
				+ ", user=" + user + "]";
	}
	
	
	
	
	
}

