package com.cs.bru.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class FooController {
	@RequestMapping("/dashboard")
	public String dashboard() {
		
		return "dashboard";
	}
	@RequestMapping("/tables")
	public String tables() {
		return"tables";
	}
	@RequestMapping("/")
	public String welcome() {
		return"index";
	}
	@RequestMapping("/user")
	public String user() {
	return "user";
	}
	@RequestMapping("/calendar")
	public String calendar() {
		return "calendar";
	}
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	@RequestMapping("/historyteach")
	public String historyteach() {
		return "historyteach";
	}
	@RequestMapping("/timetable")
	public String timetable() {
		return "timetable";
	}
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	@RequestMapping("/adminWelcom")
	public String adminwelcome() {
		return "adminWelcom";
	}
	
}
