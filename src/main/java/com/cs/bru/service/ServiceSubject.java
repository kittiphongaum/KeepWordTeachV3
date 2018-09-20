package com.cs.bru.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.Subject;
import com.cs.bru.model.User;
@Service
public class ServiceSubject {
	@Autowired
	private SubjectDAO subjectDAO;
	
	
	public Subject get(String id) throws SQLException {
		
		return subjectDAO.findOne(id);		
	}
	
}
