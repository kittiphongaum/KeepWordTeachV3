package com.cs.bru;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class KeepWordTeachV3ApplicationTests {

	@Test
//	 public static void main(String[] args) {
//		   Calendar c = Calendar.getInstance(  );    // today
//		   System.out.println("Year: " + c.get(Calendar.YEAR));
//		   System.out.println("Month: " + c.get(Calendar.MONTH));
//		   System.out.println("Day: " + c.get(Calendar.DAY_OF_MONTH));
//		   System.out.println("Day of week = " + c.get(Calendar.DAY_OF_WEEK));
//		   System.out.println("Day of year = " + c.get(Calendar.DAY_OF_YEAR));
//		   System.out.println("Week in Year: " + c.get(Calendar.WEEK_OF_YEAR));
//		   System.out.println("Week in Month: " + c.get(Calendar.WEEK_OF_MONTH));
//		   System.out.println("Day of Week in Month: " + 
//		               c.get(Calendar.DAY_OF_WEEK_IN_MONTH));
//		   System.out.println("Hour: " + c.get(Calendar.HOUR));
//		   System.out.println("AM or PM: " + c.get(Calendar.AM_PM));
//		   System.out.println("Hour (24-hour clock): " + 
//		               c.get(Calendar.HOUR_OF_DAY));
//		   System.out.println("Minute: " + c.get(Calendar.MINUTE));
//		   System.out.println("Second: " + c.get(Calendar.SECOND));
//	   }
	public static void main(String[] args) throws ParseException {
	      Calendar cal = Calendar.getInstance();
	      Calendar cal2 = Calendar.getInstance();
	      DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");


   
//      System.out.println("Current date: " + today);
//      System.out.println(formatter.format(today));
      //add 2 week to the current date
//      LocalDate next2Week = today3.plus(1, ChronoUnit.WEEKS);
//      System.out.println("Next week: " + next2Week);
      
	      String w ="05/11/2018";
			Date today = sdf.parse(w);
			Date today2 = sdf.parse("26/11/2018");
			//today = new Date();
			cal.setTime(today);
			cal2.setTime(today2);
			int a,b,c,i;
			a = cal2.get(Calendar.WEEK_OF_YEAR);
			b =cal.get(Calendar.WEEK_OF_YEAR);
			c = a - b;
			System.out.println(c+1);
			int f=1 ;
			for (i = 0;  i<=c; i++) {
				
				
				   LocalDate today3 = LocalDate.parse(w, formatter);
				   
				LocalDate next2Week = today3.plus(i, ChronoUnit.WEEKS);
			      System.out.println("Next week"+ f +" : "+ next2Week);
			      f=f+1;
			      String cc = next2Week.format(formatter);
			      System.out.println(cc+1);
			}
		
			
//			  System.out.println("Current week of month is : " +cal2.get(Calendar.WEEK_OF_MONTH));
//			  System.out.println("Current week of year is : " +cal2.get(Calendar.WEEK_OF_YEAR));
//			  
//			
//          System.out.println(c);
//          
//	      System.out.println("Current week of month is : " +cal.get(Calendar.WEEK_OF_MONTH));
//	      System.out.println("Current week of year is : " +cal.get(Calendar.WEEK_OF_YEAR));
//	      cal.add(Calendar.WEEK_OF_MONTH, 1);
//	      System.out.println(
//	         "date after one year : " + (cal.get(Calendar.MONTH) + 1)+ "-"+ cal.get(Calendar.DATE)+ "-"+ cal.get(Calendar.YEAR)); 
	   }
}
