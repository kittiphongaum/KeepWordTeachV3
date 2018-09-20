package com.cs.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.Subject;
import com.cs.bru.util.ConnectDB;



@Repository
public class SubjectDAO {
	public void insertSubject(Subject bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_subject (subject_id,subject_name,credit,credit_hour,tudsadee,prtibad) VALUES(?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getSubjectId());
			prepared.setString(2, bean.getSubjectName());
			prepared.setInt(3, bean.getCredit());
			prepared.setString(4, bean.getCreditHour());
			prepared.setInt(5, bean.getTudsadee());
			prepared.setInt(6, bean.getPrtibad());

			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	
	public List<Subject> findAll() {
		List<Subject> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT subjact_id,subject_name,credit,credit_hour,tudsadee,prtibad FROM tb_subject");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Subject bean = new Subject();
				bean.setSubjectId(rs.getString("subjact_id"));
				bean.setSubjectName(rs.getString("subject_name"));
				bean.setCredit(rs.getInt("credit"));
				bean.setCreditHour(rs.getString("credit_hour"));
				bean.setTudsadee(rs.getInt("tudsadee"));
				bean.setPrtibad(rs.getInt("prtibad"));

				list.add(bean);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	public Subject findOne(String id) throws SQLException{
//       System.out.println("22222");
		ConnectDB con = new ConnectDB();
		Connection conn = con.openConnect();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Subject subject = new Subject();

		try {
			sql.append("SELECT * FROM tb_subject WHERE subject_id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
//			System.out.println("666");
			while (rs.next()) {
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				subject.setTudsadee(rs.getInt("tudsadee"));
				subject.setPrtibad(rs.getInt("prtibad"));
//				System.out.println("5555");
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
			
		}
		finally {
			conn.close();
		}

		return subject;
	}
}
