package com.cs.bru.dao;

import java.sql.PreparedStatement;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DateTime;

import com.cs.bru.util.ConnectDB;
@Repository
public class DateTimeDAO {
	public void insertDateTime(DateTime bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_datetime (datetime_id,weekteach,dateteach) VALUES(?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			
			prepared.setInt(1, bean.getDatetTmeId());
			prepared.setString(2, bean.getWeekTeach());
			prepared.setString(3, bean.getDateTeach());
			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
