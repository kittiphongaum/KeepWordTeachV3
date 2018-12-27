package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.TechingRepostDAO;
import com.cs.bru.model.TechingRepost;

@RestController
public class TechingRepostControllor {
	@Autowired
	TechingRepostDAO techingRepostDAO;

	// fileall
	@GetMapping("/techingRepostfileAll")
	public List<TechingRepost> TechingRepostfileAll() {
		List<TechingRepost> list = new ArrayList<>();
		list = techingRepostDAO.findAll();
		return list;
	}

	// fileByid
	@GetMapping("/TechingRepost/{id}")
	public TechingRepost TechingRepostfileByid(@PathVariable String id) {
		TechingRepost list = new TechingRepost();
		list = techingRepostDAO.findOne(id);
		return list;
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
	@RequestMapping("/insertTechingRepost")
	public String insertTechingRepost(@RequestBody TechingRepost insert) {
		try {
			techingRepostDAO.insertTechingRepost(insert);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "user";
	}
}
