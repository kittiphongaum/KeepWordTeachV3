package com.cs.bru.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.cs.bru.controller.TeachController;
import com.cs.bru.dao.DateofTeachDAO;
import com.cs.bru.dao.HolidayDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;

@Service
public class DateofTeachSevice {
	@Autowired
	DateofTeachDAO  dateofTeachDao;
	@Autowired 
	HolidayDAO holidayDAO;
	@Autowired
	TeachDAO teachDAO;
	@Autowired
	TeachController teachCon;

	public void keepword(@RequestBody TableTeaching insertTableTeaching,String ho) throws Exception {

		List<HolidayTh> holiTh=new ArrayList<>();
		List<Teach> asList =new ArrayList<>();
			
		holiTh=holidayDAO.holidayThFile();
		DateofTeach dFt=new DateofTeach();
		
//		------teach-----
		Teach teach = new Teach();
		teach.setUserFk(insertTableTeaching.getUserRoleid());
		teach.setSubjactFk(insertTableTeaching.getSubjectRoleid());
		teach.setTeachId(insertTableTeaching.getTebleTeachId());
		
	     Calendar cal = Calendar.getInstance();
	      Calendar cal2 = Calendar.getInstance();
	      DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
     
	      
			Date today = sdf.parse(insertTableTeaching.getStartMonth());
			Date today2 = sdf.parse(insertTableTeaching.getStopMonth());
			//today = new Date();
			cal.setTime(today);
			cal2.setTime(today2);
			int a,b,c,i,j,k,l,sumTP = 0;
			a = cal2.get(Calendar.WEEK_OF_YEAR);
			b =cal.get(Calendar.WEEK_OF_YEAR);
			c = a - b;
			System.out.println(c+1);
			int f=1, tud =0, prt=0;
			 int sumhourtrme = 0;
				DateofTeach ofteach =new DateofTeach();
			for (i = 0;  i<=c; i++) {
				String uu=null;
				ofteach.setHolidayDft(uu);
				   LocalDate today3 = LocalDate.parse(insertTableTeaching.getStartMonth(), formatter);  
				LocalDate next2Week = today3.plus(i, ChronoUnit.WEEKS);
			      System.out.println("Next week"+ f +" : "+ next2Week);
			      	ofteach.setDateofteachId(insertTableTeaching.getTebleTeachId());
					ofteach.setUserDft(insertTableTeaching.getUserRoleid());
					ofteach.setSubjectDft(insertTableTeaching.getSubjectRoleid());
			      
					//ofteach.setWeekofyearDft(String.valueOf(f));
					ofteach.setWeekofyearDft(f);
					f=f+1;
			      String cc = next2Week.format(formatter);
			
			      int day =next2Week.getDayOfMonth();
			      int month=next2Week.getMonthValue();
			      int  year=next2Week.getYear();
			      
			ofteach.setMonthofyearDft(String.valueOf(month));
			ofteach.setYearofteachDft(String.valueOf(year));
			ofteach.setDayofyearDft(String.valueOf(day));

			j=(insertTableTeaching.getSubject().getTudsadee());
		  	k=insertTableTeaching.getSubject().getPrtibad();
		  	ofteach.setPrtibadDft(k);
			ofteach.setTudsadeeDft(j);
			  l=k+j;
			ofteach.setSummyhourDft(l);
			for (int m = 0; m < holiTh.size(); m++) {
				
				if (day == holiTh.get(m).getHolidayDay() && month == holiTh.get(m).getHolidayMonth() ) {
					ofteach.setHolidayDft("holiday");
					System.out.println("holiday");
				} 
			}
			 if (ofteach.getHolidayDft() == null) {
					ofteach.setHolidayDft("work");
					System.out.println("work");
					
					sumTP=ofteach.getSummyhourDft()*insertTableTeaching.getStandardTeach();
					System.out.println(sumTP);
					//เงิน/ขั่วโมง
					  sumhourtrme=sumhourtrme+sumTP;
				}
			 tud=tud+insertTableTeaching.getSubject().getTudsadee();
				prt=prt+insertTableTeaching.getSubject().getPrtibad();
			  
			  
			  dateofTeachDao.insertDateofTeach(ofteach);
				dFt.setMoneyDft(insertTableTeaching.getStandardTeach());
			
			}
			dFt.setDateofteachId(insertTableTeaching.getTebleTeachId());
		
			System.out.println(sumhourtrme);
			dateofTeachDao.update(dFt);
			
			
			teach.setHoursumTudsadee(tud);
			teach.setHoursumPrtibad(prt);
			teach.setSalarySum(sumhourtrme);
			teach.setTableteachFk(insertTableTeaching.getTebleTeachId());
			
			teachDAO.insertTeach(teach);
	
			
			String ee= "u";
			String ff= "1";
			String dd="2561";
		//	asList = teachDAO.teschASCfileAll(ee,ff, dd);
			
//			if (asList.get(1) != null) {
//				System.out.println("888888888");
//			}
			
		
	}
}
