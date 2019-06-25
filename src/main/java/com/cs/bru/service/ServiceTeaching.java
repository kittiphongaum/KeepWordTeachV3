package com.cs.bru.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.DateTimeDAO;
import com.cs.bru.dao.DateofTeachDAO;
import com.cs.bru.dao.SalarySubjectDAO;
import com.cs.bru.dao.StatusTpDAO;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TableTeachingDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.Teach;

@Service
public class ServiceTeaching {
	@Autowired
	StatusTpDAO statusTpDAO;
	@Autowired
	TeachDAO teachDAO;
	@Autowired
	SubjectDAO subjectDAO;
	@Autowired
	DateTimeDAO dateTimeDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	DateofTeachDAO dateofTeachDAO;
	@Autowired
	private SalarySubjectDAO salarySubjectDAO;
	@Autowired
	private TableTeachingDAO tableTeachingDAO;

	public List<Teach> getTablest(@RequestBody TeachSeachBean1 id1) {
		
		List<Teach> tableShowList = new ArrayList<>();
		List<Teach> tableListB1 = new ArrayList<>();
	
		Teach teach = new Teach();
		Teach teach2 = new Teach();
		Teach teach3 = new Teach();
//		0-0-90
		

		
		try {
			tableListB1=teachDAO.teschBaedcaem1(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),
					id1.getDegreeS4());
			int b=-0,c=0;
			int sumteach=0;
			int setTsd=0 , setPsd=0;

			for (int i = 0; i < tableListB1.size(); i++) {
				//วิชาฝึก
				if (tableListB1.get(i).getTableTeaching().getSubject().getTudsadee()==0 && tableListB1.get(i).getTableTeaching().getSubject().getPrtibad()==0) {

				if (tableListB1.get(i).getTeachId()!=null && tableListB1.get(i).getStatusTeaching()!=2) {
					b=0;
					c=2;
					sumteach+=2;
					 System.out.println("ใช้เฐาน:: "+" "+(sumteach)+""+tableListB1.get(i).getSubjactFk());
//					 list.get(i).setStatusTeaching(2);
					 teach.setId(tableListB1.get(i).getId());
					 teach.setBaseHour(b);
					 teach.setBasecram(c);
					 teach.setStatusTeaching(2);
					 teach.setStatusTeach(1);
					 teachDAO.updateBase(teach);
				}
				
			}
			}
			List<Teach> list1 = new ArrayList<>();
			list1 = teachDAO.teschASCfileAll(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),
					id1.getDegreeS4());
			//ใช้เป็นฐาน
			for (int j = 0; j < list1.size(); j++) {
				if (list1.get(j).getStatusTeaching()!=2) {
				
				if (list1.get(j).getTableTeaching().getStandardTeach()>110 &&list1.get(j).getTableTeaching().getSubject().getPrtibad()!=0&&list1.get(j).getTableTeaching().getSubject().getTudsadee()!=0) {
					setTsd = list1.get(j).getTableTeaching().getSubject().getPrtibad();
					setPsd = list1.get(j).getTableTeaching().getSubject().getTudsadee();
					int bas1=list1.get(j).getUsers().getUserbaseHour();
					int sumtp = setTsd + setPsd;
					int sum =sumteach+sumtp;
					//System.out.println(sumteach+"จำนวนฐาน.....<<<100");
					if (sum<bas1) {
						//System.out.println(sum+"จำนวนฐาน.....<<<100");
						// System.out.println("ใช้เฐาน:: "+" "+sumteach+"+++"+list1.get(j).getSubjactFk());
						 sumteach+=sumtp;
					//	list.get(j).setStatusTeaching(2);
						 teach2.setId(list1.get(j).getId());
						 teach2.setBaseHour(0);
						 teach2.setBasecram(sumtp);
						 teach2.setStatusTeaching(2);
						 teach2.setStatusTeach(1);
						 teachDAO.updateBase(teach2);
							
					}
				} 
				}
			}
			List<Teach> list2 = new ArrayList<>();
			list2=teachDAO.teschASCfileAll(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),
					id1.getDegreeS4());
			//ใช้เบิก
			for (int m = 0; m < list2.size(); m++) {
			if (list2.get(m).getStatusTeaching()!=2 &&list2.get(m).getTableTeaching().getSubject().getPrtibad()!=0&&list2.get(m).getTableTeaching().getSubject().getTudsadee()!=0) {
				int setTsd1=0 , setPsd1=0,tsd_day=0,psd_day=0;
			
				setTsd1 = list2.get(m).getTableTeaching().getSubject().getPrtibad();
				setPsd1 = list2.get(m).getTableTeaching().getSubject().getTudsadee();
				int sumtp1 = setTsd1 + setPsd1;int bHuur=0;
				int bas=list2.get(m).getUsers().getUserbaseHour();
				int stats=0,set_buk=0,bang=0;
				System.out.println(sumtp1);
			
				boolean checkRound = true;
				
				System.out.println(sumteach+"จำนวนฐาน");
			
				if (sumteach<bas) {
					set_buk=(sumtp1-1);
//					if (checkRound) {
						System.out.println(bas);
						int subb=sumteach+sumtp1;
						int h = sumtp1 + bas;
						System.out.println(h);
						bang = (h - subb);
						 bHuur=set_buk-bang;
						 System.out.println(sumteach+" แบ่ง :: "+bang+" "+bHuur);
						 sumteach=sumteach+bang;
						 tsd_day=bang;
						 
						 teach3.setBaseHour(bHuur);
						 teach3.setBasecram(bang);
						 teach3.setStatusTeach(2);
						 sumteach=sumteach+bang;
						checkRound = false;
//					} else {
//						 System.out.println("ใช้เบิก 11:: "+" "+(set_buk)+list2.get(m).getSubjactFk());
//						 teach3.setBaseHour(sumtp1-1);
//						 teach3.setBasecram(0);
//						 teach3.setStatusTeach(2);
//						 sumteach=sumteach+sumtp1;
//					}
					
				}else {
					 System.out.println("ใช้เบิก 22:: "+" "+(set_buk)+list2.get(m).getSubjactFk());
					 teach3.setBaseHour(sumtp1-1);
					 teach3.setBasecram(0);
					 teach3.setStatusTeach(2);
					 sumteach=sumteach+sumtp1;
				}
				System.out.println(set_buk+"setBaseHour");
				 teach3.setId(list2.get(m).getId());
				 teach3.setStatusTeaching(2);
				 teachDAO.updateBase(teach3);
				 DateofTeach UP_dayday = new DateofTeach();
				 int ttd=list2.get(m).getTableTeaching().getSubject().getTudsadee();
				 int ttp= list2.get(m).getTableTeaching().getSubject().getPrtibad();
				 int tttd=0,tttp=0;
				if (teach3.getBaseHour()!=0) {
					if (teach3.getBasecram()>0 ) {
						int subtt=ttd-teach3.getBasecram();
						if (subtt>=0) {
							tttd=subtt;
							UP_dayday.setTudsadeeDft(subtt);
							UP_dayday.setPrtibadDft(ttp);
							int ssm=ttp+(subtt/2);
							UP_dayday.setSummyhourDft(ssm);
						}
						if (subtt<0) {
							tttp=subtt+ttp;
							UP_dayday.setTudsadeeDft(tttd);
							UP_dayday.setPrtibadDft(tttp);
							int ssm=tttp/2;
							UP_dayday.setSummyhourDft(ssm);
						}
					}
					if (teach3.getBasecram()==0) {
						UP_dayday.setTudsadeeDft(ttd);
						UP_dayday.setPrtibadDft(ttp);
						int ssm=ttp+(ttd/2);
						UP_dayday.setSummyhourDft(ssm);
						
					}
					System.out.println(UP_dayday.getTudsadeeDft()+">>>>111");
					System.out.println(UP_dayday.getPrtibadDft()+">>>>>222");
					System.out.println(UP_dayday.getSummyhourDft()+">>>>333");
					UP_dayday.setDateofteachId(list2.get(m).getTeachId());
					UP_dayday.setStatusBase("2");					
					UP_dayday.setUserDft(id1.getUseridS1());
					UP_dayday.setSubjectDft(list2.get(m).getTableTeaching().getSubject().getSubjectId());
					dateofTeachDAO.updateDay(UP_dayday);
				}
			}
			
			}
		
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return tableListB1;
	}
//	 public static void main(String[] args) {
//	        // จุดทศนิยมปัดเป็นสองตำแหน่ง
//		 TeachSeachBean1 id1 =new TeachSeachBean1(); 
//		  id1.setUseridS1("57011230061");
//		  id1.setTermS2("2");
//		  id1.setYearS3("2561");
//		  id1.setDegreeS4("1");
//	      ServiceTeaching().getTablest(id1);
//	   
//	     
//	    }
}
