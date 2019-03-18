package com.cs.bru.model;

import javax.persistence.Entity;


public class User {
	
	
		private int Id;
		private String userId;
		private String userPass;
		private String prefixName;
		private String userFname;
		private String userLname;
		private String positionTeach;
		private String positionUser;
		private String faculty;
		private String mojor;
		private int userbaseHour;
		private int userbaseKrm;
		private String statusLogin;
		private Teach Teach;
		private Majors majors;
		public Majors getMajors() {
			return majors;
		}
		public void setMajors(Majors majors) {
			this.majors = majors;
		}
		public int getId() {
			return Id;
		}
		public void setId(int id) {
			Id = id;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getUserPass() {
			return userPass;
		}
		public void setUserPass(String userPass) {
			this.userPass = userPass;
		}
		public String getPrefixName() {
			return prefixName;
		}
		public void setPrefixName(String prefixName) {
			this.prefixName = prefixName;
		}
		public String getUserFname() {
			return userFname;
		}
		public void setUserFname(String userFname) {
			this.userFname = userFname;
		}
		public String getUserLname() {
			return userLname;
		}
		public void setUserLname(String userLname) {
			this.userLname = userLname;
		}
		public String getPositionTeach() {
			return positionTeach;
		}
		public void setPositionTeach(String positionTeach) {
			this.positionTeach = positionTeach;
		}
		public String getPositionUser() {
			return positionUser;
		}
		public void setPositionUser(String positionUser) {
			this.positionUser = positionUser;
		}
		public String getFaculty() {
			return faculty;
		}
		public void setFaculty(String faculty) {
			this.faculty = faculty;
		}
		public String getMojor() {
			return mojor;
		}
		public void setMojor(String mojor) {
			this.mojor = mojor;
		}
		public int getUserbaseHour() {
			return userbaseHour;
		}
		public void setUserbaseHour(int userbaseHour) {
			this.userbaseHour = userbaseHour;
		}
		public int getUserbaseKrm() {
			return userbaseKrm;
		}
		public void setUserbaseKrm(int userbaseKrm) {
			this.userbaseKrm = userbaseKrm;
		}
		public String getStatusLogin() {
			return statusLogin;
		}
		public void setStatusLogin(String statusLogin) {
			this.statusLogin = statusLogin;
		}
		
	
		
		
}
