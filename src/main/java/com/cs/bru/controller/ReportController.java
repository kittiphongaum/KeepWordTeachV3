package com.cs.bru.controller;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.util.JRLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
@Controller

public class ReportController {

//    @Autowired
//    private DataSource dataSource;
//
//    @RequestMapping("/report")
//    public void imprimir(@RequestParam Map<String, Object> parameters, HttpServletResponse response) throws JRException
//                                                                                                          , SQLException
//                                                                                                          , IOException {
//    	System.out.println(parameters);
//        parameters = parameters == null ? parameters = new HashMap<>() : parameters;
//
//        // Pega o arquivo .jasper localizado em resources
//        InputStream jasperStream = this.getClass().getResourceAsStream("/relatorios/livros.jasper");
//
//        // Cria o objeto JaperReport com o Stream do arquivo jasper
//        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
//        // Passa para o JasperPrint o relatório, os parâmetros e a fonte dos dados, no caso uma conexão ao banco de dados
//        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, dataSource.getConnection());
//
//        // Configura a respota para o tipo PDF
//        response.setContentType("application/pdf");
//        
//        // Define que o arquivo pode ser visualizado no navegador e também nome final do arquivo
//        // para fazer download do relatório troque 'inline' por 'attachment'
//        response.setHeader("Content-Disposition", "inline; filename=livros.pdf");
//
//        // Faz a exportação do relatório para o HttpServletResponse
//        final OutputStream outputStream = response.getOutputStream();
//        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
//    }
    @RequestMapping("/pdf")
    public void reporttest()throws JRException,IOException {
    	  // Compile jrxml file.
        JasperReport jasperReport = JasperCompileManager
                .compileReport("C:/Users/JookDdook/JaspersoftWorkspace/MyReports/userreport.jrxml");
  
        // Parameters for report
        Map<String, Object> parameters = new HashMap<String, Object>();
  
        // DataSource
        // This is simple example, no database.
        // then using empty datasource.
        JRDataSource dataSource = new JREmptyDataSource();
  
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,
                parameters, dataSource);
  
     
        // Make sure the output directory exists.
        File outDir = new File("C:/Users/JookDdook/JaspersoftWorkspace/MyReports");
        outDir.mkdirs();
  
        // Export to PDF.
        JasperExportManager.exportReportToPdfFile(jasperPrint,
                "C:/Users/JookDdook/JaspersoftWorkspace/MyReports/userreport.pdf");
         
        System.out.println("Done!");
    }
}

