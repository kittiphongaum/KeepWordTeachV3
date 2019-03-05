package com.cs.bru.admincontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.User;

@Controller
public class FooAdminController {

	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/people-add")
	public String peopleadd() {
		return "admin/people-add";
	}
	@RequestMapping("/history-add")
	public String historyuser() {
		return "admin/history-add";
	}

	@RequestMapping("/subject-add")
	public String subjectadd() {
		return "admin/subject-add";
	}
	@RequestMapping("/holiday-add")
	public String holidayadd() {
		return "admin/holiday-add";
	}
	@RequestMapping("/dataadmin-add")
	public String dataadmin() {
		return "admin/dataadmin-add";
	}
	@PostMapping(path="insertUser1")
	   public String insertUser1(@ModelAttribute("SpringWeb")User insertUser) {
		   try {
			userDAO.insertUser(insertUser);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		   return "admin/people-add";
	   }
	
	
	}
