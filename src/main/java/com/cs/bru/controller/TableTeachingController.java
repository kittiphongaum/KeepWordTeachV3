package com.cs.bru.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TableTeachingBean;
import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.MonthDAO;
import com.cs.bru.dao.TableTeachingDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.service.ServiceTableTeaching;
import com.mysql.fabric.xmlrpc.base.Data;
import com.mysql.jdbc.TimeUtil;
import com.cs.bru.model.Month;

@RestController
public class TableTeachingController {
	@Autowired
	TableTeachingDAO tableTeachingDAO ;
	@Autowired
	ServiceTableTeaching TableTeachingService;
	@Autowired
	MonthDAO monthDAO;
	@Autowired
	TeachDAO teachDAO;
	
	
	@RequestMapping("/TableTeachingAll")
	public List<TableTeaching> TableTeaching(){
		List<TableTeaching>list = new ArrayList<>();
		list=tableTeachingDAO.findAll();
		return list;
	}
	@RequestMapping("/MonthfindAll")
	public List<Month> Month(){
		List<Month>list = new ArrayList<>();
		list=monthDAO.findAll();
		return list;
	}
	

	@RequestMapping(value="/insertTableTeaching")
	   public String insertTableTeaching(@RequestBody TableTeaching insertTableTeaching) {
		Teach teach1 =new Teach();
		SimpleDateFormat myFormat = new SimpleDateFormat("dd MM yyyy");
		String inputSting1 = "23 01 2018";
		String inputSting2 = "23 03 2018";
		
		   try {
				Date date1 = myFormat.parse(inputSting1);
				Date date2 = myFormat.parse(inputSting2);
				long diff = date2.getTime()- date1.getTime();
				System.out.println("Days: " + diff);
			   
			   if (insertTableTeaching.getStudenNumber()>=20 && insertTableTeaching.getStudenNumber()<=35 ) {
				   insertTableTeaching.setStandardTeach(120);
				   tableTeachingDAO.insertTableTeaching(insertTableTeaching);
				   
				   teachDAO.insertTeach(insertTableTeaching.getTeach());
			} else if (insertTableTeaching.getStudenNumber()<=69 && insertTableTeaching.getStudenNumber()>=36) {
				insertTableTeaching.setStandardTeach(180);
				tableTeachingDAO.insertTableTeaching(insertTableTeaching);
				 teachDAO.insertTeach(insertTableTeaching.getTeach());
			}else if (insertTableTeaching.getStudenNumber()>=70 &&insertTableTeaching.getStudenNumber()<=89) {
				insertTableTeaching.setStandardTeach(240);
				tableTeachingDAO.insertTableTeaching(insertTableTeaching);
				 teachDAO.insertTeach(insertTableTeaching.getTeach());
			}else if (insertTableTeaching.getStudenNumber()>=90) {
				insertTableTeaching.setStandardTeach(300);
				tableTeachingDAO.insertTableTeaching(insertTableTeaching);
				 teachDAO.insertTeach(insertTableTeaching.getTeach());
			}
			else {
				return "dashboard";
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
	@DeleteMapping(value = "/updateTableTeaching/{id}")
	public String daleteTableTeach(@PathVariable  String id) {
		tableTeachingDAO.delete(id);
		return "OK!";
	}
	@RequestMapping("/TableTeachingOneSeachByid")
	public  List<TableTeaching> getTable(@RequestBody TeachSeachBean1 id1){	
		List<TableTeaching> list = new ArrayList<>();
		list = tableTeachingDAO.findByIdSeachTeach(id1.getTeachIdS1(), id1.getTeachIdS2(), id1.getTeachIdS3());
		 return list;
	}
	
	
}
