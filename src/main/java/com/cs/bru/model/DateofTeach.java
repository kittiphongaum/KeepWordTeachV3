package com.cs.bru.model;

import com.cs.bru.bean.SumTsdPsd;
import com.cs.bru.bean.TeachSeachBean1;

public class DateofTeach {
	private int dtimeId;
	private String dateofteachId;
	private int weekofyearDft;
	private String dayofyearDft;
	private String monthofyearDft;
	private String yearofteachDft;
	private int tudsadeeDft ;
	private int prtibadDft ;
	private int summyhourDft;
	private int moneyDft;
	private String statusBase;
	private int statusDateofteach;
	private String subjectDft;
	private String holidayDft;
	private String specialteachingStartdateday;
	private String specialteachingStopdateday;
	private String specialteachingStarttimeday;
	private String specialteachingStoptimeday;
	private String special;
	private String userDft;
	private Teach teach;
	
	 private Subject subject;
	 private User user;
	 private TableTeaching  tableTeaching;
	 private Month month;
	 private DegreeStuden degreeStuden;
	 private SumTsdPsd sumTsdPsd;
	 
	 private TeachSeachBean1 teachSeachBean1;
	 
	public int getDtimeId() {
		return dtimeId;
	}
	public void setDtimeId(int dtimeId) {
		this.dtimeId = dtimeId;
	}
	public String getDateofteachId() {
		return dateofteachId;
	}
	public void setDateofteachId(String dateofteachId) {
		this.dateofteachId = dateofteachId;
	}
	public int getWeekofyearDft() {
		return weekofyearDft;
	}
	public void setWeekofyearDft(int weekofyearDft) {
		this.weekofyearDft = weekofyearDft;
	}
	public String getDayofyearDft() {
		return dayofyearDft;
	}
	public void setDayofyearDft(String dayofyearDft) {
		this.dayofyearDft = dayofyearDft;
	}
	public String getMonthofyearDft() {
		return monthofyearDft;
	}
	public void setMonthofyearDft(String monthofyearDft) {
		this.monthofyearDft = monthofyearDft;
	}
	public String getYearofteachDft() {
		return yearofteachDft;
	}
	public void setYearofteachDft(String yearofteachDft) {
		this.yearofteachDft = yearofteachDft;
	}
	public int getTudsadeeDft() {
		return tudsadeeDft;
	}
	public void setTudsadeeDft(int tudsadeeDft) {
		this.tudsadeeDft = tudsadeeDft;
	}
	public int getPrtibadDft() {
		return prtibadDft;
	}
	public void setPrtibadDft(int prtibadDft) {
		this.prtibadDft = prtibadDft;
	}
	public int getSummyhourDft() {
		return summyhourDft;
	}
	public void setSummyhourDft(int summyhourDft) {
		this.summyhourDft = summyhourDft;
	}
	public String getSubjectDft() {
		return subjectDft;
	}
	public void setSubjectDft(String subjectDft) {
		this.subjectDft = subjectDft;
	}
	public String getUserDft() {
		return userDft;
	}
	public void setUserDft(String userDft) {
		this.userDft = userDft;
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
	public String getHolidayDft() {
		return holidayDft;
	}
	public void setHolidayDft(String holidayDft) {
		this.holidayDft = holidayDft;
	}
	public int getMoneyDft() {
		return moneyDft;
	}
	public void setMoneyDft(int moneyDft) {
		this.moneyDft = moneyDft;
	}
	public String getStatusBase() {
		return statusBase;
	}
	public void setStatusBase(String statusBase) {
		this.statusBase = statusBase;
	}
	public TableTeaching getTableTeaching() {
		return tableTeaching;
	}
	public void setTableTeaching(TableTeaching tableTeaching) {
		this.tableTeaching = tableTeaching;
	}
	public Month getMonth() {
		return month;
	}
	public void setMonth(Month month) {
		this.month = month;
	}
	public Teach getTeach() {
		return teach;
	}
	public void setTeach(Teach teach) {
		this.teach = teach;
	}
	public int getStatusDateofteach() {
		return statusDateofteach;
	}
	public void setStatusDateofteach(int statusDateofteach) {
		this.statusDateofteach = statusDateofteach;
	}
	public DegreeStuden getDegreeStuden() {
		return degreeStuden;
	}
	public void setDegreeStuden(DegreeStuden degreeStuden) {
		this.degreeStuden = degreeStuden;
	}
	public SumTsdPsd getSumTsdPsd() {
		return sumTsdPsd;
	}
	public void setSumTsdPsd(SumTsdPsd sumTsdPsd) {
		this.sumTsdPsd = sumTsdPsd;
	}
	public String getSpecialteachingStartdateday() {
		return specialteachingStartdateday;
	}
	public void setSpecialteachingStartdateday(String specialteachingStartdateday) {
		this.specialteachingStartdateday = specialteachingStartdateday;
	}
	public String getSpecialteachingStopdateday() {
		return specialteachingStopdateday;
	}
	public void setSpecialteachingStopdateday(String specialteachingStopdateday) {
		this.specialteachingStopdateday = specialteachingStopdateday;
	}
	public String getSpecialteachingStarttimeday() {
		return specialteachingStarttimeday;
	}
	public void setSpecialteachingStarttimeday(String specialteachingStarttimeday) {
		this.specialteachingStarttimeday = specialteachingStarttimeday;
	}
	public String getSpecialteachingStoptimeday() {
		return specialteachingStoptimeday;
	}
	public void setSpecialteachingStoptimeday(String specialteachingStoptimeday) {
		this.specialteachingStoptimeday = specialteachingStoptimeday;
	}
	public String getSpecial() {
		return special;
	}
	public void setSpecial(String special) {
		this.special = special;
	}
	public TeachSeachBean1 getTeachSeachBean1() {
		return teachSeachBean1;
	}
	public void setTeachSeachBean1(TeachSeachBean1 teachSeachBean1) {
		this.teachSeachBean1 = teachSeachBean1;
	}
	
	
	 
}
