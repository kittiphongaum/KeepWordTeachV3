package com.cs.bru.login;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.cs.bru.util.ConnectDB;

@Repository
public class LoginDAO {
	 
	public Login login(String LogUsername, String LogPassword/*, String roleId*/) {
		Login bean = new Login();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_login WHERE LogUsername = ? AND LogPassword = ? AND LogRole = '2' AND LogStatus = 'U' ");
			
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, LogUsername);
			prepared.setString(2, LogPassword);
			/*prepared.setString(3, roleId);*/
//set = ส่ง        
//get = รับ
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
			
				bean.setLogUsername(rs.getString("LogUsername"));
				bean.setLogPassword(rs.getString("LogPassword"));
				bean.setLogRole(rs.getString("LogRole"));
				bean.setLogStatus(rs.getString("LogStatus"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return bean;
	}

	public List<Login> findAll() {
		List<Login> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM tb_login ");
			prepared = con.openConnect().prepareStatement(sql.toString());

			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Login bean = new Login();
				bean.setLogUsername(rs.getString("LogUsername"));
				bean.setLogPassword(rs.getString("LogPassword"));
				bean.setLogRole(rs.getString("LogRole"));
				bean.setLogStatus(rs.getString("LogStatus"));

				list.add(bean);

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
}
