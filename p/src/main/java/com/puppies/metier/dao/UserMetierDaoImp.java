package com.puppies.metier.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.puppies.service.dao.UserDao;
import com.puppies.service.entity.User;

@Service
public class UserMetierDaoImp implements UserMetierDao{
	
	
	@Autowired
	private UserDao dao;

	@Override
	public int createUser(User u) {
		return dao.createUser(u);
	}

	@Override
	public List<User> getAllUsers() {
		return dao.getAllUsers();
	}

	@Override
	public void delete(User u) {
		dao.delete(u);
		
	}

	@Override
	public User update(User u) {
		return dao.update(u);
	}

	@Override
	public User find(User u) {
		// TODO Auto-generated method stub
		return dao.find(u);
	}

}
