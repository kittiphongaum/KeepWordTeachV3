package com.cs.bru.model;

public class User {
	
	
		private int Id;
		private String userId;
		private String userPass;
		private String prefixName;
		private String userFname;
		private String userLname;
		private String positionTeach;
		private String faculty;
		private String mojor;
		private int baseHour;
		private int baseKrm;
		private Teach Teach;
		
		
		
		
		
		public int getId() {
			return Id;
		}
		@Override
		public String toString() {
			return "User [Id=" + Id + ", userId=" + userId + ", userPass=" + userPass + ", userFname=" + userFname
					+ ", userLname=" + userLname + ", positionTeach=" + positionTeach + ", faculty=" + faculty
					+ ", mojor=" + mojor + ", baseHour=" + baseHour + ", baseKrm=" + baseKrm + "]";
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
		public User(int id, String userId, String userPass, String userFname, String userLname, String positionTeach,
				String faculty, String mojor, int baseHour, int baseKrm) {
			super();
			Id = id;
			this.userId = userId;
			this.userPass = userPass;
			this.userFname = userFname;
			this.userLname = userLname;
			this.positionTeach = positionTeach;
			this.faculty = faculty;
			this.mojor = mojor;
			this.baseHour = baseHour;
			this.baseKrm = baseKrm;
		}
		public User() {
			super();
		}
		public String getPrefixName() {
			return prefixName;
		}
		public void setPrefixName(String prefixName) {
			this.prefixName = prefixName;
		}
		
		
		
		
}
