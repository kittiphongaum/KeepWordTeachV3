package com.cs.bru.login;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cs.bru.dao.UserDAO;


@Controller
public class LoginController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	LoginDAO loginDAO;
	
	
	@RequestMapping(value ="/index",method = RequestMethod.POST)
		public String authenLogin(String username, String password, String roleId,Model model) {
			String authen ="";
			Login bean = new Login();
			List<Login> findAll = new ArrayList<>();
			try {
			bean = loginDAO.login(username, password);
			findAll = loginDAO.findAll();
			if(bean.getLogUsername() != null) {
				
				authen="dashboard";
				
			}else {
				
				authen = "index";
			}
			
			} catch (Exception e) {
				// TODO: handle exception
			}
		return authen;
		}
	
}
