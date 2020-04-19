package com.puppies.service.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;	
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="nom")
	private String nom;
	
	@Column(name="password")
	private String password;
	
	@Column(name="admin")
	private int admin = 0;


	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public User() {
		super();
	}

	public User(String nom, String password) {
		super();
		this.nom = nom;
		this.password = password;
	}
	
	
	public User(String nom, String password, int admin) {
		super();
		this.nom = nom;
		this.password = password;
		this.admin = admin;
	}

	
	public User(int id, String nom, String password, int admin) {
		super();
		this.id = id;
		this.nom = nom;
		this.password = password;
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "User [nom=" + nom + ", id=" + id + ", password=" + password + ", admin=" + admin + "]";
	}
}
