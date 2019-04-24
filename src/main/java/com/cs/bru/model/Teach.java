package com.cs.bru.model;

import com.cs.bru.bean.SumBean;

public class Teach {
	private int id;
	private String teachId;
	private int  sumHourTerm;
	private int  hoursumTudsadee;
	private int  hoursumPrtibad;
	private int  moneyTudsadee;
	private int  moneyPrtibad;
	private int  salarySum;
	private int baseHour;
	private int basecram;
	private String dateofteachFk;
	private String subjactFk;
	private String tableteachFk;
	private String userFk;
	private int statusTeach;
	private int statusTeaching;
	
	private int reostSumBaseHour;
	private int reostSumbasecram;
	
	private DateofTeach dateofTeach;
	private Subject subject;
	private TableTeaching tableTeaching;
	private User users;
	private SumBean  sumBean;

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
	public int getSumHourTerm() {
		return sumHourTerm;
	}
	public void setSumHourTerm(int sumHourTerm) {
		this.sumHourTerm = sumHourTerm;
	}
	public int getHoursumTudsadee() {
		return hoursumTudsadee;
	}
	public void setHoursumTudsadee(int hoursumTudsadee) {
		this.hoursumTudsadee = hoursumTudsadee;
	}
	public int getHoursumPrtibad() {
		return hoursumPrtibad;
	}
	public void setHoursumPrtibad(int hoursumPrtibad) {
		this.hoursumPrtibad = hoursumPrtibad;
	}
	public int getMoneyTudsadee() {
		return moneyTudsadee;
	}
	public void setMoneyTudsadee(int moneyTudsadee) {
		this.moneyTudsadee = moneyTudsadee;
	}
	public int getMoneyPrtibad() {
		return moneyPrtibad;
	}
	public void setMoneyPrtibad(int moneyPrtibad) {
		this.moneyPrtibad = moneyPrtibad;
	}
	public int getSalarySum() {
		return salarySum;
	}
	public void setSalarySum(int salarySum) {
		this.salarySum = salarySum;
	}
	public String getDateofteachFk() {
		return dateofteachFk;
	}
	public void setDateofteachFk(String dateofteachFk) {
		this.dateofteachFk = dateofteachFk;
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

	public DateofTeach getDateofTeach() {
		return dateofTeach;
	}
	public void setDateofTeach(DateofTeach dateofTeach) {
		this.dateofTeach = dateofTeach;
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
	public int getBaseHour() {
		return baseHour;
	}
	public void setBaseHour(int baseHour) {
		this.baseHour = baseHour;
	}
	public int getBasecram() {
		return basecram;
	}
	public void setBasecram(int basecram) {
		this.basecram = basecram;
	}
	public int getStatusTeach() {
		return statusTeach;
	}
	public void setStatusTeach(int statusTeach) {
		this.statusTeach = statusTeach;
	}
	public int getStatusTeaching() {
		return statusTeaching;
	}
	public void setStatusTeaching(int statusTeaching) {
		this.statusTeaching = statusTeaching;
	}
	public String getUserFk() {
		return userFk;
	}
	public void setUserFk(String userFk) {
		this.userFk = userFk;
	}
	public int getReostSumBaseHour() {
		return reostSumBaseHour;
	}
	public void setReostSumBaseHour(int reostSumBaseHour) {
		this.reostSumBaseHour = reostSumBaseHour;
	}
	public int getReostSumbasecram() {
		return reostSumbasecram;
	}
	public void setReostSumbasecram(int reostSumbasecram) {
		this.reostSumbasecram = reostSumbasecram;
	}
	public SumBean getSumBean() {
		return sumBean;
	}
	public void setSumBean(SumBean sumBean) {
		this.sumBean = sumBean;
	}
	
	
}
