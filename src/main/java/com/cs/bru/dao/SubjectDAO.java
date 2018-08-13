package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
					"INSERT INTO tb_subject (subjactid,subjactName,credit,creditHour,Tudsadee,Prtibad) VALUES(?,?,?,?,?,?) ");
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
			sql.append("SELECT subjactid,subjactName,credit,creditHour,Tudsadee,Prtibad FROM tb_subject");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Subject bean = new Subject();
				bean.setSubjectId(rs.getString("subjectID"));
				bean.setSubjectName(rs.getString("subjectName"));
				bean.setCredit(rs.getInt("credit"));
				bean.setCreditHour(rs.getString("creditHour"));
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

	public Subject findOne(String id) {

		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Subject Subject = new Subject();

		try {
			sql.append(" SELECT * FROM tb_subject WHERE subjactid = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				Subject.setSubjectId(rs.getString("subjactid"));
				Subject.setSubjectName(rs.getString("subjactName"));
				Subject.setCredit(rs.getInt("credit"));
				Subject.setCreditHour(rs.getString("creditHour"));
				Subject.setTudsadee(rs.getInt("tudsadee"));
				Subject.setPrtibad(rs.getInt("prtibad"));
				// System.out.println(Subject);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return Subject;
	}
}
