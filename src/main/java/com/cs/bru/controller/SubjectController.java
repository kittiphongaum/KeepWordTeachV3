package com.cs.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.model.Subject;
import com.cs.bru.model.SubjectBean;

@RestController
public class SubjectController {
	@Autowired
	SubjectDAO  subjectDAO;
	
	@RequestMapping(value = "/subject", method = RequestMethod.POST)
	public Subject  SubjectAdd(@RequestBody SubjectBean  subjectsach ) {
		Subject Subject = new Subject();
		Subject = subjectDAO.findOne(subjectsach.getSubjectBean());
//		System.out.println(Subject);
//		System.out.println(subjectsach.getSubjectsach());
		return Subject;
	}
}