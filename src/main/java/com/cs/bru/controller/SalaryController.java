package com.cs.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.StatusTpDAO;
import com.cs.bru.model.StatusTP;

@RestController
public class SalaryController {
	@Autowired
	StatusTpDAO statusTpDAO;
	
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
	@PostMapping(value="FileBylistIdSETstatus")
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
	
	
}
