package com.cs.bru.model;

public class HolidayTh {
	private int holidayId;
	private String holidayDay;
	private String holidayMonth;
	private String holidayYear;
	private String holidayDayofyear;
	private HolidayBru holidayBrubean;
	public HolidayBru getHolidayBrubean() {
		return holidayBrubean;
	}
	public void setHolidayBrubean(HolidayBru holidayBrubean) {
		this.holidayBrubean = holidayBrubean;
	}
	public int getHolidayId() {
		return holidayId;
	}
	public void setHolidayId(int holidayId) {
		this.holidayId = holidayId;
	}
	public String getHolidayDay() {
		return holidayDay;
	}
	public void setHolidayDay(String holidayDay) {
		this.holidayDay = holidayDay;
	}
	public String getHolidayMonth() {
		return holidayMonth;
	}
	public void setHolidayMonth(String holidayMonth) {
		this.holidayMonth = holidayMonth;
	}
	public String getHolidayYear() {
		return holidayYear;
	}
	public void setHolidayYear(String holidayYear) {
		this.holidayYear = holidayYear;
	}
	public String getHolidayDayofyear() {
		return holidayDayofyear;
	}
	public void setHolidayDayofyear(String holidayDayofyear) {
		this.holidayDayofyear = holidayDayofyear;
	}
}
