package com.puppies.service.dao;


import java.util.List;

import com.puppies.service.entity.User;

public interface UserDao {
	public int createUser(User u);
	public List<User> getAllUsers();
	public User find(User u);
	public void delete(User u);
	public User update(User u);
	
}
