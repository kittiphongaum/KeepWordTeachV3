package com.cs.bru.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.HolidayDAO;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.User;

@RestController
public class HolidayController {
   
	@Autowired
	HolidayDAO holidayDAO;
	
	@GetMapping("/holidayThFileAll")
	public  List<HolidayTh> holidayAll(){	
	  List<HolidayTh> list=new ArrayList<>();
	   list=holidayDAO.holidayThFileAll();
		 return list;
	}
	@RequestMapping("/ho")
	public List<HolidayTh>listHo(){
	List<HolidayTh>list =new ArrayList<>();
	list=holidayDAO.holidayThFileAll();
	return list;
} 
	@RequestMapping(value="insertHoliday",method = RequestMethod.POST)
	public HolidayTh insertHoliday(@RequestBody HolidayTh holidayTh) {
	
		
		try {
//			Calendar calender = Calendar.getInstance();
//			DateFormat format =new SimpleDateFormat("dd/mm/yyyy");
//			DateTimeFormatter formatter =DateTimeFormatter.ofPattern("dd/mm/yyyy");
//			Date today = format.parse(holidayTh.getHolidayYear());
//			calender.setTime(today);
//			 dd=calender.get(Calendar.DAY_OF_MONTH);
//			 mm=calender.get(Calendar.MONTH);
//			 yyyy=calender.get(Calendar.YEAR);
			holidayTh.setHolidayRow("holiday");
		
			holidayDAO.insertHoliday(holidayTh);

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return holidayTh;
	}
}
