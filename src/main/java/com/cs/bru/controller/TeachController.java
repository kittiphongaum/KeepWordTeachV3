package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachBean;
import com.cs.bru.bean.TeachInsertBean;
import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.DateTimeDAO;
import com.cs.bru.dao.DateofTeachDAO;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.DateTime;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;

@RestController
public class TeachController {
   @Autowired
   TeachDAO teachDAO;
   @Autowired
   SubjectDAO subjectDAO;
   @Autowired
   DateTimeDAO dateTimeDAO;
   @Autowired
   UserDAO userDAO;
 @Autowired
 DateofTeachDAO  dateofTeachDAO;
   
   
   @RequestMapping("/insertTeach")
   public String insertTeach(@RequestBody Teach insertTeachSub,DateTime dateTimeDAO1,Subject subject ) {
	   try {
		teachDAO.insertTeach(insertTeachSub);
		dateTimeDAO.insertDateTime(dateTimeDAO1);
		subjectDAO.insertSubject(subject);
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	   return "dashboard";
   }

   @RequestMapping(value="/teachCon", method = RequestMethod.GET)
	public  List<DateofTeach> ASCfileAll(){	
		List<DateofTeach> list = new ArrayList<>();
		String userid = "u";
		String term ="1";
		String year = "2561";
		String de = "1";
//		list = teachDAO.teschASCfileAll(userid, term, year,de);
//		
		 return list;
	}
   @RequestMapping(value="/dateofday",method = RequestMethod.POST)
   public List<DateofTeach> dateofday(){
	   List<DateofTeach>listDay =new ArrayList<>();
	   
	   return listDay;
   }
   
   @RequestMapping(value="/TeachOneSeachByid1", method = RequestMethod.POST)
	public  List<Teach> getTablest(@RequestBody TeachSeachBean1 id1 ){	
		List<Teach> list = new ArrayList<>();
		String userid ;
//		String term ="1";
//		String year = "2561";
//		String de = "1";
		list =teachDAO.teschASCfileAll(userid=id1.getUseridS1(),id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4()/*userid="u",term,year,de*/);
		User users =new User();
		users=userDAO.findById(userid);
		Teach teach=new Teach();
         DateofTeach dayday= new DateofTeach();
         
//		 List<Integer> baseHour = Arrays.asList(4,4,4,4);    //เรียงตามวิชา
//	        Collections.sort(baseHour); //sorting collection
	
	    
	       
	        
//	        int base =4; 
	        int su = 0;
	        int sum = 0,go=0,day=0,dday=0;
	        
	        boolean checkRound = true;
	        boolean che =true;
	        int summbh=0,summho=0, xx =0, ggg=0,setBaseHour=0,setBasecram=0;
	     
	        for(int i=0; i<list.size(); i++) {
	        	int sumtp=list.get(i).getTableTeaching().getSubject().getPrtibad()+list.get(i).getTableTeaching().getSubject().getTudsadee();
	        	 int bh=users.getBaseHour();//ฐานเบิก
	        	sum += sumtp;
	        	if(sum > bh) {
	        		 ggg=(sumtp-1);
	        		if(checkRound) {
	        		
					int h=sumtp+bh;
	        	//		int xx = (sum-(baseHour.get(i)-1));
	        			 xx = (h-sum);
	        			System.out.println(" แบ่ง     :: "+xx+" "+((ggg-xx)));

	        			list.get(i).setBaseHour(ggg-xx);
	        			day=ggg-xx;
	        			list.get(i).setBasecram(xx);
	        			dday=xx;
	        			summho += ggg-xx;
	        			summbh +=xx;
	        			checkRound = false;
	        		}else {
	        			System.out.println("ใช้เบิก :: "+"  "+(ggg));
	        			day =ggg;
	        			summho += ggg;
	        			setBaseHour=ggg;
	        			list.get(i).setBaseHour(ggg);
	        		}
	        		
	        	} else {
	        		summbh+=sumtp;
      			System.out.println(" ฐาน คาบ :: "+sumtp);
      			
      			su += sumtp;    			 
	        	}
//	        	teach.setBasecram(summbh);
//	        	teach.setBaseHour(summho);
	       
	        if (day!=0 || dday!= 0) {
				dayday.setStatusBase("1");
			} else {
				dayday.setStatusBase("2");
			}
	        dayday.setSubjectDft(list.get(i).getSubjactFk());
	        dateofTeachDAO.updateDay(dayday);
	        System.out.println(dayday.getStatusBase());
	        
	        	System.out.println("--------------------------------------"+"::"+summbh+":::"+summho);
//	            list.get(i).setBaseHour(summbh);
//	        	list.get(i).setBasecram(summho);
	        	
	        }
	  
	     					   				
		 return list;
	}
//   public static void main(String args[]) throws InterruptedException{         
//	   
//		List<Teach> list = new ArrayList<>();
//		String userid = "u";
//		String term ="1";
//		String year = "2561";
//		String de = "1";
//		list =teachDAO.teschASCfileAll(userid, term, year,de);
//		User users =new User();
//		users=UserDAO.findById(userid);
//		Teach teach=new Teach();
////		
////		 List<Integer> baseHour = Arrays.asList(4,4,4,4);    //เรียงตามวิชา
////	        Collections.sort(baseHour); //sorting collection
//	
//	        System.out.println("Unsorted List in Java: " + list); 
//	        
//	       
//	        
////	        int base =4; 
//	        int su = 0;
//	        int sum = 0,go=0;
//	        
//	        boolean checkRound = true;
//	        boolean che =true;
//	        int summbh=0,summho =0;
//	     
//	        for(int i=0; i<list.size(); i++) {
//	        	int sumtp=list.get(i).getTableTeaching().getSubject().getPrtibad()+list.get(i).getTableTeaching().getSubject().getTudsadee();
//	        	 int bh=users.getBaseHour();//ฐานเบิก
//	        	sum += sumtp;
//	        	if(sum > bh) {
//	        		int ggg=(sumtp-1);
//	        		if(checkRound) {
//	        		
//					int h=sumtp+bh;
//	        	//		int xx = (sum-(baseHour.get(i)-1));
//	        			int xx = (h-sum);
//	        			System.out.println(" แบ่ง     :: "+xx+" "+((ggg-xx)));
////	        			sum += 1;
//	        			
//	        			summho += ggg-xx;
//	        			summbh +=xx;
//	        			checkRound = false;
//	        		}else {
//	        			System.out.println("ใช้เบิก :: "+"  "+(ggg));
//	        			summho += ggg;
//	        		}
//	        		
//	        	} else {
//	        		summbh+=sumtp;
//      			System.out.println(" ฐาน คาบ :: "+sumtp);
//      			su += sumtp;
//      			 
//	        	}
//	        	
//	        	System.out.println("--------------------------------------"+"::"+summbh+":::"+summho);
//	        	
//	        }
//	     					
//	       
//  }  
}
