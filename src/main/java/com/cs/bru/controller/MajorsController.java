/**
 * 
 */
package com.cs.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.MajorsDAO;
import com.cs.bru.model.Majors;

/**
 * @author JookDdook
 *
 */
@RestController
public class MajorsController {
	@Autowired
	MajorsDAO majorsDAO;
	
	@GetMapping("gotoUpdateMajors1/{id}")
	public Majors gotoUpdateMajors1(@PathVariable  String id) {
		Majors  majors =new Majors();
		majors=majorsDAO.findOne(id,1);
		return majors;
	}
	@GetMapping("gotoUpdateMajors2/{id}")
	public Majors gotoUpdateMajors2(@PathVariable  String id) {
		Majors  majors =new Majors();
		majors=majorsDAO.findOne(id,2);
		return majors;
	}
	@GetMapping("gotoUpdateMajors3/{id}")
	public Majors gotoUpdateMajors3(@PathVariable  String id) {
		Majors  majors =new Majors();
		majors=majorsDAO.findOne(id,3);
		return majors;
	}
	@GetMapping("gotoUpdateMajors4/{id}")
	public Majors gotoUpdateMajors4(@PathVariable  String id) {
		Majors  majors =new Majors();
		majors=majorsDAO.findOne(id,4);
		return majors;
	}
	@GetMapping("gotoUpdateMajors5/{id}")
	public Majors gotoUpdateMajors5(@PathVariable  String id) {
		Majors  majors =new Majors();
		majors=majorsDAO.findOne(id,5);
		return majors;
	}
	@GetMapping("gotoUpdateMajors6/{id}")
	public Majors gotoUpdateMajors6(@PathVariable  String id) {
		Majors  majors =new Majors();
		majors=majorsDAO.findOne(id,16);
		return majors;
	}
	@GetMapping("gotoUpdateMajors7/{id}")
	public Majors gotoUpdateMajors7(@PathVariable  String id) {
		Majors  majors =new Majors();
		majors=majorsDAO.findOne(id,7);
		return majors;
	}
	
	@PostMapping("updateMajors")
	public Majors updateMajors(@PathVariable  Majors upMajors) {
		Majors  majors =new Majors();
		majorsDAO.update(upMajors);;
		return majors;
	}

}
