package com.cs.bru.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
