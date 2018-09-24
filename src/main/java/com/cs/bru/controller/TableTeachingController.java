package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TableTeachingBean;
import com.cs.bru.dao.TableTeachingDAO;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.service.ServiceTableTeaching;

@RestController
public class TableTeachingController {
	@Autowired
	TableTeachingDAO tableTeachingDAO ;
	@Autowired
	
	ServiceTableTeaching TableTeachingService;
	
	
	@RequestMapping("/TableTeachingAll")
	public List<TableTeaching> TableTeaching(){
		List<TableTeaching>list = new ArrayList<>();
		list=tableTeachingDAO.findAll();
		return list;
	}

	@RequestMapping(value="/insertTableTeaching")
	   public String insertTableTeaching(@RequestBody TableTeaching insertTableTeaching ) {
		   try {
			   if (insertTableTeaching.getStudenNumber()<=35 ) {
				   insertTableTeaching.setStandardTeach(120);
				   tableTeachingDAO.insertTableTeaching(insertTableTeaching);
			} else if (insertTableTeaching.getStudenNumber()<=69) {
				insertTableTeaching.setStandardTeach(180);
				tableTeachingDAO.insertTableTeaching(insertTableTeaching);
			}else if (insertTableTeaching.getStudenNumber()<=89) {
				insertTableTeaching.setStandardTeach(240);
				tableTeachingDAO.insertTableTeaching(insertTableTeaching);
			}else if (insertTableTeaching.getStudenNumber()>=90) {
				insertTableTeaching.setStandardTeach(300);
				tableTeachingDAO.insertTableTeaching(insertTableTeaching);
			}
			else {
				
			}

			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		   return "dashboard";
	   }
	@RequestMapping( value = "/TableTeachingOne")
	public List<TableTeaching> gotoUpdate(Model model ,@RequestBody TableTeachingBean tableTeachingById) {	
		List<TableTeaching> TableTeachingByBean = new ArrayList<>();
		TableTeachingByBean=tableTeachingDAO.findById(tableTeachingById.getTeaching());
		
		return TableTeachingByBean;
	}
	@GetMapping("/TableTeachingOne1/{id}")
	public  List<TableTeaching> getUser(@PathVariable String id){	
		List<TableTeaching> list = new ArrayList<>();
		list = TableTeachingService.getById(id);
		 return list;
	}
}
