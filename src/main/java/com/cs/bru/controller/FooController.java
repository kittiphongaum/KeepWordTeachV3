package com.cs.bru.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FooController {
/*	@RequestMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	@RequestMapping("/tables")
	public String tables() {
		return"tables";
	}
	@RequestMapping("/home")
	public String home() {
		return "home";
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
	
	@RequestMapping("/test2")
	public String test2() {
		return "test2";
	}*/
	/*-----Web-----*/
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	@RequestMapping("/appcalendar")
	public String appcalendar() {
		return "appcalendar";
	}
	@RequestMapping("/keepword")
	public String keepword() {
		return "keepword";
	}
	
	@RequestMapping("/historyteach")
	public String historyteach() {
		return "historyteach";
	}
	@RequestMapping("/keepwordstep2")
	public String keepwordstep2() {
		return "keepwordstep2";
	}
	@RequestMapping("/calender")
	public String calendar() {
		return "calender";
	}
	@RequestMapping("/user")
	public String user() {
	return "user";
	}
	@RequestMapping("/index1")
	public String welcome() {
		return"index1";
	}
	
	@RequestMapping("/stipend")
	public String stipend() {
		
		return"stipend";
	}
	
	@RequestMapping("/index-admin")
	public String indexadmin() {
		return"index-admin";
	}
	@RequestMapping("/test")
	public String test() {
		return"test";
	}
	
	
}
