package com.cs.bru.login;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.Subject;
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
		public String authenLogin(String username, String password,Model model) {
			String authen ="";
			User bean = new User();
			List<User> findAll = new ArrayList<>();
			try {
			bean = userDAO.login(username, password);
			findAll = userDAO.findAll();
			if(bean.getUserId() != null && bean.getUserPass() != null ) {
				
				
				if (bean.getPositionTeach().equals("U")) { 
					
						
					authen="dashboard";
				} else {
					
					authen="admin";
				}
				
				
			}else {
				
				authen = "index";
			}
			
			} catch (Exception e) {
			 e.printStackTrace();
			}
		return authen;
		}
	
}
