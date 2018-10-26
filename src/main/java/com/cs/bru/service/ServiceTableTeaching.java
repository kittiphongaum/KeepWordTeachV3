package com.cs.bru.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.cs.bru.dao.TableTeachingDAO;
import com.cs.bru.model.TableTeaching;


@Service
public class ServiceTableTeaching {
	@Autowired
	TableTeachingDAO tableTeachingDAO;

		public List<TableTeaching> getById(String id) {
		return tableTeachingDAO.findById(id);		
	}
		public String putId(String id) {
			tableTeachingDAO.delete(id);
			return "dashboard";
			
		}
	
		
//		public static void main(String[] args) throws ParseException {
//		      Calendar cal = Calendar.getInstance();
//		      Calendar cal2 = Calendar.getInstance();
//		      DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//		      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
//
//
//	   
////	      System.out.println("Current date: " + today);
////	      System.out.println(formatter.format(today));
//	      //add 2 week to the current date
////	      LocalDate next2Week = today3.plus(1, ChronoUnit.WEEKS);
////	      System.out.println("Next week: " + next2Week);
//	      
//		      String w ="05/11/2018";
//				Date today = sdf.parse(w);
//				Date today2 = sdf.parse("26/11/2018");
//				//today = new Date();
//				cal.setTime(today);
//				cal2.setTime(today2);
//				int a,b,c,i;
//				a = cal2.get(Calendar.WEEK_OF_YEAR);
//				b =cal.get(Calendar.WEEK_OF_YEAR);
//				c = a - b;
//				System.out.println(c+1);
//				int f=1 ;
//				for (i = 0;  i<=c; i++) {
//					
//					
//					   LocalDate today3 = LocalDate.parse(w, formatter);
//					   
//					LocalDate next2Week = today3.plus(i, ChronoUnit.WEEKS);
//				      System.out.println("Next week"+ f +" : "+ next2Week);
//				      f=f+1;
////				
//				}
//			
//				
////				  System.out.println("Current week of month is : " +cal2.get(Calendar.WEEK_OF_MONTH));
////				  System.out.println("Current week of year is : " +cal2.get(Calendar.WEEK_OF_YEAR));
////				  
////				
////	          System.out.println(c);
////	          
////		      System.out.println("Current week of month is : " +cal.get(Calendar.WEEK_OF_MONTH));
////		      System.out.println("Current week of year is : " +cal.get(Calendar.WEEK_OF_YEAR));
////		      cal.add(Calendar.WEEK_OF_MONTH, 1);
////		      System.out.println(
////		         "date after one year : " + (cal.get(Calendar.MONTH) + 1)+ "-"+ cal.get(Calendar.DATE)+ "-"+ cal.get(Calendar.YEAR)); 
//		   }
}
