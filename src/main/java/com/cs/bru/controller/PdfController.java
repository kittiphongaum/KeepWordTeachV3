package com.cs.bru.controller;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.tools.ant.taskdefs.Exit;
import org.apache.zookeeper.server.ExitCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.DateofTeachDAO;
import com.cs.bru.dao.RepostDAO;
import com.cs.bru.dao.TeachDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.Car;
import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.Salary;
import com.cs.bru.model.StatusTP;
import com.cs.bru.model.SubjectsumHour;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;
import com.cs.bru.service.SeviceListPDF;
import com.cs.bru.service.UserIml;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@RestController
//@RequestMapping("/repost")
public class PdfController {
	@Autowired
	ApplicationContext context;
	
	@Autowired
	SeviceListPDF seviceListPDF;
	@Autowired
	DateofTeachDAO dateofTeachDAO;
	@Autowired
	TeachDAO teachDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	UserIml userIml;
	@Autowired 
	RepostDAO repostDAO;
	
	 @GetMapping(path = "/pdf")
	    @ResponseBody
//	    public void getPdf(@PathVariable String jrxml, HttpServletResponse response) throws Exception {
	    public void getPdf(HttpServletResponse response) throws Exception {
		 	
	        //Get JRXML template from resources folder
//	        Resource resource = context.getResource("classpath:reports/" + jrxml + ".jrxml");
	        Resource resource = context.getResource("classpath:reports/car_list.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        List<Car> cars =(List<Car>) seviceListPDF.findAll();

	        //Data source Set
	        JRDataSource dataSource = new JRBeanCollectionDataSource(null);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report, params, dataSource);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	    }
	
	 @PostMapping(path = "/repostPaper1")
	    public void teachgetPdf(HttpServletResponse response,@ModelAttribute("SpringWeb")TeachSeachBean1 id1) throws Exception {
		 	
		 System.out.println(id1.getUseridS1()+":::"+ id1.getTermS2()+":::");
	        //Get JRXML template from resources folder
	        Resource resource = context.getResource("classpath:relatorios/paper1.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	       
	        
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        //List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
	        List<Teach> teach = (List<Teach>) repostDAO.repostPaper1(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
	   
	        for (int i = 0; i < teach.size(); i++) {
	        	int b1=0,b2=0;
	        	
				if (teach.get(i).getStatusTeach()==2 && teach.get(i).getStatusTeaching()==100) {
					teach.get(i).getSumBean().setSumBean4("80%");
				} else {
					teach.get(i).getSumBean().setSumBean4(" ");
				}
				for (int j = 0; j < teach.size(); j++) {
					b1+=teach.get(j).getBasecram();
					b2+=teach.get(j).getBaseHour();
				}
				teach.get(i).getSumBean().setSumBean1(b1);
				teach.get(i).getSumBean().setSumBean2(b2);
			}
	        //   System.out.println(cars);
	    //    List<User> cars = (List<User>) userlistPDF.findAll();
	        //Data source Set
	        JRDataSource dataSource = new JRBeanCollectionDataSource(teach);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report,params,dataSource);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	       
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	        System.out.println(jasperPrint);
	    }
	 
	 
	 @PostMapping(path = "/repostPaper2")
	 //@RequestBody TeachSeachBean1 id1
	 @ResponseBody
	    public void listdayrepostPaper2( HttpServletResponse response,@ModelAttribute("SpringWeb")TeachSeachBean1 id1 ) throws Exception {
		 	
	        //Get JRXML template from resources folder
	        Resource resource = context.getResource("classpath:relatorios/paper2.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        //List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
	        List<StatusTP> cars = (List<StatusTP>) repostDAO.listdayrepostPaper2(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
	     //   System.out.println(cars);
	    //    List<User> cars = (List<User>) userlistPDF.findAll();
	        //Data source Set
	        JRDataSource dataSource = new JRBeanCollectionDataSource(cars);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report,params,dataSource);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	       
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	    }
	 @PostMapping(path = "/repostpaper3")
	    @ResponseBody
	    public void listrepostpaper3(HttpServletResponse response,@ModelAttribute("SpringWeb")TeachSeachBean1 id1) throws Exception {
		 List<Salary> list=new ArrayList<Salary>();
	        //Get JRXML template from resources folder
	        Resource resource = context.getResource("classpath:relatorios/paper3.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        //List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
	        List<DateofTeach> li = (List<DateofTeach>) repostDAO.listrepostpaper3(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());

			int summPrtibad=0,moneyPrtibad=0,summTesdee=0,moneyTesdee=0;
			for (int m = 0; m < li.size(); m++) {
				list=repostDAO.listdayrepostPaper4(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
				for (int i = 0; i < list.size(); i++) {
					if (list.get(i).getSalarySetatatusId()==1) {
						summPrtibad=(list.get(i).getSumTudsadeePrtibadHour());
						moneyPrtibad=(list.get(i).getSalarySummoney());
					}
					if (list.get(i).getSalarySetatatusId()==2) {
						summTesdee=(list.get(i).getSumTudsadeePrtibadHour());
						moneyTesdee =(list.get(i).getSalarySummoney());
					}
				}
				li.get(m).getSumTsdPsd().setSummPrtibad(summPrtibad);
				li.get(m).getSumTsdPsd().setSummMoneyPrtibad(moneyPrtibad);
				li.get(m).getSumTsdPsd().setSummTesdee(summTesdee);
				li.get(m).getSumTsdPsd().setSummMoneyTesdee(moneyTesdee);
				
				
			}
			
	        //   System.out.println(cars);
	    //    List<User> cars = (List<User>) userlistPDF.findAll();
	        //Data source Set
	        JRDataSource dataSource = new JRBeanCollectionDataSource(li);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report,params,dataSource);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	       
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	    }
	 @PostMapping(path = "/repostPaper4")
	    @ResponseBody
	    public void listdayrepostPaper4(HttpServletResponse response,@ModelAttribute("SpringWeb")TeachSeachBean1 id1) throws Exception {
		 	
	        //Get JRXML template from resources folder
	        Resource resource = context.getResource("classpath:relatorios/paper4.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        //List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
	        List<Salary> re = (List<Salary>) repostDAO.listdayrepostPaper4(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
	     //   System.out.println(cars);
	    //    List<User> cars = (List<User>) userlistPDF.findAll();
	        //Data source Set
	        for (int i = 0; i < re.size(); i++) {
	        	int sum=0;
	        	for (int j = 0; j < re.size(); j++) {
					sum+=re.get(i).getSalarySummoney();
				}
				re.get(i).getSumBean().setSumBean1(sum);
			}
	        JRDataSource dataSource = new JRBeanCollectionDataSource(re);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report,params,dataSource);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	       
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	    }
	 @PostMapping(path = "/repostPaper5")
	    @ResponseBody
	    public void listdayrepostPaper5(HttpServletResponse response,@ModelAttribute("SpringWeb")TeachSeachBean1 id1) throws Exception {
		 	
	        //Get JRXML template from resources folder
	        Resource resource = context.getResource("classpath:relatorios/paper5.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	     //   List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
	        List<SubjectsumHour> cars = (List<SubjectsumHour>) repostDAO.listdayrepostPaper5(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
	  
	     //   System.out.println(cars);
	    //   List<User> cars = (List<User>) userlistPDF.findAll();
	        //Data source Set
	        JRDataSource dataSource = new JRBeanCollectionDataSource(cars);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report,params,dataSource);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	       
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	    }
	 
	 @GetMapping(value = "/repostpaper1test")
		public List<Teach> repostpaper1test() {
			List<Teach> teach = new ArrayList<>();
			teach = repostDAO.repostPaper1("570112230061", "1", "2561", "1");
	
			 for (int i = 0; i < teach.size(); i++) {
		        	int b1=0,b2=0;
		        	
					if (teach.get(i).getStatusTeach()==2 && teach.get(i).getStatusTeaching()==100) {
						teach.get(i).getSumBean().setSumBean4("80%");
					} else {
						teach.get(i).getSumBean().setSumBean4(" ");
					}
					for (int j = 0; j < teach.size(); j++) {
						b1+=teach.get(j).getBasecram();
						b2+=teach.get(i).getBaseHour();
					}
					teach.get(i).getSumBean().setSumBean1(b1);
					teach.get(i).getSumBean().setSumBean2(b2);
				}
			return teach;
		}
	
	 @GetMapping(value = "/repostpaper3test")
		public List<DateofTeach> repostpaper2test() {
			List<DateofTeach> li = new ArrayList<>();
			
			List<Salary> list=new ArrayList<Salary>();
			
			li = repostDAO.listrepostpaper3("570112230061", "1", "2561", "1");
			int summPrtibad=0,moneyPrtibad=0,summTesdee=0,moneyTesdee=0;
			for (int m = 0; m < li.size(); m++) {
				list=repostDAO.listdayrepostPaper4("570112230061", "1", "2561", "1");
				for (int i = 0; i < list.size(); i++) {
					if (list.get(i).getSalarySetatatusId()==1) {
						summPrtibad=(list.get(i).getSumTudsadeePrtibadHour());
						moneyPrtibad=(list.get(i).getSalarySummoney());
						System.out.println(moneyPrtibad);
					}
					if (list.get(i).getSalarySetatatusId()==2) {
						summTesdee=(list.get(i).getSumTudsadeePrtibadHour());
						moneyTesdee =(list.get(i).getSalarySummoney());
					}
				}
				li.get(m).getSumTsdPsd().setSummPrtibad(summPrtibad);
				li.get(m).getSumTsdPsd().setSummMoneyPrtibad(moneyPrtibad);
				li.get(m).getSumTsdPsd().setSummTesdee(summTesdee);
				li.get(m).getSumTsdPsd().setSummMoneyTesdee(moneyTesdee);
				System.out.println(summPrtibad);
				
				
			}
			
			return li;
		}
	 @GetMapping(value="repostpaper2test")
		public  List<StatusTP> repostpaper3test() {
			List<StatusTP> list=new ArrayList<StatusTP>();
				list=repostDAO.listdayrepostPaper2("570112230061", "1", "2561", "1");
			return list;
		}
	 @GetMapping(value="repostpaper4test")
		public  List<Salary> repostpaper4test() {
			List<Salary> list=new ArrayList<Salary>();
				list=repostDAO.listdayrepostPaper4("570112230061", "1", "2561", "1");
			return list;
		}
	 @GetMapping(value="repostpaper5test")
		public  List<SubjectsumHour> repostpaper5test() {
			List<SubjectsumHour> list=new ArrayList<SubjectsumHour>();
				list=repostDAO.listdayrepostPaper5("570112230061", "1", "2561", "1");
			return list;
		}
}
