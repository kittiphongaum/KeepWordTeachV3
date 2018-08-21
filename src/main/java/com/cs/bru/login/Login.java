package com.cs.bru.login;

public class Login {
	private int LogId;
	private String logUsername;
	private String logPassword;
	private String logRole;
	private String logStatus;
	public int getLogId() {
		return LogId;
	}
	public void setLogId(int logId) {
		LogId = logId;
	}
	public String getLogUsername() {
		return logUsername;
	}
	public void setLogUsername(String logUsername) {
		this.logUsername = logUsername;
	}
	public String getLogPassword() {
		return logPassword;
	}
	public void setLogPassword(String logPassword) {
		this.logPassword = logPassword;
	}
	public String getLogRole() {
		return logRole;
	}
	public void setLogRole(String logRole) {
		this.logRole = logRole;
	}
	public String getLogStatus() {
		return logStatus;
	}
	public void setLogStatus(String logStatus) {
		this.logStatus = logStatus;
	}
}
