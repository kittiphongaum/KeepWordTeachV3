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
	
	
   	    @RequestMapping(value ="/index",method = RequestMethod.POST)
		public String authenLogin(String username, String password,Model model,HttpServletRequest request) {
			String authen ="";
			User bean = new User();
			User bean1 = new User();
			List<User> UseridAll = new ArrayList<>();
			try {
			
			bean = userDAO.login(username, password);
			UseridAll = userDAO.findOne(bean.getUserId());
			
			if(bean.getUserId() != null && bean.getUserPass() != null ) {
				if (bean.getPositionTeach().equals("U")) { 
					request.getSession().setAttribute("loing",bean);
					request.getSession().setAttribute("listUser", UseridAll);
					
					authen="user";
				} else {
					request.getSession().setAttribute("LoginUser", bean);
					authen="adminWelcom";
				}
				
				
			}else {
				model.addAttribute("messessError","F");
				authen = "index";
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

		return "index";
	}
}
