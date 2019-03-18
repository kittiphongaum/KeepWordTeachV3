package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.FacultyDAO;
import com.cs.bru.model.Faculty;
import com.cs.bru.model.TableTeaching;

@RestController
public class FacultyController {
	@Autowired
	FacultyDAO facultyDAO;

	@GetMapping("/listFaculty1")
	public  List<Faculty> listFaculty1(){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind("1");
		 return list;
	}
	@GetMapping("/listFaculty2")
	public  List<Faculty> listFaculty2(){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind("2");
		 return list;
	}
	@GetMapping("/listFaculty3")
	public  List<Faculty> listFaculty3(){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind("3");
		 return list;
	}
	@GetMapping("/listFaculty4")
	public  List<Faculty> listFaculty4(){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind("4");
		 return list;
	}
	@GetMapping("/listFaculty5")
	public  List<Faculty> listFaculty5(){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind("5");
		 return list;
	}
	@GetMapping("/listFaculty6")
	public  List<Faculty> listFaculty6(){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind("6");
		 return list;
	}
	@GetMapping("/listFaculty7")
	public  List<Faculty> listFaculty7(){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind("7");
		 return list;
	}
	@GetMapping("/dropdownUser/{id}")
	public  List<Faculty>  dropdownUser(@PathVariable String id){	
		List<Faculty> list = new ArrayList<>();
		list=facultyDAO.listfind(id);
		 return list;
	}

}
