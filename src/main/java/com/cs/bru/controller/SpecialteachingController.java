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
import com.cs.bru.dao.SpecialteachingDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.Specialteaching;
import com.cs.bru.model.Teach;

@RestController
public class SpecialteachingController {
	@Autowired
	SpecialteachingDAO specialteachingDAO;
	@Autowired
	TeachDAO teachDAO;
	 
	
	
	@GetMapping(value="fildSpecialById")
	public List<Specialteaching> fildSpecialById () {
		List<Specialteaching> spec =new ArrayList<>();
		spec=specialteachingDAO.findOne("1");
		
		return spec;
				
	}
	@RequestMapping(value = "/srchsubjectTest", method = RequestMethod.GET)
	public List<Teach> srchsubjectTest() {

		List<Teach> li = new ArrayList<>();
		li = teachDAO.teschShowSub("570112230061", "1", "2561","1");
		return li;
	}
	@RequestMapping(value = "/srchsubject", method = RequestMethod.POST)
	public List<Teach> srchsubject(@RequestBody TeachSeachBean1 id1) {

		List<Teach> li = new ArrayList<>();
		li = teachDAO.teschShowSub(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
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
		lists = specialteachingDAO.cackSpecialteachinfildCDayAddsubject("570112230061","1","2561","1","4124903","8","3","2562");
	//	lid = specialteachingDAO.SpecialteachinfildCDayAddsubject(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4(),id1.getSubbean());
	//	System.out.println(id1.getSubbean()+":::  ;;;;;;;;;");
		return lists;
	}
	
	@PostMapping(value="inserSepcil")
	public DateofTeach inserSepcil(@RequestBody DateofTeach specailDateofTeach)throws Exception {
	Specialteaching spec = new Specialteaching();
	DateofTeach sppp =new DateofTeach();
	List<DateofTeach> spList = new ArrayList<>();
	 Calendar cal = Calendar.getInstance();
     DateFormat ddmmyyy = new SimpleDateFormat("dd/MM/yyyy");
     Date Da = ddmmyyy.parse(specailDateofTeach.getSpecialteachingStartdateday());
		cal.setTime(Da);
		int getday =cal.get(Calendar.DAY_OF_MONTH);
		int getmonth =cal.get(Calendar.MONTH)+1;
		int getyear =cal.get(Calendar.YEAR);
//		System.out.println("ttttttttttttt"+getday+getmonth+getyear);
//		sppp=specialteachingDAO.cackSpecialteachinfildCDayAddsubject(specailDateofTeach.getTeachSeachBean1().getUseridS1(),specailDateofTeach.getTeachSeachBean1().getTermS2(),specailDateofTeach.getTeachSeachBean1().getYearS3(),specailDateofTeach.getTeachSeachBean1().getDegreeS4(),specailDateofTeach.getSubjectDft(),getday,getmonth,getyear);
	try {
//		System.out.println(specailDateofTeach.getSpecialteachingStartdateday());
		
		
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
		System.out.println(id1.getSubbean()+":::  ;;;;;;;;;");
		return li;
	}
}
