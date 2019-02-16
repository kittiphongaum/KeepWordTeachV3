package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.cs.bru.model.HolidayBru;
import com.cs.bru.model.HolidayTh;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class HolidayDAO {
	public HolidayBru holidayBrufindAll() {
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		HolidayBru holibru = new HolidayBru();

		try {
			sql.append("SELECT * FROM tb_holiday_bru WHERE holiday_row =?");
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
public List<HolidayTh> holidayThFileAll() {
	List<HolidayTh> hoTh = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		

		try {
			sql.append("SELECT * FROM tb_holiday_th");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

	

			while (rs.next()) {
				HolidayTh holiTh = new HolidayTh();
				holiTh.setHolidayId(rs.getString("holiday_id"));
				holiTh.setHolidayDay(rs.getInt("holiday_day"));
				holiTh.setHolidayMonth(rs.getInt("holiday_month"));
				holiTh.setHolidayYear(rs.getString("holiday_year"));
				holiTh.setHolidayDayofyear(rs.getString("holiday_dayofyear"));
				holiTh.setHolidayRow(rs.getString("holiday_row"));
				holiTh.setLocationHoli(rs.getString("location_holi"));
				
				hoTh.add(holiTh);
			}
		
			

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return hoTh;
	}
	public void insertHoliday(HolidayTh bean) throws Exception {
		ConnectDB con =new ConnectDB();
		PreparedStatement prepared =null;
		StringBuffer sql =new StringBuffer();
		try {
			sql.append(
					"INSERT INTO tb_holiday_th (holiday_id,holiday_day,holiday_month,holiday_year,holiday_dayofyear,holiday_row,location_holi) VALUES(?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,bean.getHolidayId());
			prepared.setInt(2,bean.getHolidayDay());
			prepared.setInt(3,bean.getHolidayMonth());
			prepared.setString(4,bean.getHolidayYear());
			prepared.setString(5,bean.getHolidayDayofyear());
			prepared.setString(6, bean.getHolidayRow());
			prepared.setString(7,bean.getLocationHoli());
			
			prepared.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	// update
			public void update(HolidayTh bean) {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append("UPDATE tb_user SET holiday_day=? ,holiday_month =? , holiday_year =?, holiday_dayofyear=?,location_holi=? WHERE holiday_id =?");
					prepared = con.openConnect().prepareStatement(sql.toString());
				
					prepared.setInt(1,bean.getHolidayDay());
					prepared.setInt(2,bean.getHolidayMonth());
					prepared.setString(3,bean.getHolidayYear());
					prepared.setString(4,bean.getHolidayDayofyear());
					prepared.setString(5,bean.getLocationHoli());
					prepared.setString(6,bean.getHolidayId());
					prepared.executeUpdate();
					
			
				
				} catch (Exception e) {
					// TODO: handle exception
				}

			}// end method update
}
