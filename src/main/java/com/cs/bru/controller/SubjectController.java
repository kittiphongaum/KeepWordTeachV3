package com.cs.bru.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.arjuna.ats.internal.jdbc.drivers.modifiers.list;
import com.cs.bru.bean.SeachSubJactBean;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.Subject;
import com.cs.bru.model.SubjectBean;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;
import com.cs.bru.service.ServiceSubject;
import com.cs.bru.service.ServiceUser;

@RestController
public class SubjectController {
	
	
	@Autowired
	SubjectDAO  subjectDAO;
	@Autowired
	TeachDAO  teachDAO;
	@Autowired
	private ServiceSubject subjectService;
	
	@RequestMapping(value = "/subjectSeach", method = RequestMethod.POST)
	public Subject SubjectAdd(@RequestBody SubjectBean  subjectsach ) {
		Subject subject = new Subject();
		String a ="57001";
		subject = subjectDAO.findOne(subjectsach.getSubjectBean());
		
		System.out.println(subjectsach.getSubjectBean());
		return subject;
	}
		
	@RequestMapping("/insertSubject")
	   public String insertTeach(@RequestBody Subject insertSubjech) {
		   try {
			subjectDAO.insertSubject(insertSubjech);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		   return "insertSubject";
	   }

	
	@RequestMapping("/subAll")
	public List<Subject> subJect(){
		List<Subject>list = new ArrayList<>();
		list=subjectDAO.findAll();
		return list;
	}
	@RequestMapping("/teach")
	public List<Teach> teaching(){
		List<Teach>list = new ArrayList<>();
		list=teachDAO.findAll();
		return list;
	}
//	@RequestMapping( value = "/seachsub",method = RequestMethod.POST)
//	public Subject seachsub(Model model ,@RequestBody Subject seachsub) {	
//		Subject seachsubject = new Subject();
//			
//		try {
//			seachsubject = subjectDAO.findOne(seachsub.getSubjectId());
//	
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		return seachsubject;
//	}
	@GetMapping("/subject1/{id}")
	public  Subject getUser(@PathVariable String id){	
		return subjectService.get(id);
	}
}
