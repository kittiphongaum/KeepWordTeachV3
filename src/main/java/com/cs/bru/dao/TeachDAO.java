package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.bean.TeachInsertBean;
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
					"INSERT INTO tb_teaching (teach_id,sum_hourweek,sum_hourterm,salary_tudsadee,salary_prtibad,salary_sum,subject_fk,tableteach_fk,user_fk) VALUES(?,?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getTeachId());
			prepared.setInt(2, bean.getSumHourweek());
			prepared.setInt(3, bean.getSumHourterm());
			prepared.setInt(4, bean.getSalaryTudsadee());
			prepared.setInt(5, bean.getSalaryPrtibad());
			prepared.setInt(6, bean.getSalarySum());
			prepared.setString(7, bean.getSubjactFk());
			prepared.setString(8, bean.getTableteachFk());
			prepared.setString(9, bean.getUserFk());
			

			prepared.executeUpdate();
			System.out.println(bean);
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
			sql.append("SELECT teachID,startMonth,stopMonth,buddhist,teachRowDat,datetime_id,weekteach,dateteach,teachRowSub,subjactid,subjactName,credit,creditHour,Tudsadee,Prtibad FROM tb_teaching RIGHT JOIN tb_datetime on tb_teaching.teachRowDat = tb_datetime.datetime_id INNER JOIN tb_subject on tb_teaching.teachRowSub = tb_subject.subjactid");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				/*Teach teach = new Teach();
				DateTime dateTime = new DateTime();
				Subject subject = new Subject();
				 
				teach.setTeachID(rs.getString("teach_id"));
				teach.setStartMonth(rs.getString("start_month"));
				teach.setStopMonth(rs.getString("stop_month"));
				teach.setDegreeSt(rs.getString("degree_st"));
				teach.setStudentNumber(rs.getInt("student_number"));
				teach.setSection(rs.getString("section"));
				
				teach.setBuddhist(rs.getString("buddhist"));
				
				teach.setDattimeFk(rs.getString("dattime_fk"));
				
				dateTime.setDatetTmeId(rs.getInt("subjact_fk"));
				dateTime.setWeekTeach(rs.getString("weekteach"));
				dateTime.setDateTeach(rs.getString("dateteach"));
				
				teach.setSubjactFk(rs.getString("teachRowDat"));
				
				subject.setSubjectId(rs.getString("subjactid"));
				subject.setSubjectName(rs.getString("subjactName"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("creditHour"));
				subject.setTudsadee(rs.getInt("Tudsadee"));
				subject.setPrtibad(rs.getInt("Prtibad"));

				teach.setDateTime(dateTime);
				teach.setSubject(subject);
				
				list.add(teach);*/
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
			sql.append(" SELECT * FROM tb_teaching WHERE teachID = 1");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
			/*	Subject.setSubjectId(rs.getString("teachID"));
				Subject.setSubjectName(rs.getString("startMonth"));
				Subject.setCredit(rs.getInt("stopMonth"));
				Subject.setCreditHour(rs.getString("buddhist"));*/
			
				/*System.out.println(Subject);*/
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return Subject;
	}
}
