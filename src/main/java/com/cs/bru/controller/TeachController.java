package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.arjuna.ats.internal.jdbc.drivers.modifiers.list;
import com.cs.bru.bean.TeachBean;
import com.cs.bru.bean.TeachInsertBean;
import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.DateTimeDAO;
import com.cs.bru.dao.DateofTeachDAO;
import com.cs.bru.dao.SalarySubjectDAO;
import com.cs.bru.dao.StatusTpDAO;
import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.dao.TableTeachingDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.DateTime;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.Salary;
import com.cs.bru.model.StatusTP;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;

import ch.qos.logback.core.net.SyslogOutputStream;

@RestController
public class TeachController {
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

	@RequestMapping("/insertTeach")
	public String insertTeach(@RequestBody Teach insertTeachSub, DateTime dateTimeDAO1, Subject subject) {
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

	@RequestMapping(value = "/tCon", method = RequestMethod.GET)
	public List<Teach> contest() {

		List<Teach> li = new ArrayList<>();
		li = teachDAO.teschASCfileAll("570112230061", "1", "2561", "1");
		return li;
	}

	@RequestMapping(value = "/dateofday", method = RequestMethod.POST)
	public List<DateofTeach> dateofday() {
		List<DateofTeach> listDay = new ArrayList<>();

		return listDay;
	}

	@RequestMapping(value = "/TeachOneSeachByid1", method = RequestMethod.POST)
	public List<Teach> getTablest(@RequestBody TeachSeachBean1 id1) {
		List<Teach> list = new ArrayList<>();
		List<Teach> tableShowList = new ArrayList<>();
		String userid;
		// String term ="1";
		// String year = "2561";
		// String de = "1";
		try {
			
	
		list = teachDAO.teschASCfileAll(userid = id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),
				id1.getDegreeS4()/* userid="u",term,year,de */);

		User users = new User();
		users = userDAO.findById(userid);
		Teach teach = new Teach();
		DateofTeach dayday = new DateofTeach();

		// List<Integer> baseHour = Arrays.asList(4,4,4,4); //เรียงตามวิชา
		// Collections.sort(baseHour); //sorting collection
		// int base =4;
		int su = 0;
		int sum = 0, go = 0;

		boolean checkRound = true;
		boolean che = true;
		int summbh = 0, summho = 0, xx = 0, ggg = 0;
		int setTsd = 0, setPsd = 0;
		for (int i = 0; i < list.size(); i++) {
			
			int setBaseHour = 0, setBasecram = 0, day = 0, dday = 0;
			
			if (list.get(i).getStatusTeaching()!=2) {
				
			
			teach.setBaseHour(0);
			teach.setBasecram(0);
			setTsd = list.get(i).getTableTeaching().getSubject().getPrtibad();
			setPsd = list.get(i).getTableTeaching().getSubject().getTudsadee();
			int sumtp = setTsd + setPsd;
			int bh = users.getUserbaseHour();// ฐานเบิก
			sum += sumtp;
			if (setTsd != 0 && setPsd != 0) {
				if (sum > bh) {
					ggg = (sumtp - 1);
					if (checkRound) {

						int h = sumtp + bh;
						// int xx = (sum-(baseHour.get(i)-1));
						xx = (h - sum);
						 System.out.println(" แบ่ง :: "+xx+" "+((ggg-xx)));
						list.get(i).setBaseHour(ggg - xx);

						day = ggg - xx;
						list.get(i).setBasecram(xx);
						dday = xx;
						summho += ggg - xx;
						summbh += xx;

						teach.setBaseHour(day);
						teach.setBasecram(dday);
						checkRound = false;
					} else {
					 System.out.println("ใช้เบิก :: "+" "+(ggg));
						day = ggg;
						summho += ggg;
						setBaseHour = ggg;
						list.get(i).setBaseHour(ggg);
						teach.setBaseHour(ggg);
					}

				} else {
					summbh += sumtp;
					 System.out.println(" ฐาน คาบ :: "+sumtp);
					list.get(i).setBasecram(sumtp);
					// teach.setBasecram(sumtp);
					su += sumtp;

				}
			} else {
				summbh += sumtp;
				// System.out.println(" ฐาน คาบ :: "+sumtp);
				list.get(i).setBasecram(sumtp);
				// teach.setBasecram(sumtp);
				su += sumtp;
			}

			// teach.setBasecram(summbh);
			// teach.setBaseHour(summho);
			if (day == 0) {
				dayday.setStatusBase("1");
			} else {
				dayday.setStatusBase("2");
			}

			// int bass=list.get(i).getSubject().getTudsadee();
			int setT = 0;
			if (setTsd != 0) {
				// setTsd=(xx-list.get(i).getSubject().getTudsadee());
				// setPsd=(list.get(i).getSubject().getPrtibad());
				setT = (setTsd - dday);
				setTsd = setT;
				// System.out.println(setT);
				if (setT < 0) {
					int gg = 0;
					gg = (setT + setPsd);
					setPsd = gg;
					setTsd = 0;
//					System.out.println(gg);
				} else if (setT > setTsd) {

					// System.out.println("...");
		//			System.out.println("...");
				} else {
				System.out.println(setTsd + "ทฏ" + setT);
				}

			} else {
//				System.out.println(setTsd + "ปบ");
			}
			//
			if (list.get(i).getBaseHour() != 0) {
				teach.setStatusTeach(2);
			} else {
				teach.setStatusTeach(1);
			}
			dayday.setTudsadeeDft(setTsd);
			dayday.setPrtibadDft(setPsd);
			teach.setTeachId(list.get(i).getTeachId());

			teach.setBasecram(list.get(i).getBasecram());
//			System.out.println(list.get(i).getBasecram());
			teach.setStatusTeaching(2);
			
			teachDAO.updateBase(teach);

			dayday.setSubjectDft(list.get(i).getSubjactFk());

			dateofTeachDAO.updateDay(dayday);

			// System.out.println("--------------------------------------"+"::"+summbh+":::"+summho);
			// list.get(i).setBaseHour(summbh);
			// list.get(i).setBasecram(summho);
			} 

			
		}
	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

//	@PostMapping(value = "teachFoday")
	public List<DateofTeach> ASCfileAll(@RequestBody TeachSeachBean1 id1) {
		List<DateofTeach> list = new ArrayList<>();
		List<Teach> listtach = new ArrayList<>();
		DateofTeach dateofbean = new DateofTeach();
		System.out.println(id1.getUseridS1() + "passs");
		// String userid = "u";
		// String term ="1";
		// String year = "2561";
		// String de = "1";
		list = dateofTeachDAO.fileASCDay(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());

		// list = dateofTeachDAO.fileASCDay(userid, term, year,de);
		// listtach=teachDAO.teschASCfileAll(userid, term, year, de);

		int summ_tsd = 0;
		int sum_tsd, sum_ptb = 0;
		for (int i = 0; i < list.size(); i++) {
		
			int ptb = list.get(i).getTableTeaching().getSubject().getPrtibad();
			int tsd = list.get(i).getTableTeaching().getSubject().getTudsadee();
			int set_ptb;
			int set_tsd;
			if (list.get(i).getStatusDateofteach() != 2) {

				if (list.get(i).getPrtibadDft() != 0) {
					set_ptb = ptb / 2;
					list.get(i).setPrtibadDft(set_ptb);
					sum_ptb += set_ptb;

				} else {
					set_tsd = tsd / 2;
					list.get(i).setTudsadeeDft(set_tsd);
				}

				int tsd_ptb = list.get(i).getTudsadeeDft() + list.get(i).getPrtibadDft();
				list.get(i).setSummyhourDft(tsd_ptb);
				summ_tsd += list.get(i).getTudsadeeDft();

				// int maney =
				// tsd_ptb*list.get(i).getTeach().getTableTeaching().getStandardTeach();
				// list.get(i).setMoneyDft(maney);
				// dateofbean.setMoneyDft(maney);

				dateofbean.setTudsadeeDft(list.get(i).getTudsadeeDft());
				dateofbean.setPrtibadDft(list.get(i).getPrtibadDft());
				dateofbean.setSummyhourDft(tsd_ptb);
				dateofbean.setDateofteachId(list.get(i).getDateofteachId());
				dateofbean.setStatusDateofteach(2);
				
				dateofTeachDAO.updateTsdPtb(dateofbean);
				System.out.println(list.get(i).getPrtibadDft() + "bbbbbbbbbbbbbbbb");
			}

		}

		return list;
	}

	//
	@RequestMapping(value = "/teachFoday2", method = RequestMethod.POST)
	public List<DateofTeach> ASCfileAll2(@RequestBody TeachSeachBean1 id1) {
		List<DateofTeach> list = new ArrayList<>();
		List<DateofTeach> list22 = new ArrayList<>();
		List<Teach> listtach = new ArrayList<>();
		DateofTeach dateofbean = new DateofTeach();
	
		list = dateofTeachDAO.fileASCDay(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),
				id1.getDegreeS4()/* userid="u",term,year,de */);
		try {
			int summ_tsd = 0; int sum_tsd=0,sum_ptb=0;
			for (int i = 0; i < list.size(); i++) {
				int ptb=list.get(i).getPrtibadDft();
				int tsd=list.get(i).getTudsadeeDft();
				int set_ptb=0;
				int set_tsd=0;
//				set_ptb=(ptb+tsd);
//				list.get(i).setSummyhourDft(set_ptb);
//				System.out.println("getStatusDateofteach==="+list.get(i).getStatusDateofteach());
				
				if (list.get(i).getStatusDateofteach()!=2) {
//					
					if (list.get(i).getPrtibadDft() != 0) {
						set_ptb=ptb/2;
						list.get(i).setPrtibadDft(set_ptb);
						sum_ptb+=set_ptb;
						
					} else {
						set_tsd=tsd/2;
						list.get(i).setTudsadeeDft(set_tsd);
					}
			
				
	          int tsd_ptb=list.get(i).getTudsadeeDft()+list.get(i).getPrtibadDft();
	          list.get(i).setSummyhourDft(tsd_ptb);
	//           summ_tsd +=list.get(i).getTudsadeeDft();
	      
//	          list.get(i).setPrtibadDft(ptb);
//				list.get(i).setTudsadeeDft(tsd);
				
//	           int maney = tsd_ptb*list.get(i).getTeach().getTableTeaching().getStandardTeach();
//	           list.get(i).setMoneyDft(maney);
//	           dateofbean.setMoneyDft(maney);
	        
	        	   dateofbean.setTudsadeeDft(list.get(i).getTudsadeeDft());
	               dateofbean.setPrtibadDft(list.get(i).getPrtibadDft());
	               dateofbean.setSummyhourDft(tsd_ptb);
	               dateofbean.setSubjectDft(list.get(i).getSubjectDft());;
	               dateofbean.setStatusDateofteach(2);
              System.out.println(dateofbean.getTudsadeeDft()+"**************");
            //   System.out.println( dateofbean.getStatusDateofteach());
	               
	               dateofTeachDAO.updateTsdPtb(dateofbean);
	              
			} 

		
	           
			}
			list22 = dateofTeachDAO.fileASCDay(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
			salarySum(id1);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

//	@RequestMapping(value = "/listDay", method = RequestMethod.POST)
	public List<Salary> salarySum(@RequestBody TeachSeachBean1 id1) {
		Salary subjectAdd = new Salary();
		Salary subjectShow = new Salary();
		StatusTP tpSet =new StatusTP();
		StatusTP tpSetShe =new StatusTP();
		List<DateofTeach> subjectById = new ArrayList<>();
		List<Teach> teaching = new ArrayList<>();
		List<Salary> salaryList = new ArrayList<>();
		
 
		try {
			
			teaching = teachDAO.findByIdUser(id1.getUseridS1());
			
			for (int i = 0; i < teaching.size(); i++) {

				if (teaching.get(i).getBaseHour() != 0) {
					subjectById = dateofTeachDAO.fileListByid(teaching.get(i).getUserFk(),
							teaching.get(i).getSubjactFk());

					int sumtsd = 0, sumpsb = 0, sumtsd_ptb = 0,basemoney=0;
					for (int j = 0; j < subjectById.size(); j++) {
						int tt=subjectById.get(j).getTudsadeeDft();
						int pp=subjectById.get(j).getPrtibadDft();
						
						sumpsb = (sumpsb+pp);
						
						sumtsd = (sumtsd+tt);
						
						
					 basemoney= subjectById.get(j).getMoneyDft();
						
					}
					System.out.println(sumpsb +":::" +"ปปปปปป");
					System.out.println(sumtsd +":::" +"ทททททท");
					System.out.println(sumpsb+sumtsd);
					System.out.println(basemoney);
					int ASD= sumpsb+sumtsd;
					int AAA =ASD*basemoney;
					int h=0;
					tpSetShe=statusTpDAO.SunjectTPbean(teaching.get(i).getTeachId());
					System.out.println(tpSetShe.getSetstatusSubId()+".................");
					if (tpSetShe.getSetstatusSubId()==null) {
						
					
					//ทฤษฎี
					tpSet.setSetstatusSubjectId(teaching.get(i).getTeachId());
					tpSet.setSetstatusSubjectHour(sumtsd);
					tpSet.setSetstatusSubjectBase(basemoney);
					tpSet.setSetstatusSubjectMoney(sumtsd*basemoney);
					tpSet.setStatusSubject(2);
					tpSet.setSetjectUserid(teaching.get(i).getUserFk());
					tpSet.setTechingSetjectId(teaching.get(i).getTeachId());
					tpSet.setSetstatusSubId(teaching.get(i).getSubjactFk());
					statusTpDAO.insertStsubject(tpSet);
					//ปฏิบัติ
					tpSet.setSetstatusSubjectId(teaching.get(i).getTeachId());
					tpSet.setSetstatusSubjectHour(sumpsb);
					tpSet.setSetstatusSubjectBase(basemoney);
					tpSet.setSetstatusSubjectMoney(sumpsb*basemoney);
					tpSet.setStatusSubject(1);
					tpSet.setSetjectUserid(teaching.get(i).getUserFk());
					tpSet.setTechingSetjectId(teaching.get(i).getTeachId());
					tpSet.setSetstatusSubId(teaching.get(i).getSubjactFk());
					statusTpDAO.insertStsubject(tpSet);
			
					}
					System.out.println(teaching.get(i).getSubjactFk() +":::" +"วิชา"+(h+1)+"รอบ"+sumpsb+":::"+sumtsd+"::"+AAA);
					
					
//					subjectShow = salarySubjectDAO.salaryListById(teaching.get(i).getTeachId());
//				//	 System.out.println(subjectShow.getSalaryStatus());
//					if (subjectShow.getSalaryStatus() != 2) {
//						System.out.println(subjectShow.getSalaryStatus());
//						subjectAdd.setSalaryId(teaching.get(i).getTeachId());
//				//		 System.out.println(sumpsb+"::sumpsb");
//				//		 System.out.println(sumtsd+"::sumtsd");
//				//		 System.out.println(sumtsd_ptb+"::sumtsd_ptb");
//						subjectAdd.setSalarySumTudsadee(sumtsd);
//						subjectAdd.setSalarySumPrtibad(sumpsb);
//						subjectAdd.setSumTudsadeePrtibad(sumtsd+sumpsb);
//						subjectAdd.setSalaryStatus(2);
//						subjectAdd.setSalarySubjeatFk(teaching.get(i).getSubjactFk());
//						subjectAdd.setSalaryuserFk(teaching.get(i).getUserFk());
//					//	System.out.println(subjectAdd.getSalarySumTudsadee()+"+++"+subjectAdd.getSalarySumPrtibad()+":++:");
//					
//						
//						salarySubjectDAO.insertSalary(subjectAdd);
//					}

	//				System.out.println("---------------");
				} else {
			//		System.out.println("::: NOOOOOO");
				}

			}
			salaryList = salarySubjectDAO.salaryListByIdUser(id1.getUseridS1());

		} catch (Exception e) {
			// TODO: handle exception
		}
		return salaryList;
	}

	@GetMapping(value = "salaryAll")
	public List<Salary> salaryAll() {
		List<Salary> sa = new ArrayList<>();
		sa = salarySubjectDAO.salaryListAll();
		return sa;
	}

	@GetMapping(value = "salaryId")
	public Salary salaryId() {
		Salary sa = new Salary();
		sa = salarySubjectDAO.salaryListById("25611141001");
		return sa;
	}

	@PostMapping(value = "/dateTest")
	public List<Teach> dateTest(@RequestBody TeachSeachBean1 id1) {
		List<Teach> dd = new ArrayList<>();

		dd = teachDAO.findShowTableList(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(), id1.getDegreeS4());

		return dd;
	}

	@GetMapping(value = "teest")
	public List<DateofTeach> teest() {

		List<DateofTeach> subjectById = new ArrayList<>();
		subjectById = dateofTeachDAO.fileListByid("570112230061","4124901");

		return subjectById;
	}

	
	// public static void main(String args[]) throws InterruptedException{
	//
	// List<Teach> list = new ArrayList<>();
	// String userid = "u";
	// String term ="1";
	// String year = "2561";
	// String de = "1";
	// list =teachDAO.teschASCfileAll(userid, term, year,de);
	// User users =new User();
	// users=UserDAO.findById(userid);
	// Teach teach=new Teach();
	////
	//// List<Integer> baseHour = Arrays.asList(4,4,4,4); //เรียงตามวิชา
	//// Collections.sort(baseHour); //sorting collection
	//
	// System.out.println("Unsorted List in Java: " + list);
	//
	//
	//
	//// int base =4;
	// int su = 0;
	// int sum = 0,go=0;
	//
	// boolean checkRound = true;
	// boolean che =true;
	// int summbh=0,summho =0;
	//
	// for(int i=0; i<list.size(); i++) {
	// int
	// sumtp=list.get(i).getTableTeaching().getSubject().getPrtibad()+list.get(i).getTableTeaching().getSubject().getTudsadee();
	// int bh=users.getBaseHour();//ฐานเบิก
	// sum += sumtp;
	// if(sum > bh) {
	// int ggg=(sumtp-1);
	// if(checkRound) {
	//
	// int h=sumtp+bh;
	// // int xx = (sum-(baseHour.get(i)-1));
	// int xx = (h-sum);
	// System.out.println(" แบ่ง :: "+xx+" "+((ggg-xx)));
	//// sum += 1;
	//
	// summho += ggg-xx;
	// summbh +=xx;
	// checkRound = false;
	// }else {
	// System.out.println("ใช้เบิก :: "+" "+(ggg));
	// summho += ggg;
	// }
	//
	// } else {
	// summbh+=sumtp;
	// System.out.println(" ฐาน คาบ :: "+sumtp);
	// su += sumtp;
	//
	// }
	//
	// System.out.println("--------------------------------------"+"::"+summbh+":::"+summho);
	//
	// }
	//
	//
	// }
}