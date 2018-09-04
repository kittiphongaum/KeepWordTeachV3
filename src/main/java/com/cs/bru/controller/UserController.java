package com.cs.bru.controller;

import java.sql.SQLDataException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.UserBean;
import com.cs.bru.dao.UserDAO;

import com.cs.bru.model.User;
import com.cs.bru.service.ServiceUser;


@RestController
public class UserController {
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	private ServiceUser userService;
	

	
	@RequestMapping("/UserAll")
	public List<User> userFoo(){
		List<User>list = new ArrayList<>();
		list=userDAO.findAll();
		return list;
	}

	@GetMapping("/Customers/{id}")
	public  User getUser(@PathVariable String id){	
		
		return userService.get(id);
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
	// Show User By ID
		@RequestMapping(value = "/UserById",method = RequestMethod.GET)
		public List<User> travelExpensesBean(String Id) throws SQLDataException{
			UserBean UserId = new UserBean();
			UserId = userDAO.userBean();
			
			 List<User> listUserId = new ArrayList<>();
			 listUserId = userDAO.findOne(UserId.getUserbean());
			
			return listUserId;
		}
}
