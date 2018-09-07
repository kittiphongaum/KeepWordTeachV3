package com.cs.bru.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.User;

@Service
public class ServiceUser {
	@Autowired
	private UserDAO userDAO;
	
	
	public User get(String id) {
		
		return userDAO.findById(id);		
	}
	
	
	
	
	
	
	
}
