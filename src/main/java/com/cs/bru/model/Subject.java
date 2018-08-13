package com.cs.bru.model;



public class Subject {
	private int id;
	private String subjectId;
	private String subjectName;
	private int credit;
	private String creditHour;
	private int tudsadee;
	private int prtibad;
	
	public Subject() {
		super();
	}
	public Subject(String subjactId,String subjectName,int credit,String creditHour,int tudsadee,int prtibad) {
		super();
		this.subjectId=subjactId;
		this.subjectName=subjectName;
		this.credit=credit;
		this.creditHour=creditHour;
		this.tudsadee=tudsadee;
		this.prtibad=prtibad;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getCreditHour() {
		return creditHour;
	}
	public void setCreditHour(String creditHour) {
		this.creditHour = creditHour;
	}
	public int getTudsadee() {
		return tudsadee;
	}
	public void setTudsadee(int tudsadee) {
		this.tudsadee = tudsadee;
	}
	public int getPrtibad() {
		return prtibad;
	}
	public void setPrtibad(int prtibad) {
		this.prtibad = prtibad;
	}
	
	
}
