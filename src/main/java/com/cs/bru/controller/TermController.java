package com.cs.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.TermDAO;
import com.cs.bru.model.Term;
@RestController
public class TermController {
	@Autowired
	TermDAO termDAO;
	
	@GetMapping(value="showTerm")
	public Term showTerm () {
		Term term =new Term();
		try {
			term=termDAO.findAll();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return term;
	}
	@GetMapping("/showTermByid/{id}")
	public Term showTermByid (@PathVariable String id) {
		Term term =new Term();
		try {
			term=termDAO.findByID(id);
		} catch (Exception e) {
			// TODO: handle exception
		}
	
		return term;
	}
	@PostMapping(value="/updateTerm")
	public Term updateTerm (@RequestBody Term term) {
		Term upterm =new Term();
		try {
			System.out.println(term.getTermDateStart());
			termDAO.update(term);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return term;
	}
}
