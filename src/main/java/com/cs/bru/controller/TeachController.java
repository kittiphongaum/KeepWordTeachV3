package com.cs.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachInsertBean;
import com.cs.bru.dao.DateTimeDAO;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.DateTime;
import com.cs.bru.model.Subject;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;

@RestController
public class TeachController {
   @Autowired
   TeachDAO teachDAO;
   @Autowired
   SubjectDAO subjectDAO;
   @Autowired
   DateTimeDAO dateTimeDAO;
   
   
   
   @RequestMapping("/insertTeach")
   public String insertTeach(@RequestBody Teach insertTeachSub,DateTime dateTimeDAO1,Subject subject ) {
	   try {
		teachDAO.insertTeach(insertTeachSub);
		dateTimeDAO.insertDateTime(dateTimeDAO1);
		subjectDAO.insertSubject(subject);
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	   return "dashboard";
   }
   
}
