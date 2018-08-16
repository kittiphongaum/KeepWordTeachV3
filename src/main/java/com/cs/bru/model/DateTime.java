package com.cs.bru.model;

import com.mysql.fabric.xmlrpc.base.Data;

public class DateTime {
		private int dtimeId;
		private int datetTmeId;
		private String weekTeach;
		private Data dateTeach;
		public int getDtimeId() {
			return dtimeId;
		}
		public void setDtimeId(int dtimeId) {
			this.dtimeId = dtimeId;
		}
		public int getDatetTmeId() {
			return datetTmeId;
		}
		public void setDatetTmeId(int datetTmeId) {
			this.datetTmeId = datetTmeId;
		}
		public String getWeekTeach() {
			return weekTeach;
		}
		public void setWeekTeach(String weekTeach) {
			this.weekTeach = weekTeach;
		}
		public Data getDateTeach() {
			return dateTeach;
		}
		public void setDateTeach(Data dateTeach) {
			this.dateTeach = dateTeach;
		}
}
