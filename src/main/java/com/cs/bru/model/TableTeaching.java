package com.cs.bru.model;

public class TableTeaching {
	private int id;
	private String tebleTeachId;
	private int studenNumber;
	private int section;
	private int standardTeach;
	private String startTime;
	private String stopTime;

	private String room;
	private String userRoleid;
	private String subjectRoleid;
	private Subject subject;
	private User user;
	
	public TableTeaching() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTebleTeachId() {
		return tebleTeachId;
	}

	public void setTebleTeachId(String tebleTeachId) {
		this.tebleTeachId = tebleTeachId;
	}

	public int getStudenNumber() {
		return studenNumber;
	}

	public void setStudenNumber(int studenNumber) {
		this.studenNumber = studenNumber;
	}

	public int getSection() {
		return section;
	}

	public void setSection(int section) {
		this.section = section;
	}

	public int getStandardTeach() {
		return standardTeach;
	}

	public void setStandardTeach(int standardTeach) {
		this.standardTeach = standardTeach;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getStopTime() {
		return stopTime;
	}

	public void setStopTime(String stopTime) {
		this.stopTime = stopTime;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getUserRoleid() {
		return userRoleid;
	}

	public void setUserRoleid(String userRoleid) {
		this.userRoleid = userRoleid;
	}

	public String getSubjectRoleid() {
		return subjectRoleid;
	}

	public void setSubjectRoleid(String subjectRoleid) {
		this.subjectRoleid = subjectRoleid;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

}
