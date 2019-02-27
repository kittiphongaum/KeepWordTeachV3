package com.cs.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.bean.TeachSeachBean1;
import com.cs.bru.dao.StatusTpDAO;
import com.cs.bru.dao.TechingRepostDAO;
import com.cs.bru.model.StatusTP;
import com.cs.bru.model.TechingRepost;

@RestController
public class TechingRepostControllor {
	@Autowired
	TechingRepostDAO techingRepostDAO;
	@Autowired
	StatusTpDAO statusTpDAO;
	// fileall
	@GetMapping("/techingRepostfileAll")
	public List<TechingRepost> TechingRepostfileAll() {
		List<TechingRepost> list = new ArrayList<>();
		list = techingRepostDAO.findAll();
		return list;
	}

	// fileByid
	@GetMapping("/TechingRepost/{id}")
	public List<TechingRepost> TechingRepostfileByid(@PathVariable String id) {
		List<TechingRepost> list = new ArrayList<>();
		list = techingRepostDAO.findlistId(id);
		return list;
	}
	public TechingRepost hitoryFileId() {
		
		return null;
	}
	// update
	@RequestMapping(value = "/TechingRepostfile", method = RequestMethod.POST)
	public TechingRepost update(Model model, @RequestBody TechingRepost userUpdate) {
		TechingRepost TechingByBean = new TechingRepost();
		TechingByBean = techingRepostDAO.findOne(userUpdate.getTeachReportId());
		try {
			techingRepostDAO.update(userUpdate);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return TechingByBean;
	}

	// insert
	@PostMapping(value="/insertTechingRepost")
	public TechingRepost insertTechingRepost(@RequestBody TechingRepost insertTableAsRepost) {
		try {
			
			techingRepostDAO.insertTechingRepost(insertTableAsRepost);
			//System.out.println(insertTableAsRepost);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
		return insertTableAsRepost;
	}
	//historyteach
	@PostMapping(value="FileinsertBysalary")
	public  List<StatusTP>insertsalary  (@RequestBody TeachSeachBean1 id1) throws SQLException {
		List<StatusTP> ttp=new ArrayList<>();
		try {
			ttp=statusTpDAO.SunjectTPFileBylist(id1.getUseridS1(), id1.getTermS2(), id1.getYearS3(), id1.getDegreeS4());
			int sumHour=0,sumMoney;
			for (int i = 0; i < ttp.size(); i++) {
				if (ttp.get(i).getStatusSubject()==1) {
					sumHour+=ttp.get(i).getSetstatusSubjectHour();
				}
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		
		return ttp;
	}

}
