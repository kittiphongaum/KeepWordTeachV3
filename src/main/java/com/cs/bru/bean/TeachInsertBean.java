package com.cs.bru.bean;

import com.cs.bru.model.DateTime;
import com.cs.bru.model.Subject;
import com.cs.bru.model.Teach;

public class TeachInsertBean {
	private Teach teachBean;
	private Subject subjectBean;
	private DateTime dateTimebean;
	
	public TeachInsertBean() {}
	
	
	public TeachInsertBean(Teach teachBean, Subject subjectBean, DateTime dateTimebean) {
		super();
		this.teachBean = teachBean;
		this.subjectBean = subjectBean;
		this.dateTimebean = dateTimebean;
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
	public DateTime getDateTimebean() {
		return dateTimebean;
	}
	public void setDateTimebean(DateTime dateTimebean) {
		this.dateTimebean = dateTimebean;
	}
	
}
