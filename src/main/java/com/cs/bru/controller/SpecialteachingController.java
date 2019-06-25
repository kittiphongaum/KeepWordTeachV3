package com.cs.bru.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.DateofTeachDAO;
import com.cs.bru.dao.HolidayDAO;
import com.cs.bru.dao.SpecialteachingDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.Specialteaching;
import com.cs.bru.model.Teach;
import com.cs.bru.service.SetHourSevice;

@RestController
public class SpecialteachingController {
	@Autowired
	SpecialteachingDAO specialteachingDAO;
	@Autowired
	TeachDAO teachDAO;
	@Autowired
	DateofTeachDAO dateofTeachDAO;
	@Autowired
	SetHourSevice setHourSevice;
	@Autowired 
	HolidayDAO holidayDAO;
	
	@GetMapping(value="fildSpecialById")
	public List<Specialteaching> fildSpecialById () {
		List<Specialteaching> spec =new ArrayList<>();
		spec=specialteachingDAO.findOne("1");
		
		return spec;
				
	}
	@RequestMapping(value = "/srchsubjectTest", method = RequestMethod.GET)
	public List<Teach> srchsubjectTest() {

		List<Teach> li = new ArrayList<>();
		li=teachDAO.teschASCfileAll("00442233","2","2561","1");
	
		
	
		return li;
	}
	@RequestMapping(value = "/srchsubject", method = RequestMethod.POST)
	public List<Teach> srchsubject(@RequestBody TeachSeachBean1 id1) {

		List<Teach> li = new ArrayList<>();
		li = teachDAO.teschASCfileAll(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
		return li;
	}
	@GetMapping(value = "/specialteachingsub")
	public List<DateofTeach> specialTeachingSub() {

		List<DateofTeach> lid = new ArrayList<>();
		lid = specialteachingDAO.SpecialteachinfildCDayAddsubject("570112230061", "1", "2561","1","4124903");
	//	lid = specialteachingDAO.SpecialteachinfildCDayAddsubject(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4(),id1.getSubbean());
	//	System.out.println(id1.getSubbean()+":::  ;;;;;;;;;");
		return lid;
	}
	@GetMapping(value = "/specialteachingsubtttttttttt")
	public DateofTeach specialTeachingSubttttt() {
		DateofTeach lists = new DateofTeach();
		lists = specialteachingDAO.cackSpecialteachinfildCDayAddsubject("570112230061","1","2561","1","4124903",8,3,2562);
	//	lid = specialteachingDAO.SpecialteachinfildCDayAddsubject(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4(),id1.getSubbean());
	//	System.out.println(id1.getSubbean()+":::  ;;;;;;;;;");
		return lists;
	}
	
	@PostMapping(value="inserSepcil")
	public DateofTeach inserSepcil(@RequestBody DateofTeach specailDateofTeach)throws Exception {
	Specialteaching spec = new Specialteaching();
	 List<HolidayTh> holiday =new ArrayList<>();
	DateofTeach sppp =new DateofTeach();
	DateofTeach insertAS =new DateofTeach();
	List<DateofTeach> spList = new ArrayList<>();
	String stringretun="";
	Calendar stop = Calendar.getInstance();
	 Calendar cal = Calendar.getInstance();
	
     DateFormat ddmmyyy = new SimpleDateFormat("dd/MM/yyyy");
     DateFormat ddmmyyy2 = new SimpleDateFormat("dd/MM/yyyy");
     Date Da = ddmmyyy.parse(specailDateofTeach.getSpecialteachingStartdateday());
     Date stopdate = ddmmyyy2.parse(specailDateofTeach.getSpecialteachingStopdateday());
		cal.setTime(Da);
		int getday =cal.get(Calendar.DAY_OF_MONTH);
		int getmonth =(cal.get(Calendar.MONTH))+1;
		int getyear =cal.get(Calendar.YEAR);
//		System.out.println("ttttttttttttt"+getday+getmonth+getyear);
		stop.setTime(stopdate);
		int st_day =stop.get(Calendar.DAY_OF_MONTH);
		int st_month =(stop.get(Calendar.MONTH))+1;
		int st_year =(stop.get(Calendar.YEAR))+543;
		
		String std =(getday+"/"+getmonth+"/"+getyear);
		String spd =(st_day+"/"+st_month+"/"+st_year);
		
		
		String month_th=setHourSevice.sethourDay(specailDateofTeach.getSpecialteachingStopdateday());
		
//		System.out.println(month_th+"ddmmyyy");
		
		specailDateofTeach.setSpecialteachingStopdateday(st_day+"/"+month_th+"/"+st_year);
		System.out.println(specailDateofTeach.getSpecialteachingStartdateday()+"++++");
		sppp=specialteachingDAO.cackSpecialteachinfildCDayAddsubject(specailDateofTeach.getTeachSeachBean1().getUseridS1(),specailDateofTeach.getTeachSeachBean1().getTermS2(),specailDateofTeach.getTeachSeachBean1().getYearS3(),specailDateofTeach.getTeachSeachBean1().getDegreeS4(),specailDateofTeach.getSubjectDft(),getday,getmonth,getyear);
	try {
		
		holiday=holidayDAO.holidayThFileAll();
		String d =Integer.toString(st_day);
		String m =Integer.toString(st_month);
		String y =Integer.toString(st_year);
		
		String stdspd="";
		if (std==spd) {
			stdspd="stop";
		}
		String spReturn="";
		for (int i = 0; i < holiday.size(); i++) {
			if (st_day==holiday.get(i).getHolidayDay() && st_month==holiday.get(i).getHolidayDay() && st_year==holiday.get(i).getHolidayDay()) {
				spReturn="holiday";
			}
		}
		
		if (stdspd!="stop") {
			if (spReturn!="holiday") {
				if (sppp.getSpecial()==null && sppp.getDateofteachId()!=null) {
					insertAS.setDateofteachId(sppp.getDateofteachId());
					insertAS.setDayofyearDft(sppp.getDayofyearDft());
					insertAS.setMonthofyearDft(sppp.getMonthofyearDft());
					insertAS.setYearofteachDft(sppp.getYearofteachDft());
					insertAS.setSubjectDft(sppp.getSubjectDft());
					insertAS.setSpecialteachingStartdateday(specailDateofTeach.getSpecialteachingStartdateday());
					insertAS.setSpecialteachingStopdateday(specailDateofTeach.getSpecialteachingStopdateday());
					insertAS.setSpecialteachingStarttimeday(specailDateofTeach.getSpecialteachingStarttimeday());
					insertAS.setSpecialteachingStoptimeday(specailDateofTeach.getSpecialteachingStoptimeday());
					insertAS.setSpecial("ชดเชย");
					insertAS.setUserDft(sppp.getUserDft());
					System.out.println("mmmmmmmmmmmmmmm");
					specialteachingDAO.updateSpecal(insertAS);
					stringretun="บันทึกสำเร็จ";
				} 
				
				if (sppp.getSpecial()!=null) {
					sppp.setDayofyearDft(d);
					sppp.setMonthofyearDft(m);
					sppp.setYearofteachDft(y);
					sppp.setSpecialteachingStartdateday(specailDateofTeach.getSpecialteachingStartdateday());
					sppp.setSpecialteachingStopdateday(specailDateofTeach.getSpecialteachingStopdateday());
					sppp.setSpecialteachingStarttimeday(specailDateofTeach.getSpecialteachingStarttimeday());
					sppp.setSpecialteachingStoptimeday(specailDateofTeach.getSpecialteachingStoptimeday());
					sppp.setSpecial("ชดเชย");
					System.out.println(sppp+"vvvvvvvvvvvvvv");
					stringretun="บันทึกสำเร็จ";
					specialteachingDAO.insertDateofTeach(sppp);
				}	
				
			} else {
				stringretun="วันที่ตรงกับวันหยุด";
			} 
			
		} else {
			stringretun="กรุณาตรวจสอบข้อมูลอีกครัง";
		}
//		System.out.println(specailDateofTeach.getSpecialteachingStartdateday());
		
			
		specailDateofTeach.setDateofteachId(stringretun);
		System.out.println(specailDateofTeach.getDateofteachId());
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		return specailDateofTeach;
				
	}
	@RequestMapping(value = "/tablespecialteachingsub", method = RequestMethod.POST)
	public List<DateofTeach> tablespecialTeachingSub(@RequestBody TeachSeachBean1 id1) {

		List<DateofTeach> li = new ArrayList<>();
		li = specialteachingDAO.tableSpecialteachinfildCDayAddsubject("570112230061", "1", "2561","1","4124903");
		return li;
	}
}
