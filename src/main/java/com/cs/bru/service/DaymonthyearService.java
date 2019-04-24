package com.cs.bru.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Service;

@Service
public class DaymonthyearService {
	
	public String daymonthyear(String ddmmyy) throws ParseException {
		
		 Calendar cal = Calendar.getInstance();
	      Calendar cal2 = Calendar.getInstance();
	      DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	      
	      Date dmy =sdf.parse(ddmmyy);
		cal2.setTime(dmy);
		int dd,mm,yy;
		dd=cal2.get(Calendar.DAY_OF_MONTH);
		mm=cal2.get(Calendar.MARCH)+1;
		yy=cal2.get(Calendar.YEAR)+543;
		
		System.out.println(dd+mm+yy);
		String d =Integer.toString(dd);
		String m =Integer.toString(mm);
		String y =Integer.toString(yy);
		return ddmmyy;
	}
	
}
