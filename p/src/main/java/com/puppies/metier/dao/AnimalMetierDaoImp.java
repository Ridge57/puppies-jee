package com.puppies.metier.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.puppies.service.dao.AnimalDao;
import com.puppies.service.entity.Animal;

@Service
public class AnimalMetierDaoImp implements AnimalMetierDao{
	
	@Autowired
	private AnimalDao dao;

	@Override
	public List<Animal> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

}
