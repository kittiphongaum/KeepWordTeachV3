package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DateTime;
import com.cs.bru.model.Subject;
import com.cs.bru.model.Teach;
import com.cs.bru.util.ConnectDB;

@Repository
public class TeachDAO {
	public void insertTeach(Teach bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_teaching (teachID,startMonth,stopMonth,buddhist) VALUES(?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getTeachID());
			prepared.setString(2, bean.getStartMonth());
			prepared.setString(3, bean.getStopMonth());
			prepared.setString(4, bean.getBuddhist());
			

			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	
	public List<Teach> findAll() {
		List<Teach> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT tb_teaching.teachID,tb_teaching.startMonth,tb_teaching.stopMonth,tb_teaching.buddhist,tb_datetime.datetime_id,tb_datetime.weekteach,tb_datetime.dateteach,tb_subject.subjactid,tb_subject.subjactName,tb_subject.credit,tb_subject.creditHour,tb_subject.Tudsadee,tb_subject.Prtibad FROM tb_teaching INNER JOIN tb_datetime on tb_teaching.teachID = tb_datetime.datetime_idINNER JOIN tb_subject on tb_teaching.teachID = tb_datetime.datetime_id");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Teach teach = new Teach();
				DateTime dateTime = new DateTime();
				Subject subject = new Subject();
				 
				teach.setTeachID(rs.getString("tb_teaching.teachID"));
				teach.setStartMonth(rs.getString("tb_teaching.startMonth"));
				teach.setStopMonth(rs.getString("tb_teaching.stopMonth"));
				teach.setBuddhist(rs.getString("tb_teaching.buddhist"));
				
				dateTime.setDatetTmeId(rs.getInt("tb_datetime.datetime_id"));
				dateTime.setWeekTeach(rs.getString("tb_datetime.weekteach"));
				dateTime.setDateTeach(rs.getString("tb_datetime.dateteach"));
				
				subject.setSubjectId(rs.getString("tb_subject.subjactid"));
				subject.setSubjectName(rs.getString("tb_subject.subjactName"));
				subject.setCredit(rs.getInt("tb_subject.credit"));
				subject.setCreditHour(rs.getString("tb_subject.creditHour"));
				subject.setTudsadee(rs.getInt("tb_subject.Tudsadee"));
				subject.setPrtibad(rs.getInt("tb_subject.Prtibad"));

				teach.setDateTime(dateTime);
				teach.setSubject(subject);
				
				list.add(teach);
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
				Subject.setSubjectId(rs.getString("subjectID"));
				Subject.setSubjectName(rs.getString("subjactName"));
				Subject.setCredit(rs.getInt("credit"));
				Subject.setCreditHour(rs.getString("creditHour"));
				Subject.setTudsadee(rs.getInt("tudsadee"));
				Subject.setPrtibad(rs.getInt("prtibad"));
				/*System.out.println(Subject);*/
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return Subject;
	}
}
