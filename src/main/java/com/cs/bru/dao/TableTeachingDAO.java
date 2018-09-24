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
					"INSERT INTO tb_table_teaching (teble_teach_id,studen_number,section,start_time,stop_time,room,user_roleid,subject_roleid,standard_teach) VALUES(?,?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getTebleTeachId());
			prepared.setInt(2, bean.getStudenNumber());
			prepared.setInt(3, bean.getSection());
			prepared.setString(4, bean.getStartTime());
			prepared.setString(5, bean.getStopTime());
			prepared.setString(6, bean.getRoom());
			prepared.setString(7, bean.getUserRoleid());
			prepared.setString(8, bean.getSubjectRoleid());
			prepared.setInt(9, bean.getStandardTeach());
			

			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
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
			sql.append("SELECT teble_teach_id,studen_number,section,start_time,stop_time,standard_teach,room,subject_roleid,subject_id,subject_name,credit,credit_hour,user_roleid,user_id,user_name,user_lastname FROM tb_table_teaching INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id INNER JOIN tb_user on tb_table_teaching.user_roleid = tb_user.user_id WHERE user_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
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
				teach.setStandardTeach(rs.getInt("standard_teach"));
				
			
				teach.setSubjectRoleid(rs.getString("subject_roleid"));
				
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				
				teach.setUserRoleid(rs.getString("user_roleid"));
				user.setUserId(rs.getString("user_id"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				
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
			sql.append(" DELETE FROM tbl_student WHERE st_idcard = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			
		}
	} // end method delete
}
