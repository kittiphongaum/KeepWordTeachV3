package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.TableTeachingDAO;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.User;

@RestController
public class TableTeachingController {
	@Autowired
	TableTeachingDAO tableTeachingDAO ;
	
	@RequestMapping("/TableTeachingAll")
	public List<TableTeaching> TableTeaching(){
		List<TableTeaching>list = new ArrayList<>();
		list=tableTeachingDAO.findAll();
		return list;
	}

	@RequestMapping(value="/insertTableTeaching",method = RequestMethod.POST)
	   public String insertTableTeaching(@RequestBody TableTeaching insertTableTeaching ) {
		   try {
			tableTeachingDAO.insertTableTeaching(insertTableTeaching);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		   return "dashboard";
	   }
}
