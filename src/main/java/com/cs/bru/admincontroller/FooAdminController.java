package com.cs.bru.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FooAdminController {

	@RequestMapping("/people-add")
	public String peopleadd() {
		return "admin/people-add";
	}
	@RequestMapping("/history-add")
	public String historyuser() {
		return "admin/history-add";
	}

	@RequestMapping("/subject-add")
	public String subjectadd() {
		return "admin/subject-add";
	}
	@RequestMapping("/holiday-add")
	public String holidayadd() {
		return "admin/holiday-add";
	}
	@RequestMapping("/dataadmin-add")
	public String dataadmin() {
		return "admin/dataadmin-add";
	}
	}
