package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;


import com.cs.bru.dao.UserDAO;

import com.cs.bru.model.User;


@RestController
public class UserController {
	@Autowired
	UserDAO userDAO;
	
	Map<Long, User> UserUpMap = new HashMap<Long, User>();
	
	@RequestMapping("/UserFoo/{id}")
	public List<User> userFoo(){
		List<User>list = new ArrayList<>();
		list=userDAO.findAll();
		return list;
	}

		
	
	
	@PutMapping(value = "/update/{id}")
	public User updateUser( @PathVariable String id,  @RequestBody User userUpdate) {
		User updateUser = userDAO.findById(id);
		try {
			updateUser.setUserFname(userUpdate.getUserFname());
			updateUser.setUserLname(userUpdate.getUserLname());
			updateUser.setPositionTeach(userUpdate.getPositionTeach());
			updateUser.setFaculty(userUpdate.getFaculty());
			updateUser.setMojor(userUpdate.getMojor());
			updateUser.setBaseHour(userUpdate.getBaseHour());
			updateUser.setBaseKrm(userUpdate.getBaseKrm());
			userDAO.update(userUpdate);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return updateUser;
	}
}
