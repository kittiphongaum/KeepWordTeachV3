package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.UserDAO;

import com.cs.bru.model.User;

@RestController
public class UserController {
	@Autowired
	UserDAO userDAO;
	
	
	@RequestMapping("/UserFoo")
	public List<User> userFoo(){
		List<User>list = new ArrayList<>();
		list=userDAO.findAll();
		return list;
	}
}
