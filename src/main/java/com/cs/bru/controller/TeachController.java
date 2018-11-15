package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachInsertBean;
import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.DateTimeDAO;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.DateTime;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
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

   @RequestMapping(value="/teachCon", method = RequestMethod.GET)
	public  List<Teach> ASCfileAll(){	
		List<Teach> list = new ArrayList<>();
		String userid = "u";
		String term ="1";
		String year = "2561";
//		list = teachDAO.teschASCfileAll(userid, term, year);
		
		 return list;
	}
   @RequestMapping(value="/TeachOneSeachByid", method = RequestMethod.POST)
	public  List<Teach> getTablest(@RequestBody TeachSeachBean1 id1){	
		List<Teach> list = new ArrayList<>();
		list = teachDAO.teschASCfileAll(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
		int base = 0;
		
		for (int i = 0; i < list.size(); i++) {
			int baseHour=list.get(i).getUsers().getBaseHour();
		
//					if (base<=baseHour) {
//						
//					}else if (condition) {
//						
//					} else {
//
//					}
		
	}
		 return list;
	}
}
