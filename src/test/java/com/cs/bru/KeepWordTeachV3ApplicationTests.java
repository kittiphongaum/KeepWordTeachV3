package com.cs.bru;

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

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.cs.bru.dao.HolidayDAO;
import com.cs.bru.model.HolidayTh;

@RunWith(SpringRunner.class)
@SpringBootTest
public class KeepWordTeachV3ApplicationTests {
	@Autowired
	HolidayDAO holidayDAO;
	/**
	 * @param args
	 * @throws InterruptedException
	 */
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
//<dayyyyyyyyyyyyyy>
//	public static void main(String[] args) throws ParseException {
//	List<HolidayTh> holiTh=new ArrayList<>();
//		
//		
//		String holiT ="01/01/2019";
//		
//		
//	      Calendar cal = Calendar.getInstance();
//	      Calendar cal3 = Calendar.getInstance();
//	      Calendar cal2 = Calendar.getInstance();
//	      DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//	      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
//
//
////   
////      System.out.println("Current date: " + today);
////      System.out.println(formatter.format(today));
//      //add 2 week to the current date
//     // LocalDate next2Week = today3.plus(1, ChronoUnit.WEEKS);
//     // System.out.println("Next week: " + next2Week);
//      
//	      String w ="01/12/2018";
//			Date today = sdf.parse(w);
//			Date today2 = sdf.parse("1/3/2019");
//			Date today3 = sdf.parse("29/12/2018");
//			//today = new Date();
//			cal.setTime(today);
//			cal2.setTime(today2);
//			cal3.setTime(today3);
//			int a,b,c,i,m,y;
//			//a = cal2.get(Calendar.DAY_OF_MONTH);
//			//b =cal2.get(Calendar.MONTH);
//			int p = cal2.get(Calendar.YEAR);
//			a = cal2.get(Calendar.WEEK_OF_YEAR);
//			b =cal.get(Calendar.WEEK_OF_YEAR);
//			m =cal3.get(Calendar.WEEK_OF_YEAR);
//			c = 52 - b;
//			System.out.println(a);
//			System.out.println(b);
//			System.out.println(c);
//			System.out.println(m);
//			System.out.println(c+a);
//			int f=1 ;
////			for (i = 0;  i<=c; i++) {
////				
////				
////				   LocalDate today3 = LocalDate.parse(w, formatter);
////				   
////				LocalDate next2Week = today3.plus(i, ChronoUnit.WEEKS);
////			      System.out.println("Next week"+ f +" : "+ next2Week);
////			      f=f+1;
////			      String cc = next2Week.format(formatter);
////			  
////			      int day =next2Week.getDayOfMonth();
////			      int month=next2Week.getMonthValue();
////			      int  year=next2Week.getYear();
////			      String hh="hh";
////			      String oo="oo";
////			      int hhr=2;
////			      int hho=2;
////			      if (hhr == hho  ) {
////						
////					System.out.println("holiTh");
////					} 
////			}
//		
//			
////			  System.out.println("Current week of month is : " +cal2.get(Calendar.WEEK_OF_MONTH));
////			  System.out.println("Current week of year is : " +cal2.get(Calendar.WEEK_OF_YEAR));
////			  
////			
////          System.out.println(c);
////          
////	      System.out.println("Current week of month is : " +cal.get(Calendar.WEEK_OF_MONTH));
////	      System.out.println("Current week of year is : " +cal.get(Calendar.WEEK_OF_YEAR));
////	      cal.add(Calendar.WEEK_OF_MONTH, 1);
////	      System.out.println(
////	         "date after one year : " + (cal.get(Calendar.MONTH) + 1)+ "-"+ cal.get(Calendar.DATE)+ "-"+ cal.get(Calendar.YEAR)); 
//	   }
//	<endday>
	
	public static void main(String args[]) throws InterruptedException{             	    
		 List<Integer> baseHour = Arrays.asList(2,4,4,4);    //เรียงตามวิชา
	        Collections.sort(baseHour); //sorting collection
	        System.out.println("Unsorted List in Java: " + baseHour); 
	        
	        int bh=15;//ฐานเบิก
	        
	        int base =4; 
	        int su = 0;
	        int sum = 0,go=0;
	        
	        boolean checkRound = true;
	        boolean che =true;
	        for(int i=0; i<baseHour.size(); i++) {
	        	sum += baseHour.get(i);
	        	if(sum > bh) {
	        		int ggg=(baseHour.get(i)-1);
	        		if(checkRound) {
	        		
					int h=baseHour.get(i)+bh;
	        	//		int xx = (sum-(baseHour.get(i)-1));
	        			int xx = (h-sum);
	        			System.out.println(" แบ่ง     :: "+xx+" "+((ggg-xx)));
//	        			sum += 1;
	        			checkRound = false;
	        		}else {
	        			System.out.println("ใช้เบิก :: "+"  "+(ggg));
	        		}
	        		
	        	} else {
        			System.out.println(" ฐาน คาบ :: "+baseHour.get(i));
        			su += baseHour.get(i);
	        	}
	        	
	        	System.out.println("--------------------------------------");
	        	
	        }
	     


		
			
		
	       
    }  



}
