package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.Salary;
import com.cs.bru.model.SubjectsumHour;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class SubjectsumHourDAO {
	
	public void insert(SubjectsumHour bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_subjectsum_hour (subjectsum_hour_id,subjectsum_tudsadee,subjectsum_prtibad,subjectsum_money,subjectsum_subject_id,subjectsum_status,subjectsum_user_id) VALUES(?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getSubjectsumHourId());
			prepared.setInt(2, bean.getSubjectsumTudsadee());
			prepared.setInt(3, bean.getSubjectsumPrtibad());
			prepared.setInt(4, bean.getSubjectsumMoney());
			prepared.setString(5, bean.getSubjectsumSubjectTd());
			prepared.setInt(6, bean.getSubjectsumStatus());
			prepared.setString(7, bean.getSubjectsumUserId());
		

			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public   SubjectsumHour salarysumHourByID(String SubId) {
		SubjectsumHour bean = new SubjectsumHour();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append("SELECT * FROM tb_subjectsum_hour WHERE  subjectsum_teach_id=?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, SubId);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				
				bean.setSubjectsumHourId(rs.getString("subjectsum_hour_id"));
				bean.setSubjectsumPrtibad(rs.getInt("subjectsum_prtibad"));
				bean.setSubjectsumMoney(rs.getInt("subjectsum_money"));
				bean.setSubjectsumSubjectTd(rs.getString("subjectsum_subject_id"));
				bean.setSubjectsumStatus(rs.getInt("subjectsum_status"));
				bean.setSubjectsumUserId(rs.getString("subjectsum_user_id"));
				bean.setSubjectsumTeachTd(rs.getString("subjectsum_teach_id"));
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bean;
	}
}
