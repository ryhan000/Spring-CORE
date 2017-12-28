package com.livingoncodes.springWeb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.livingoncodes.springWeb.dao.Notice;
import com.livingoncodes.springWeb.dao.NoticesDAO;
import com.livingoncodes.springWeb.dao.User;
import com.livingoncodes.springWeb.dao.UsersDao;

@Service("usersService")
public class UsersService {

	private UsersDao usersDao;

	@Autowired
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}


	public void create(User user) {
		usersDao.create( user);
		
	}
	
	public boolean exists(String username) {
		return usersDao.exists(username);
	}
	
	public List<User> getAllUsers() {
		return usersDao.getAllUsers();
	}


}
