package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.Subject;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class DateofTeachDAO {
	public void insertDateofTeach(DateofTeach bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_dateofteach(dateofteach_id,weekofyear_dft,dayofyear_dft,monthofyear_dft,yearofteach_dft,tudsadee_dft,prtibad_dft,summyhour_dft,subject_dft,user_dft)VALUES (?,?,?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getDateofteachId());
			prepared.setInt(2, bean.getWeekofyearDft());
			prepared.setString(3, bean.getDayofyearDft());
			prepared.setString(4, bean.getMonthofyearDft());
			prepared.setString(5, bean.getYearofteachDft());
			prepared.setInt(6, bean.getTudsadeeDft());
			prepared.setInt(7, bean.getPrtibadDft());
			prepared.setInt(8, bean.getSummyhourDft());

			prepared.setString(9, bean.getSubjectDft());
			prepared.setString(10, bean.getUserDft());
		

			prepared.executeUpdate();
			 /*System.out.println(bean);*/ 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<DateofTeach> findById(String id) {
		List<DateofTeach> list = new ArrayList<DateofTeach>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT dateofteach_id,weekofyear_dft,dayofyear_dft,monthofyear_dft,yearofteach_dft,tudsadee_dft,prtibad_dft,summyhour_dft,subject_dft,subject_id,subject_name,credit,credit_hour,tudsadee,prtibad,user_dft,user_id,user_name,user_lastname,baseHour,baseKrm FROM tb_dateofteach INNER JOIN tb_subject on tb_dateofteach.subject_dft = tb_subject.subject_id INNER JOIN tb_user on tb_dateofteach.user_dft = tb_user.user_id WHERE user_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				DateofTeach dft = new DateofTeach();
				Subject subject = new Subject();
				User user =new User();
				
				dft.setDateofteachId(rs.getString("dateofteach_id"));
				dft.setWeekofyearDft(rs.getInt("weekofyear_dft"));
				dft.setDayofyearDft(rs.getString("dayofyear_dft"));
				dft.setMonthofyearDft(rs.getString("monthofyear_dft"));
				dft.setYearofteachDft(rs.getString("yearofteach_dft"));
				dft.setTudsadeeDft(rs.getInt("tudsadee_dft"));
				dft.setPrtibadDft(rs.getInt("prtibad_dft"));
				dft.setSummyhourDft(rs.getInt("summyhour_dft"));
				
				dft.setSubjectDft(rs.getString("subject_dft"));
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				subject.setTudsadee(rs.getInt("tudsadee"));
				subject.setPrtibad(rs.getInt("prtibad"));
				
				dft.setUserDft(rs.getString("user_dft"));
				
				user.setUserId(rs.getString("user_id"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				
				dft.setSubject(subject);
				dft.setUser(user);
				list.add(dft);
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
}
