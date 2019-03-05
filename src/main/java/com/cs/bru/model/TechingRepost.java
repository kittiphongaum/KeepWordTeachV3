package com.cs.bru.model;

public class TechingRepost {
	private String teachReportId;
	private int resumPst;
	private int resumTsd;
	private int repostSum;
	private String userepRortFK;
	private String dateteachFK;
	private String teachingFk;
	private String reportThaibaht;
	private int statusRepost;
	private int repostMoney;
	private TableTeaching tableTeaching;
	private User user;
	private DegreeStuden degreeStuden;
	public String getTeachReportId() {
		return teachReportId;
	}
	public void setTeachReportId(String teachReportId) {
		this.teachReportId = teachReportId;
	}
	public int getResumPst() {
		return resumPst;
	}
	public void setResumPst(int resumPst) {
		this.resumPst = resumPst;
	}
	public int getResumTsd() {
		return resumTsd;
	}
	public void setResumTsd(int resumTsd) {
		this.resumTsd = resumTsd;
	}
	public int getRepostSum() {
		return repostSum;
	}
	public void setRepostSum(int repostSum) {
		this.repostSum = repostSum;
	}
	public String getUserepRortFK() {
		return userepRortFK;
	}
	public void setUserepRortFK(String userepRortFK) {
		this.userepRortFK = userepRortFK;
	}
	public String getDateteachFK() {
		return dateteachFK;
	}
	public void setDateteachFK(String dateteachFK) {
		this.dateteachFK = dateteachFK;
	}
	public String getTeachingFk() {
		return teachingFk;
	}
	public void setTeachingFk(String teachingFk) {
		this.teachingFk = teachingFk;
	}
	public String getReportThaibaht() {
		return reportThaibaht;
	}
	public void setReportThaibaht(String reportThaibaht) {
		this.reportThaibaht = reportThaibaht;
	}
	public int getStatusRepost() {
		return statusRepost;
	}
	public void setStatusRepost(int statusRepost) {
		this.statusRepost = statusRepost;
	}
	public int getRepostMoney() {
		return repostMoney;
	}
	public void setRepostMoney(int repostMoney) {
		this.repostMoney = repostMoney;
	}
	public TableTeaching getTableTeaching() {
		return tableTeaching;
	}
	public void setTableTeaching(TableTeaching tableTeaching) {
		this.tableTeaching = tableTeaching;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public DegreeStuden getDegreeStuden() {
		return degreeStuden;
	}
	public void setDegreeStuden(DegreeStuden degreeStuden) {
		this.degreeStuden = degreeStuden;
	}
	
}
