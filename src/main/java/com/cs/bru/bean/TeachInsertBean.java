package com.cs.bru.bean;


import com.cs.bru.model.Subject;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;

public class TeachInsertBean {
	private Teach teachBean;
	private Subject subjectBean;
	private User userB;
	@Override
	public String toString() {
		return "TeachInsertBean [teachBean=" + teachBean + ", subjectBean=" + subjectBean + ", userB=" + userB + "]";
	}
	public TeachInsertBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Teach getTeachBean() {
		return teachBean;
	}
	public void setTeachBean(Teach teachBean) {
		this.teachBean = teachBean;
	}
	public Subject getSubjectBean() {
		return subjectBean;
	}
	public void setSubjectBean(Subject subjectBean) {
		this.subjectBean = subjectBean;
	}
	public User getUserB() {
		return userB;
	}
	public void setUserB(User userB) {
		this.userB = userB;
	}
	
	
}
