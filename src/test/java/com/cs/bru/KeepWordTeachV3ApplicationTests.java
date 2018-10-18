package com.cs.bru;

import java.util.Calendar;

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
	public static void main(String[] args) {
	      Calendar cal = Calendar.getInstance();
	      System.out.println("Current week of month is : " +cal.get(Calendar.WEEK_OF_MONTH));
	      System.out.println("Current week of year is : " +cal.get(Calendar.WEEK_OF_YEAR));
	      cal.add(Calendar.WEEK_OF_MONTH, 1);
	      System.out.println(
	         "date after one year : " + (cal.get(Calendar.MONTH) + 1)+ "-"+ cal.get(Calendar.DATE)+ "-"+ cal.get(Calendar.YEAR)); 
	   }
}
