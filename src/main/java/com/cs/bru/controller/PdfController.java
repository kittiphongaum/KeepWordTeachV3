package com.cs.bru.controller;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.TeachDAO;
import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.Car;
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
	TeachDAO teachDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	UserIml userIml;
	
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
	 @GetMapping(path = "/teach_pdf")
	    @ResponseBody
//	    public void getPdf(@PathVariable String jrxml, HttpServletResponse response) throws Exception {
	    public void teachgetPdf(HttpServletResponse response) throws Exception {
		 	
	        //Get JRXML template from resources folder
//	        Resource resource = context.getResource("classpath:reports/" + jrxml + ".jrxml");
	        Resource resource = context.getResource("classpath:reports/paper1.jrxml");
	        //Compile to jasperReport
	        InputStream inputStream = resource.getInputStream();
	        JasperReport report = JasperCompileManager.compileReport(inputStream);
	        //Parameters Set
	        Map<String, Object> params = new HashMap<>();

	        //List<Teach> cars =(List<Teach>) teachDAO.findByIdUser("570112230061");
	        List<User> cars = (List<User>) userDAO.findAll();
	    //    List<User> cars = (List<User>) userlistPDF.findAll();
	        //Data source Set
	        JRDataSource dataSource = new JRBeanCollectionDataSource(cars);
	        params.put("datasource", dataSource);

	        //Make jasperPrint
	        JasperPrint jasperPrint = JasperFillManager.fillReport(report, params);
	        JasperPrint jasperPrint2 = JasperFillManager.fillReport(report, params);
	        //Media Type
	        response.setContentType(MediaType.APPLICATION_PDF_VALUE);
	       
	        //Export PDF Stream
	        JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	    }
	 
	
}
