package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.login.LoginDAO;
import com.cs.bru.model.User;
@Controller
public class LoginController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	LoginDAO loginDAO;
	@Autowired
	SubjectDAO subjectDAO;
	
	
   	    @RequestMapping(value ="/login",method = RequestMethod.POST)
		public String authenLogin(String username, String password,Model model,HttpServletRequest request) {
			String authen ="";
			User userLog = new User();
			User userlist = new User();
			
			List<User> UseridAll = new ArrayList<>();
			
			try {
			
				userLog = userDAO.login(username, password);
				userlist = userDAO.findById(userLog.getUserId());
			
			if(userLog.getUserId() != null && userLog.getUserPass() != null ) {
				if (userLog.getPositionTeach().equals("U")) { 
					
					request.getSession().setAttribute("loginUser",userLog);
					request.getSession().setAttribute("listUser", userlist);
					
					authen="index1";
				} else {
					request.getSession().setAttribute("LoginUser", userLog);
					request.getSession().setAttribute("listUser", userlist);
					authen="login";
				}
				
				
			}else {
				model.addAttribute("messessError","F");
				authen = "login";
			}
			
			} catch (Exception e) {
			 e.printStackTrace();
			}
		return authen;
		}
	@RequestMapping("/logout")
	private String logout(HttpServletRequest request, Model model) {
		request.getSession().removeAttribute("LoginUser");
		request.getSession().removeAttribute("listUser");
		model.addAttribute("messessError", "L");

		return "login";
	}
}
