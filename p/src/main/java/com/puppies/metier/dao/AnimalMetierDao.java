package com.puppies.metier.dao;

import java.util.List;

import com.puppies.service.entity.Animal;

public interface AnimalMetierDao {
	
	public List<Animal> findAll();
}
