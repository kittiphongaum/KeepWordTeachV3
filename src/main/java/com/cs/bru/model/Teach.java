package com.cs.bru.model;

public class Teach {
	private int id;
	private String teachId;
	private int  sumHourweek;
	private int  sumHourterm;
	private int  salaryTudsadee;
	private int  salaryPrtibad;
	private int  salarySum;
	private String subjactFk;
	private String tableteachFk;
	private String userFk;
	private Subject subject;
	private TableTeaching tableTeaching;
	private User users;
	
	
	public Teach() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeachId() {
		return teachId;
	}
	public void setTeachId(String teachId) {
		this.teachId = teachId;
	}
	public int getSumHourweek() {
		return sumHourweek;
	}
	public void setSumHourweek(int sumHourweek) {
		this.sumHourweek = sumHourweek;
	}
	public int getSumHourterm() {
		return sumHourterm;
	}
	public void setSumHourterm(int sumHourterm) {
		this.sumHourterm = sumHourterm;
	}
	public int getSalaryTudsadee() {
		return salaryTudsadee;
	}
	public void setSalaryTudsadee(int salaryTudsadee) {
		this.salaryTudsadee = salaryTudsadee;
	}
	public int getSalaryPrtibad() {
		return salaryPrtibad;
	}
	public void setSalaryPrtibad(int salaryPrtibad) {
		this.salaryPrtibad = salaryPrtibad;
	}
	public int getSalarySum() {
		return salarySum;
	}
	public void setSalarySum(int salarySum) {
		this.salarySum = salarySum;
	}
	public String getSubjactFk() {
		return subjactFk;
	}
	public void setSubjactFk(String subjactFk) {
		this.subjactFk = subjactFk;
	}
	public String getTableteachFk() {
		return tableteachFk;
	}
	public void setTableteachFk(String tableteachFk) {
		this.tableteachFk = tableteachFk;
	}
	public String getUserFk() {
		return userFk;
	}
	public void setUserFk(String userFk) {
		this.userFk = userFk;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public TableTeaching getTableTeaching() {
		return tableTeaching;
	}
	public void setTableTeaching(TableTeaching tableTeaching) {
		this.tableTeaching = tableTeaching;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}

	
}
