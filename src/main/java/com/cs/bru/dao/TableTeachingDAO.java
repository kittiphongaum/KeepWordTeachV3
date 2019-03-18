package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;


@Repository
public class TableTeachingDAO {
	public void insertTableTeaching(TableTeaching bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_table_teaching(teble_teach_id,teach_term,term_year,teach_week,section,studen_number,start_month,stop_month,teach_year,start_time,stop_time,standard_teach,room,user_roleid,subject_roleid,degree_studen,sum_hour,start_month_string,stop_month_string)VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getTebleTeachId());
			prepared.setString(2, bean.getTeachTerm());
			prepared.setString(3, bean.getTermYear());
			prepared.setString(4, bean.getTeachWeek());
			prepared.setInt(5, bean.getSection());
			prepared.setInt(6, bean.getStudenNumber());
			
			prepared.setString(7, bean.getStartMonth());
			
			prepared.setString(8, bean.getStopMonth());
			prepared.setString(9, bean.getTeachYear());
			
			prepared.setString(10, bean.getStartTime());
			prepared.setString(11, bean.getStopTime());
			prepared.setInt(12, bean.getStandardTeach());
			
			prepared.setString(13, bean.getRoom());
			prepared.setString(14, bean.getUserRoleid());
			prepared.setString(15, bean.getSubjectRoleid());
			prepared.setString(16, bean.getDegreeStuden());
			prepared.setString(17, bean.getSumHour());
			prepared.setString(18, bean.getStartMonthString());
			prepared.setString(19, bean.getStopMonthString());

			
			System.out.println(bean.getStopMonthString()+":::");
			prepared.executeUpdate();
			 /*System.out.println(bean);*/ 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public TableTeaching findByidCard(String id) throws SQLException {
		TableTeaching bean = new TableTeaching();
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM tb_table_teaching WHERE teble_teach_id = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1, id);
			ResultSet rs = preperd.executeQuery();

			while (rs.next()) {
			/*	bean.setStId(rs.getInt("st_id"));
				bean.setStIdcard(rs.getString("st_idcard"));
				bean.setStFname(rs.getString("st_fname"));
				bean.setStLname(rs.getString("st_lname"));
				bean.setStPhone(rs.getString("st_phone"));
				bean.setRoleId(rs.getString("role_id"));*/
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
	public List<TableTeaching> findAll() {
		List<TableTeaching> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT teble_teach_id,studen_number,section,start_time,stop_time,room,subject_roleid,subject_id,subject_name,credit,credit_hour,user_roleid,user_id,user_name FROM tb_table_teaching INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id INNER JOIN tb_user on tb_table_teaching.user_roleid = tb_user.user_id");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				TableTeaching teach = new TableTeaching();
				Subject subject = new Subject();
				User user =new User();
				
				teach.setTebleTeachId(rs.getString("teble_teach_id"));
				teach.setStudenNumber(rs.getInt("studen_number"));
				teach.setSection(rs.getInt("section"));
				teach.setStartTime(rs.getString("start_time"));
				teach.setStopTime(rs.getString("stop_time"));
				teach.setRoom(rs.getString("room"));
				
			
				teach.setSubjectRoleid(rs.getString("subject_roleid"));
				
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				
				teach.setUserRoleid(rs.getString("user_roleid"));
				user.setUserId(rs.getString("user_id"));
				user.setUserFname(rs.getString("user_name"));
				
				teach.setSubject(subject);
				teach.setUser(user);
				list.add(teach);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public List<TableTeaching> findById(String id) {
		List<TableTeaching> list = new ArrayList<TableTeaching>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT *,tb_subject.*,tb_user.* FROM tb_table_teaching INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id INNER JOIN tb_user on tb_table_teaching.user_roleid = tb_user.user_id WHERE user_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				TableTeaching teach = new TableTeaching();
				Subject subject = new Subject();
				User user =new User();
				
				teach.setTebleTeachId(rs.getString("teble_teach_id"));
				teach.setDegreeStuden(rs.getString("degree_studen"));
				teach.setTeachTerm(rs.getString("teach_term"));
				teach.setTermYear(rs.getString("term_year"));
				teach.setTeachWeek(rs.getString("teach_week"));
				teach.setSection(rs.getInt("section"));
				teach.setStudenNumber(rs.getInt("studen_number"));
				
				teach.setStartMonth(rs.getString("start_month"));
				teach.setStopMonth(rs.getString("stop_month"));
				teach.setTeachYear(rs.getString("teach_year"));
				
				teach.setStartTime(rs.getString("start_month"));
				teach.setStopTime(rs.getString("stop_month"));
				teach.setSumHour(rs.getString("sum_hour"));
				teach.setStandardTeach(rs.getInt("standard_teach"));
				teach.setRoom(rs.getString("room"));
				
			
				teach.setSubjectRoleid(rs.getString("subject_roleid"));
				
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				subject.setTudsadee(rs.getInt("tudsadee"));
				subject.setPrtibad(rs.getInt("prtibad"));
				
				teach.setUserRoleid(rs.getString("user_roleid"));
				user.setUserId(rs.getString("user_id"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setUserbaseHour(rs.getInt("baseHour"));
				user.setUserbaseKrm(rs.getInt("baseKrm"));
				
				teach.setSubject(subject);
				teach.setUser(user);
				list.add(teach);
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public List<TableTeaching> findByIdSeachTeach(String userid,String term,String year,String degree) {
		List<TableTeaching> list = new ArrayList<TableTeaching>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT teble_teach_id,degree_studen,teach_term,term_year,teach_week,section,studen_number,start_month,stop_month,teach_year,start_time,stop_time,sum_hour,standard_teach,room,subject_roleid,subject_id,subject_name,credit,credit_hour,tudsadee,prtibad,user_roleid,user_id,prefix_name,user_name,user_lastname,user_lastname,position_teach,faculty,mojor,baseHour,baseKrm FROM tb_table_teaching INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id INNER JOIN tb_user on tb_table_teaching.user_roleid = tb_user.user_id WHERE user_roleid =? and teach_term=? and term_year=? and degree_studen=? ");
			
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,userid);
			prepared.setString(2,term);
			prepared.setString(3,year);
			prepared.setString(4,degree);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				TableTeaching teach = new TableTeaching();
				Subject subject = new Subject();
				User user =new User();
				
				teach.setTebleTeachId(rs.getString("teble_teach_id"));
				teach.setDegreeStuden(rs.getString("degree_studen"));
				teach.setTeachTerm(rs.getString("teach_term"));
				teach.setTermYear(rs.getString("term_year"));
				teach.setTeachWeek(rs.getString("teach_week"));
				teach.setSection(rs.getInt("section"));
				teach.setStudenNumber(rs.getInt("studen_number"));
				
				teach.setStartMonth(rs.getString("start_month"));
				teach.setStopMonth(rs.getString("stop_month"));
				teach.setTeachYear(rs.getString("teach_year"));
				
				teach.setStartTime(rs.getString("start_month"));
				teach.setStopTime(rs.getString("stop_month"));
				teach.setSumHour(rs.getString("sum_hour"));
				teach.setStandardTeach(rs.getInt("standard_teach"));
				teach.setRoom(rs.getString("room"));
				
				
			
				teach.setSubjectRoleid(rs.getString("subject_roleid"));
				
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				subject.setTudsadee(rs.getInt("tudsadee"));
				subject.setPrtibad(rs.getInt("prtibad"));
				
				teach.setUserRoleid(rs.getString("user_roleid"));
				user.setUserId(rs.getString("user_id"));
				user.setPrefixName(rs.getString("prefix_name"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				user.setPositionTeach(rs.getString("position_teach"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setUserbaseHour(rs.getInt("baseHour"));
				user.setUserbaseKrm(rs.getInt("baseKrm"));
			
				teach.setSubject(subject);
				teach.setUser(user);
				list.add(teach);
				
			}
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	// update
	public void update(TableTeaching bean) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" UPDATE tbl_student SET  st_fname = ? , st_lname = ?, st_phone = ? WHERE st_idcard = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			/*prepared.setString(1, bean.getStFname());
			prepared.setString(2, bean.getStLname());
			prepared.setString(3, bean.getStPhone());
			prepared.setString(4, bean.getStIdcard());*/

			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}

	}// end method update

	// delete
	public void delete(String id) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("DELETE FROM tb_table_teaching WHERE teble_teach_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			
		}
	} // end method delete
}
