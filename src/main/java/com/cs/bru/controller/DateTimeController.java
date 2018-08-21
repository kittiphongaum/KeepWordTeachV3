package com.cs.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.DateTimeDAO;
import com.cs.bru.model.DateTime;

@RestController
public class DateTimeController {
	 @Autowired
	 DateTimeDAO dateTimeDAO;
	public String insertDateTime(@RequestBody DateTime insertDateTimeSub) {
		   try {
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		   return "insertTeach";
	   }
	   
}
