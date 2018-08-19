package com.cs.bru.model;

public class Teach {
	private int id;
	private String teachID;
	private String startMonth;
	private String stopMonth;
	private String buddhist;
	private String teachRowSub;
	private String teachRowDat;
	private DateTime dateTime;
	private Subject subject;

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
	public String getBuddhist() {
		return buddhist;
	}
	public void setBuddhist(String buddhist) {
		this.buddhist = buddhist;
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
	public String getTeachRowSub() {
		return teachRowSub;
	}
	public void setTeachRowSub(String teachRowSub) {
		this.teachRowSub = teachRowSub;
	}
	public String getTeachRowDat() {
		return teachRowDat;
	}
	public void setTeachRowDat(String teachRowDat) {
		this.teachRowDat = teachRowDat;
	}
	
}
