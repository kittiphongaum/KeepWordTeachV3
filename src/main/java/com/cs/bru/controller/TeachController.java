package com.cs.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachInsertBean;
import com.cs.bru.dao.DateTimeDAO;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TeachDAO;

import com.cs.bru.model.Teach;

@RestController
public class TeachController {
   @Autowired
   TeachDAO teachDAO;
   SubjectDAO subjectDAO;
   DateTimeDAO dateTimeDAO;
   
   @RequestMapping("/insertTeach")
   public String insertTeach(@RequestBody Teach insertTeachSub) {
	   try {
		teachDAO.insertTeach(insertTeachSub);
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	   return "dashboard";
   }
   
}
