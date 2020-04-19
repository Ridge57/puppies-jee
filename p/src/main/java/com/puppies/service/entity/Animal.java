package com.puppies.service.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Animal {
	
@Id
@Column
private String famille;

public String getFamille() {
	return famille;
}

public void setFamille(String famille) {
	this.famille = famille;
}

public Animal() {
	super();
}

public Animal(String famille) {
	super();
	this.famille = famille;
}


}
