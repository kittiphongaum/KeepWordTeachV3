package com.cs.bru.model;

public class User {
		private int Id;
		private String userId;
		private String userPass;
		private String userFname;
		private String userLname;
		private String positionTeach;
		private String faculty;
		private String mojor;
		private int baseHour;
		private int baseKrm;
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
		public int getBaseHour() {
			return baseHour;
		}
		public void setBaseHour(int baseHour) {
			this.baseHour = baseHour;
		}
		public int getBaseKrm() {
			return baseKrm;
		}
		public void setBaseKrm(int baseKrm) {
			this.baseKrm = baseKrm;
		}
		
		
}
