package com.cs.bru.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.cs.bru.dao.DateofTeachDAO;
import com.cs.bru.dao.HolidayDAO;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.TableTeaching;

@Service
public class DateofTeachSevice {
	@Autowired
	DateofTeachDAO  dateofTeachDao;
	@Autowired 
	HolidayDAO holidayDAO;

	public void keepword(@RequestBody TableTeaching insertTableTeaching) throws Exception {
		
		
		
	     Calendar cal = Calendar.getInstance();
	      Calendar cal2 = Calendar.getInstance();
	      DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
     
	      
			Date today = sdf.parse(insertTableTeaching.getStartMonth());
			Date today2 = sdf.parse(insertTableTeaching.getStopMonth());
			//today = new Date();
			cal.setTime(today);
			cal2.setTime(today2);
			int a,b,c,i,j,k,l;
			a = cal2.get(Calendar.WEEK_OF_YEAR);
			b =cal.get(Calendar.WEEK_OF_YEAR);
			c = a - b;
			System.out.println(c+1);
			int f=1 ;
			
			for (i = 0;  i<=c; i++) {
				DateofTeach ofteach =new DateofTeach();
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
			List<HolidayTh> holiTh=new ArrayList<>();
			holiTh=holidayDAO.holidayThfindAll();
			for (int m = 0; m < holiTh.size(); m++) {
				
				if (ofteach.getDayofyearDft() == holiTh.get(m).getHolidayDay() && ofteach.getMonthofyearDft() == holiTh.get(m).getHolidayMonth() ) {
					ofteach.setHolidayDft("holiday");
				} 	
				
			}
			j=(insertTableTeaching.getSubject().getTudsadee());
		  	k=insertTableTeaching.getSubject().getPrtibad();
		  	ofteach.setPrtibadDft(k);
			ofteach.setTudsadeeDft(j);
			  l=k+j;
			  
			ofteach.setSummyhourDft(l);
			  dateofTeachDao.insertDateofTeach(ofteach);
			
			     
			}
		
	}
}
