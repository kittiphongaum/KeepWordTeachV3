package com.cs.bru.controller;

import java.sql.SQLDataException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.UserBean;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.Test;
import com.cs.bru.model.User;
import com.cs.bru.service.ServiceUser;



@RestController
public class UserController {
	@Autowired
	UserDAO userDAO;
	TeachDAO  teachDAO;
	
	@Autowired
	private ServiceUser userService;
	

	
	@RequestMapping("/userAll")
	public List<User> userFoo(){
		List<User>list = new ArrayList<>();
		list=userDAO.findAll();
		return list;
	}
	

	@GetMapping("/Customers/{id}")
	public  User getUser(@PathVariable String id){	
		
		return userService.get(id);
	}
	public User UserUpdate(@PathVariable String id,@RequestBody User userUpdate1) {
		
		userDAO.update(userUpdate1);
		return null;
	}
	
	@PutMapping(value = "/update1")
	public String updateUser( @PathVariable String id,  @RequestBody User userUpdate) {
		User bean1 = new User();
		
		try {
			 bean1 = userDAO.findById(userUpdate.getUserId());
		
			userDAO.update(userUpdate);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "user";
	}
	// Show User By ID
		@RequestMapping(value = "/UserById",method = RequestMethod.GET)
		public List<User> userByIdBean(String Id) throws SQLDataException{
			UserBean UserId = new UserBean();
			UserId = userDAO.userBean();
			
			 List<User> listUserId = new ArrayList<>();
			 listUserId = userDAO.findOne(UserId.getUserbean());
			
			return listUserId;
		}
		
		
		@RequestMapping("/insertUser")
		   public User insertUser(@RequestBody User insertUser) {
			   try {
				userDAO.insertUser(insertUser);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			   return insertUser;
		   }
		
		
	//  path Update
		@RequestMapping( value = "/gotoUpdate",method = RequestMethod.POST)
		public User gotoUpdate(Model model ,@RequestBody User SeachUpdate) {	
			User userByBean = new User();
				
			try {
				userByBean = userDAO.findById(SeachUpdate.getUserId());
				/*if(userByBean.getUserId() != null) {
					model.addAttribute("messesUpdate", "");
					model.addAttribute("resultBean", userByBean);
				}*/
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return userByBean;
		}
		//update
		@RequestMapping(value="/updateUser",method = RequestMethod.POST)
		public User update(Model model,@RequestBody User userUpdate) {	
			User userByBean = new User();
			userByBean = userDAO.findById(userUpdate.getUserId());
			try {
				userDAO.update(userUpdate);
				/*userByBean = userDAO.findById(userUpdate.getUserId());*/
				/*model.addAttribute("resultBean", userByBean);
				model.addAttribute("messesUpdate", "S");*/
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				/*model.addAttribute("resultBean", userByBean);
				model.addAttribute("messesUpdate", "F");*/
			}
			return userByBean;
		}
		@GetMapping("/userFileById/{id}")
		public  User getUserByid(@PathVariable String id){	
		   User list =new User();
		   list=userDAO.findById(id);
			 return list;
		}
		@GetMapping("/userFileById")
		public  List<User> getFooUser(){	
		  List<User> list=new ArrayList<>();
		   list=userDAO.findAll();
			 return list;
		}
}
