package com.cs.bru.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Service;

@Service
public class SetHourSevice {
	public String sethourDay(String hour) throws Exception  {
		// String hour=("01/03/2019");
		   Calendar cal = Calendar.getInstance();
	      Calendar cal2 = Calendar.getInstance();
	      DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	      String hourstring = "";
	     
			Date Da = sdf.parse(hour);
			cal.setTime(Da);
			
			int gethuor =cal.get(Calendar.MONTH);
			
			if (gethuor==0) {
				hourstring="มกราคม";
			}
			if (gethuor==1) {
				hourstring="กุมพาพันธ์";
			}
			if (gethuor==2) {
				hourstring="มีนาคม";
			}
			if (gethuor==3) {
				hourstring="เมษายน";
			}
			if (gethuor==4) {
				hourstring="พฤษภาคม";
			}
			if (gethuor==5) {
				hourstring="มิถุนายน";
			}
			if (gethuor==6) {
				hourstring="กรกฎาคม";
			}
			if (gethuor==7) {
				hourstring="สิงหาคม";
			}
			if (gethuor==8) {
				hourstring="กันยายน";
			}
			if (gethuor==9) {
				hourstring="ตุลาคม";
			}
			if (gethuor==10) {
				hourstring="พฤศจิกายน";
			}
			if (gethuor==11) {
				hourstring="ธันวาคม";
			}
			//System.out.println(hourstring);
	      
		return hourstring;
	}
	
	        // จุดทศนิยมปัดเป็นสองตำแหน่ง
	        
	    
}
