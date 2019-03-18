package com.cs.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.SalaryFinalBean;
import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.RepostDAO;
import com.cs.bru.dao.SalarySubjectDAO;
import com.cs.bru.dao.StatusTpDAO;
import com.cs.bru.dao.SubjectsumHourDAO;
import com.cs.bru.dao.TechingRepostDAO;
import com.cs.bru.model.Salary;
import com.cs.bru.model.StatusTP;
import com.cs.bru.model.SubjectsumHour;
import com.cs.bru.model.Teach;
import com.cs.bru.model.TechingRepost;
import com.cs.bru.service.ServiceThaiBaht;

@RestController
public class SalaryController {
	@Autowired
	StatusTpDAO statusTpDAO;
	@Autowired
	SalarySubjectDAO salarySubjectDAO;
	@Autowired
	ServiceThaiBaht serviceThaiBaht;
	@Autowired
	TechingRepostDAO techingRepostDAO;
	@Autowired
	RepostDAO repostDAO;
	@Autowired
	SubjectsumHourDAO subjectsumHourDAO;
	
	@GetMapping(value="StatusTpFilebean")
	public StatusTP StatusTpFilebean () throws SQLException {
		StatusTP TPP=new StatusTP();
		TPP=statusTpDAO.SunjectTPbean("25611141001");
		
		return TPP;
	}
	@GetMapping(value="StatusTpFilelist")
	public  List<StatusTP> StatusTpFilelist () throws SQLException {
		List<StatusTP> ttp=new ArrayList<>();
		ttp=statusTpDAO.listSunjectTP("25611141001");
		
		return ttp;
	}
	@GetMapping(value="statusTpFileBylistID")
	public  List<StatusTP> StatusTpFileBylistID () throws SQLException {
		List<StatusTP> ttp=new ArrayList<>();
		ttp=statusTpDAO.SunjectTPFileBylist("570112230061", "1", "2561", "1");
		
		return ttp;
	}
	@PostMapping(value="fileBylistIdSETstatus")
	public  List<StatusTP> statusFileBylistId (@RequestBody TeachSeachBean1 id1) throws SQLException {
		List<StatusTP> ttp=new ArrayList<>();
		try {
			ttp=statusTpDAO.SunjectTPFileBylist(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(), id1.getDegreeS4());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		
		return ttp;
	}
	@PostMapping(value="insertstatusFile")
	public  List<StatusTP> insertstatusFile (@RequestBody TeachSeachBean1 id1) throws SQLException {
		List<StatusTP> ttp=new ArrayList<>();
		
		List<StatusTP> sumsalery =new ArrayList<>();
	
		Salary salarySeve =new Salary();
	
		try {
			ttp=statusTpDAO.SunjectTPFileBylist(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(), id1.getDegreeS4());
			for (int i = 0; i < ttp.size(); i++) {
				
				if (ttp.get(i).getStatusSubject()==1) {
					sumsalery=statusTpDAO.sumjectTPsumSalery(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(), id1.getDegreeS4(),ttp.get(i).getStatusSubject());
					int sumP=0,sumMP=0;
					for (int p = 0; p < sumsalery.size(); p++) {
						sumP+=sumsalery.get(p).getSetstatusSubjectHour();
						sumMP+=sumsalery.get(p).getSetstatusSubjectMoney();
					}
					salarySeve.setSumTudsadeePrtibad(sumP);
					salarySeve.setSalarySummoney(sumMP);
					salarySeve.setSalaryId(id1.getUseridS1()+id1.getTermS2()+id1.getYearS3()+id1.getDegreeS4()+"-"+ttp.get(i).getStatusSubject());
					salarySeve.setSalarySetatatusId(ttp.get(i).getStatusSubject());
					salarySeve.setSalaryuserFk(ttp.get(i).getSetjectUserid());
					salarySeve.setSalaryTableteahing(ttp.get(i).getTechingSetjectId());
					salarySubjectDAO.insertSalarySeve(salarySeve);
					System.out.println("salarySubjectDAO");
				}
				if (ttp.get(i).getStatusSubject()==2) {
					sumsalery=statusTpDAO.sumjectTPsumSalery(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(), id1.getDegreeS4(),ttp.get(i).getStatusSubject());
					int sumt=0,sumMt=0;
					for (int t = 0; t < sumsalery.size(); t++) {
						sumt+=sumsalery.get(t).getSetstatusSubjectHour();
						sumMt+=sumsalery.get(t).getSetstatusSubjectMoney();
					}
					
					salarySeve.setSalaryId(id1.getUseridS1()+id1.getTermS2()+id1.getYearS3()+id1.getDegreeS4()+"-"+ttp.get(i).getStatusSubject());
					salarySeve.setSalarySetatatusId(ttp.get(i).getStatusSubject());
					salarySeve.setSalaryuserFk(ttp.get(i).getSetjectUserid());
					salarySeve.setSumTudsadeePrtibad(sumt);
					
					salarySeve.setSalarySummoney(sumMt);
					salarySeve.setSalaryTableteahing(ttp.get(i).getTechingSetjectId());
					salarySubjectDAO.insertSalarySeve(salarySeve);
				}
			}
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		
		return ttp;
	}
	@PostMapping(value="insertSalaryFinalBean")
	public  List<Salary> insertSalaryFinalBean (@RequestBody SalaryFinalBean salaryFinalBean) throws SQLException {
		List<StatusTP> ttp=new ArrayList<>();
		List<Teach> addsumject=new ArrayList<>();
		List<Salary> salary= new ArrayList<>();
		TechingRepost techingRepost =new TechingRepost();
		List<StatusTP> subjectSum =new ArrayList<>();
		Salary inssalary= new Salary(); 
		TechingRepost tech =new TechingRepost();
		SubjectsumHour subjectsumHour=new SubjectsumHour();
		SubjectsumHour cacksubjectsumHour=new SubjectsumHour();
		String user=salaryFinalBean.getTeachSeachBean1().getUseridS1();
		String trem =salaryFinalBean.getTeachSeachBean1().getTermS2();
		String year=salaryFinalBean.getTeachSeachBean1().getYearS3();
		String degree=salaryFinalBean.getTeachSeachBean1().getDegreeS4();
		
		try {
			tech=techingRepostDAO.findBean(salaryFinalBean.getTableteachId());
			String thaiBaht=serviceThaiBaht.getText(salaryFinalBean.getSalaryMoney());
			System.out.println(thaiBaht+"::: แปลงเงิน");
			
			System.out.println(salaryFinalBean.getPrtibadBean().getPrtibadStatus());
			if (tech.getTeachingFk()==null) {
				
			
				if (salaryFinalBean.getPrtibadBean().getPrtibadStatus()==1) {
					inssalary.setSalarySummoney(salaryFinalBean.getPrtibadBean().getPrtibadMoney());
					inssalary.setSalarySetatatusId(salaryFinalBean.getPrtibadBean().getPrtibadStatus());
					inssalary.setSumTudsadeePrtibadHour(salaryFinalBean.getPrtibadBean().getPrtibadHour());
					inssalary.setSalaryuserFk(salaryFinalBean.getSalaryIdUser());
					inssalary.setSalaryId(salaryFinalBean.getTableteachId());
					inssalary.setSalaryTableteahing(salaryFinalBean.getTableteachId());
					inssalary.setSaleryTaibaht(thaiBaht);
					salarySubjectDAO.insertSalarySeve(inssalary);
				} 
				if (salaryFinalBean.getTudsadeeBean().getTudsadeeStatus()==2) {
					inssalary.setSalarySummoney(salaryFinalBean.getTudsadeeBean().getTudsadeemoney());
					inssalary.setSalarySetatatusId(salaryFinalBean.getTudsadeeBean().getTudsadeeStatus());
					inssalary.setSumTudsadeePrtibadHour(salaryFinalBean.getTudsadeeBean().getTudsadeeHour());
					inssalary.setSalaryuserFk(salaryFinalBean.getSalaryIdUser());
					inssalary.setSalaryId(salaryFinalBean.getTableteachId());
					inssalary.setSalaryTableteahing(salaryFinalBean.getTableteachId());
					inssalary.setSaleryTaibaht(thaiBaht);
					salarySubjectDAO.insertSalarySeve(inssalary);
				} 
				techingRepost.setTeachReportId(salaryFinalBean.getIdRepost());
				techingRepost.setRepostSum(salaryFinalBean.getPrtibadBean().getPrtibadHour()+salaryFinalBean.getTudsadeeBean().getTudsadeeHour());
				techingRepost.setRepostMoney(salaryFinalBean.getSalaryMoney());
				techingRepost.setUserepRortFK(salaryFinalBean.getSalaryIdUser());
				techingRepost.setTeachingFk(salaryFinalBean.getTableteachId());
				techingRepost.setReportThaibaht(thaiBaht);
				techingRepost.setStatusRepost(2);
			techingRepostDAO.insertTechingRepostSalary(techingRepost);
			}
			
			addsumject=repostDAO.repostPaper1(user,trem,year,degree);
			
			
			for (int j = 0; j < addsumject.size(); j++) {
				
				if (addsumject.get(j).getStatusTeach()==2) {
					cacksubjectsumHour=subjectsumHourDAO.salarysumHourByID(addsumject.get(j).getTeachId());
					if (cacksubjectsumHour.getSubjectsumStatus()!=2) {
						
					
					int subH=0,sumM=0;
					subjectSum=statusTpDAO.listAllSumsubject(user,trem,year,degree,addsumject.get(j).getSubjactFk());
				int sumt=0,sump=0;int po=1;
					for (int m = 0; m < subjectSum.size(); m++) {
						
						
						sumM+=subjectSum.get(m).getSetstatusSubjectMoney();
						if (subjectSum.get(m).getStatusSubject()==2) {
							sumt+=subjectSum.get(m).getSetstatusSubjectHour(); 
						}
						if (subjectSum.get(m).getStatusSubject()==1) {
							sump+=subjectSum.get(m).getSetstatusSubjectHour();
						}
						if (subjectSum.get(m).getTableTeaching().getStudenNumber()>20) {
							po=2;
						}
					
						System.out.println(subjectSum.get(m).getTableTeaching().getStudenNumber()+".............");
					}
					subjectsumHour.setRepostSet(po);
					System.out.println(subH);
					
					subjectsumHour.setSubjectsumHourId(addsumject.get(j).getTeachId());
					subjectsumHour.setSubjectsumTeachTd(addsumject.get(j).getTeachId());
					subjectsumHour.setSubjectsumUserId(addsumject.get(j).getUserFk());
					subjectsumHour.setSubjectsumPrtibad(sump);
					subjectsumHour.setSubjectsumTudsadee(sumt);
					subjectsumHour.setSubjectsumMoney(sumM);
					subjectsumHour.setSubjectsumSubjectTd(addsumject.get(j).getSubjactFk());
					subjectsumHour.setSubjectsumStatus(2);
					subjectsumHourDAO.insert(subjectsumHour);
				}
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		
		return salary;
	}
	
	@PostMapping(value="salaryAndRepost")
	public List<Salary> salaryAndRepost(@RequestBody TeachSeachBean1 id1) {
		
		List<Salary> hi=new ArrayList<Salary>();
		 hi=salarySubjectDAO.salaryListByIdMoney(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
		
		return hi;
	}
	@GetMapping(value="salaryAndRepost1")
	public List<Salary> salaryAndRepost1() {
		List<Salary> hi=new ArrayList<Salary>();
		 hi=salarySubjectDAO.salaryListByIdMoney("570112230061", "1", "2561","1");
		
		return hi;
	}
	@GetMapping(value="fildListAndRepost")
	public List<TechingRepost> fildListAndRepost() {
		List<TechingRepost> list=new ArrayList<TechingRepost>();
		list=techingRepostDAO.historyfindRepost("570112230061");
		
		return list;
	}
	@GetMapping(value="fildListRepost/{id}")
	public List<TechingRepost> fildListRepost(@PathVariable String id) {
		List<TechingRepost> list=new ArrayList<TechingRepost>();
		
		list=techingRepostDAO.historyfindRepost(id);
		
		return list;
	}
	@GetMapping(value="fild")
	public List<Teach> fildListRepost() {
		List<Teach> list=new ArrayList<>();
		list=repostDAO.repostPaper1("570112230061", "1", "2561","1");
		
		return list;
	}

}
