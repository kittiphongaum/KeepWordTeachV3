package com.cs.bru.model;

public class Majors {
	private String majorsId;
	private String majorsName;
	private String personMajors;
	private int rowFacltyFK;
	private Faculty  faculty;
	public String getMajorsId() {
		return majorsId;
	}
	public void setMajorsId(String majorsId) {
		this.majorsId = majorsId;
	}
	public String getMajorsName() {
		return majorsName;
	}
	public void setMajorsName(String majorsName) {
		this.majorsName = majorsName;
	}
	
	public String getPersonMajors() {
		return personMajors;
	}
	public void setPersonMajors(String personMajors) {
		this.personMajors = personMajors;
	}
	public int getRowFacltyFK() {
		return rowFacltyFK;
	}
	public void setRowFacltyFK(int rowFacltyFK) {
		this.rowFacltyFK = rowFacltyFK;
	}
	public Faculty getFaculty() {
		return faculty;
	}
	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}
	
}
