package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.Month;

import com.cs.bru.util.ConnectDB;

@Repository
public class MonthDAO {
	public Month findByidCard(String id) throws SQLException {
		Month bean = new Month();
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM tb_month WHERE month_id = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1, id);
			ResultSet rs = preperd.executeQuery();

			while (rs.next()) {
				bean.setMonthId("month_id");
				bean.setMonthName("month_name");	
				}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if (con != null) {
				con.openConnect().close();
			}
		}
		return bean;
	}
	public List<Month> findAll() {
		List<Month> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_month");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
			    Month month = new Month();
			    month.setMonthId(rs.getString("month_id"));
			    month.setMonthName(rs.getString("month_name"));		
				list.add(month);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
}
