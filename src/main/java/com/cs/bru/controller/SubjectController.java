package com.cs.bru.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.arjuna.ats.internal.jdbc.drivers.modifiers.list;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.Subject;
import com.cs.bru.model.SubjectBean;
import com.cs.bru.model.Teach;

@RestController
public class SubjectController {
	
	
	@Autowired
	SubjectDAO  subjectDAO;
	@Autowired
	TeachDAO  teachDAO;
	
	@RequestMapping(value = "/subject", method = RequestMethod.POST)
	public Subject  SubjectAdd(@RequestBody SubjectBean  subjectsach ) {
		Subject Subject = new Subject();
		Subject = subjectDAO.findOne(subjectsach.getSubjectBean());
//		System.out.println(Subject);
//		System.out.println(subjectsach.getSubjectsach());
		return Subject;
	}
	@RequestMapping("/sub")
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
}
