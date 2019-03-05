package com.cs.bru.controller;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

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
		 	
	        //Get JRXML template from resources folder
	        Resource resource = context.getResource("classpath:relatorios/paper3.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        //List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
	        List<DateofTeach> cars = (List<DateofTeach>) repostDAO.listrepostpaper3(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
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
	        List<Salary> cars = (List<Salary>) repostDAO.listdayrepostPaper4(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
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
	 @GetMapping(path = "/repostPaper5")
	    @ResponseBody
	    public void listdayrepostPaper5(HttpServletResponse response) throws Exception {
		 	
	        //Get JRXML template from resources folder
	        Resource resource = context.getResource("classpath:relatorios/paper5.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
//	        List<Salary> cars = (List<Salary>) repostDAO.listdayrepostPaper4(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(),id1.getDegreeS4());
	     //   System.out.println(cars);
	    //   List<User> cars = (List<User>) userlistPDF.findAll();
	        //Data source Set
	        JRDataSource dataSource = new JRBeanCollectionDataSource(cars);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report,params);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	       
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	    }
	 
	 @GetMapping(value = "/repostpaper1test")
		public List<Teach> repostpaper1test() {
			List<Teach> li = new ArrayList<>();
			li = repostDAO.repostPaper1("570112230061", "1", "2561", "1");
			int sunHour=0;
			int suncarm=0;
			for (int i = 0; i < li.size(); i++) {
				sunHour+=li.get(i).getBaseHour();
				suncarm+=li.get(i).getBasecram();
			}
			return li;
		}
	
	 @GetMapping(value = "/repostpaper3test")
		public List<DateofTeach> repostpaper2test() {
			List<DateofTeach> li = new ArrayList<>();
			li = repostDAO.listrepostpaper3("570112230061", "1", "2561", "1");
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
}
