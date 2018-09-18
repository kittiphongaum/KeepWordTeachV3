package com.cs.bru.model;

public class Teach {
	private int id;
	private String teachID;
	private String startMonth;
	private String stopMonth;
	private String degreeSt;
	private int  studentNumber;
	private String section;
	private String buddhist;
	private String subjactFk;
	private String dattimeFk;
	private DateTime dateTime;
	private Subject subject;
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
	public String getTeachID() {
		return teachID;
	}
	public void setTeachID(String teachID) {
		this.teachID = teachID;
	}
	public String getStartMonth() {
		return startMonth;
	}
	public void setStartMonth(String startMonth) {
		this.startMonth = startMonth;
	}
	public String getStopMonth() {
		return stopMonth;
	}
	public void setStopMonth(String stopMonth) {
		this.stopMonth = stopMonth;
	}
	public String getDegreeSt() {
		return degreeSt;
	}
	public void setDegreeSt(String degreeSt) {
		this.degreeSt = degreeSt;
	}
	public int getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(int studentNumber) {
		this.studentNumber = studentNumber;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getBuddhist() {
		return buddhist;
	}
	public void setBuddhist(String buddhist) {
		this.buddhist = buddhist;
	}
	public String getSubjactFk() {
		return subjactFk;
	}
	public void setSubjactFk(String subjactFk) {
		this.subjactFk = subjactFk;
	}
	public String getDattimeFk() {
		return dattimeFk;
	}
	public void setDattimeFk(String dattimeFk) {
		this.dattimeFk = dattimeFk;
	}
	public DateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(DateTime dateTime) {
		this.dateTime = dateTime;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	
	

	
	
}
