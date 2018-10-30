package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.cs.bru.model.HolidayBru;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.util.ConnectDB;

@Repository
public class HolidayDAO {
	public HolidayBru holidayBrufindAll() {
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		HolidayBru holibru = new HolidayBru();

		try {
			sql.append("SELECT * FROM tb_holiday_bru");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				
				
				holibru.setHolidayBruId(rs.getInt("holiday_bru_id"));
				holibru.setHolidayBruDay(rs.getString("holiday_bru_day"));
				holibru.setHolidayBruMonth(rs.getString("holiday_bru_month"));
				holibru.setHolidayBruYear(rs.getString("holiday_bru_year"));
				holibru.setHolidayBruDayofyear(rs.getString("holiday_bru_dayofyear"));
			
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return holibru;
	}
public List<HolidayTh> holidayThfindAll() {
	List<HolidayTh> hoTh = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		HolidayTh holiTh = new HolidayTh();

		try {
			sql.append("SELECT * FROM tb_holiday_th");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				
				
				holiTh.setHolidayId(rs.getInt("holiday_id"));
				holiTh.setHolidayDay(rs.getString("holiday_day"));
				holiTh.setHolidayMonth(rs.getString("holiday_month"));
				holiTh.setHolidayYear(rs.getString("holiday_year"));
				holiTh.setHolidayDayofyear(rs.getString("holiday_dayofyear"));
			
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return hoTh;
	}
}
