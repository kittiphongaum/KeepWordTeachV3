package com.cs.bru.dao;

import java.sql.PreparedStatement;

import org.springframework.stereotype.Repository;

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
}
