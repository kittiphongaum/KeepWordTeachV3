package com.cs.bru.model;

public class Faculty {
	private String facultyId;
	private String facultyName;
	private String personFaculty;
	private int majorsidRowID;
	private Majors majors;
	public String getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(String facultyId) {
		this.facultyId = facultyId;
	}
	public String getFacultyName() {
		return facultyName;
	}
	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}
	public String getPersonFaculty() {
		return personFaculty;
	}
	public void setPersonFaculty(String personFaculty) {
		this.personFaculty = personFaculty;
	}
	public int getMajorsidRowID() {
		return majorsidRowID;
	}
	public void setMajorsidRowID(int majorsidRowID) {
		this.majorsidRowID = majorsidRowID;
	}
	public Majors getMajors() {
		return majors;
	}
	public void setMajors(Majors majors) {
		this.majors = majors;
	}
	
}
