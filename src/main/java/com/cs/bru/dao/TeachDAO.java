package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class TeachDAO {
	public void insertTeach(Teach bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_teaching (teach_id,sum_hour_term,hoursum_tudsadee,hoursum_prtibad,money_tudsadee,money_prtibad,salary_sum,"
					+ "dateofteach_fk,subject_fk,tableteach_fk,user_fk) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getTeachId());
			prepared.setInt(2, bean.getSumHourTerm());
			prepared.setInt(3, bean.getHoursumTudsadee());
			prepared.setInt(4, bean.getHoursumPrtibad());
			prepared.setInt(5, bean.getMoneyTudsadee());
			prepared.setInt(6, bean.getMoneyPrtibad());
			prepared.setInt(7, bean.getSalarySum());
			prepared.setString(8, bean.getDateofteachFk());
			prepared.setString(9, bean.getSubjactFk());
			prepared.setString(10, bean.getTableteachFk());
			prepared.setString(11, bean.getUserFk());
			

			prepared.executeUpdate();
//			System.out.println(bean);
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	
	public   List<Teach> teschASCfileAll(String userid,String term,String year,String degree) {
		List<Teach> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.* FROM tb_teaching "
					+ "INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id "
					+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term = ? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=? ORDER BY tb_teaching.salary_sum ASC;");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,userid);
			prepared.setString(2,term);
			prepared.setString(3,year);
			prepared.setString(4,degree);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Teach teach = new Teach();
				User users =new User();
				TableTeaching table = new TableTeaching();
								 
				teach.setTeachId(rs.getString("teach_id"));
				teach.setSumHourTerm(rs.getInt("sum_hour_term"));
				teach.setHoursumTudsadee(rs.getInt("hoursum_tudsadee"));
				teach.setHoursumPrtibad(rs.getInt("hoursum_prtibad"));
				teach.setMoneyTudsadee(rs.getInt("money_tudsadee"));
				teach.setMoneyPrtibad(rs.getInt("money_prtibad"));
				teach.setSalarySum(rs.getInt("salary_sum"));
			
				teach.setBaseHour(rs.getInt("basehour"));
				teach.setBasecram(rs.getInt("basecram"));
				teach.setDateofteachFk(rs.getString("dateofteach_fk"));
				teach.setSubjactFk(rs.getString("subject_fk"));
				teach.setTableteachFk(rs.getString("tableteach_fk"));
				teach.setUserFk(rs.getString("user_fk"));
				teach.setStatusTeach(rs.getInt("status_teach"));
				teach.setStatusTeaching(rs.getInt("status_teaching"));
				TableTeaching tableteach = new TableTeaching();
				Subject subject = new Subject();
				User user =new User();
				
				tableteach.setTebleTeachId(rs.getString("teble_teach_id"));
				tableteach.setDegreeStuden(rs.getString("degree_studen"));
				tableteach.setTeachTerm(rs.getString("teach_term"));
				tableteach.setTermYear(rs.getString("term_year"));
				tableteach.setTeachWeek(rs.getString("teach_week"));
				tableteach.setSection(rs.getInt("section"));
				tableteach.setStudenNumber(rs.getInt("studen_number"));
				
				tableteach.setStartMonth(rs.getString("start_month"));
				tableteach.setStopMonth(rs.getString("stop_month"));
				tableteach.setTeachYear(rs.getString("teach_year"));
				
				tableteach.setStartTime(rs.getString("start_month"));
				tableteach.setStopTime(rs.getString("stop_month"));
				tableteach.setSumHour(rs.getString("sum_hour"));
				tableteach.setStandardTeach(rs.getInt("standard_teach"));
				tableteach.setRoom(rs.getString("room"));
				
			
				tableteach.setSubjectRoleid(rs.getString("subject_roleid"));
				
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				subject.setTudsadee(rs.getInt("tudsadee"));
				subject.setPrtibad(rs.getInt("prtibad"));
				
				tableteach.setUserRoleid(rs.getString("user_roleid"));
				user.setUserId(rs.getString("user_id"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setBaseHour(rs.getInt("baseHour"));
				user.setBaseKrm(rs.getInt("baseKrm"));
				
				tableteach.setSubject(subject);
				teach.setTableTeaching(tableteach);
				teach.setUsers(user);
				
				list.add(teach);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	public List<Teach> findOne(String id) {
		List<Teach>list =new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
	

		try {
			sql.append(" SELECT tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.* FROM tb_teaching WHERE teach_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				Teach teach =new Teach();
				Subject subject = new Subject();
				TableTeaching  tableTeaching =new TableTeaching();
				User user =new User();
				teach.setTeachId(rs.getString("teach_id"));
				teach.setSumHourTerm(rs.getInt("sum_hour_term"));
				teach.setHoursumTudsadee(rs.getInt("hoursum_tudsadee"));
				teach.setHoursumPrtibad(rs.getInt("hoursum_prtibad"));
				teach.setMoneyTudsadee(rs.getInt("money_tudsadee"));
				teach.setMoneyPrtibad(rs.getInt("money_prtibad"));
				teach.setSalarySum(rs.getInt("salary_sum"));
				teach.setDateofteachFk(rs.getString("dateofteach_fk"));
				teach.setSubjactFk(rs.getString("subject_fk"));
				teach.setTableteachFk(rs.getString("tableteach_fk"));
				teach.setUserFk(rs.getString("user_fk"));
				
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				subject.setTudsadee(rs.getInt("tudsadee"));
				subject.setPrtibad(rs.getInt("prtibad"));
				
				tableTeaching.setStudenNumber(rs.getInt("studen_number"));
				tableTeaching.setStandardTeach(rs.getInt("standard_teach"));
				
				user.setUserId(rs.getString("user_id"));
				user.setPrefixName(rs.getString("prefix_name"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				user.setPositionTeach(rs.getString("position_teach"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setBaseHour(rs.getInt("baseHour"));
				user.setBaseKrm(rs.getInt("baseKrm"));
				user.setStatusLogin(rs.getString("status_login"));
				
				list.add(teach);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	public List<Teach> findByIdUser(String userId) {
		List<Teach>list =new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_teaching WHERE status_teach='2'AND user_fk = ?" );
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, userId);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				Teach teach =new Teach();
				teach.setTeachId(rs.getString("teach_id"));
				teach.setSumHourTerm(rs.getInt("sum_hour_term"));
				teach.setHoursumTudsadee(rs.getInt("hoursum_tudsadee"));
				teach.setHoursumPrtibad(rs.getInt("hoursum_prtibad"));
				teach.setMoneyTudsadee(rs.getInt("money_tudsadee"));
				teach.setMoneyPrtibad(rs.getInt("money_prtibad"));
				teach.setSalarySum(rs.getInt("salary_sum"));
				teach.setBaseHour(rs.getInt("basehour"));
				teach.setBasecram(rs.getInt("basehour"));
				teach.setDateofteachFk(rs.getString("dateofteach_fk"));
				teach.setSubjactFk(rs.getString("subject_fk"));
				teach.setTableteachFk(rs.getString("tableteach_fk"));
				teach.setUserFk(rs.getString("user_fk"));
				list.add(teach);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	/////////////////
	public List<Teach> findShowTableList(String userid,String term,String year,String degree) {
		List<Teach>list =new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.* FROM tb_teaching "
					+ "INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id "
					+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term =? and tb_table_teaching.teach_year=? and tb_table_teaching.degree_studen=? ORDER BY tb_teaching.salary_sum ASC");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,userid);
			prepared.setString(2,term);
			prepared.setString(3,year);
			prepared.setString(4,degree);
			ResultSet rs = prepared.executeQuery();
			
			while (rs.next()) {
				Teach teach =new Teach();
				Subject subject = new Subject();
				TableTeaching  tableTeaching =new TableTeaching();
				User user =new User();
				teach.setTeachId(rs.getString("teach_id"));
				teach.setSumHourTerm(rs.getInt("sum_hour_term"));
				teach.setHoursumTudsadee(rs.getInt("hoursum_tudsadee"));
				teach.setHoursumPrtibad(rs.getInt("hoursum_prtibad"));
				teach.setMoneyTudsadee(rs.getInt("money_tudsadee"));
				teach.setMoneyPrtibad(rs.getInt("money_prtibad"));
				teach.setSalarySum(rs.getInt("salary_sum"));
				teach.setDateofteachFk(rs.getString("dateofteach_fk"));
				teach.setSubjactFk(rs.getString("subject_fk"));
				teach.setTableteachFk(rs.getString("tableteach_fk"));
				teach.setUserFk(rs.getString("user_fk"));
				
				teach.setBaseHour(rs.getInt("basehour"));
				teach.setBasecram(rs.getInt("basecram"));
				
				subject.setSubjectId(rs.getString("subject_id"));
				subject.setSubjectName(rs.getString("subject_name"));
				subject.setCredit(rs.getInt("credit"));
				subject.setCreditHour(rs.getString("credit_hour"));
				subject.setTudsadee(rs.getInt("tudsadee"));
				subject.setPrtibad(rs.getInt("prtibad"));
				
				tableTeaching.setStudenNumber(rs.getInt("studen_number"));
				tableTeaching.setStandardTeach(rs.getInt("standard_teach"));
				tableTeaching.setSection(rs.getInt("section"));
				user.setUserId(rs.getString("user_id"));
				user.setPrefixName(rs.getString("prefix_name"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				user.setPositionTeach(rs.getString("position_teach"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setBaseHour(rs.getInt("baseHour"));
				user.setBaseKrm(rs.getInt("baseKrm"));
				user.setStatusLogin(rs.getString("status_login"));
				
				teach.setSubject(subject);
				teach.setUsers(user);
				teach.setTableTeaching(tableTeaching);
				list.add(teach);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	///////////////// update
	public void updateBase(Teach bean) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		
		
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("UPDATE tb_teaching SET  basehour =? ,  basecram=?,status_teach=?,status_teaching=?  WHERE teach_id =?");
			prepared = con.openConnect().prepareStatement(sql.toString());

			prepared.setInt(1, bean.getBaseHour());
			prepared.setInt(2, bean.getBasecram());
			prepared.setInt(3, bean.getStatusTeach());
			prepared.setInt(4, bean.getStatusTeaching());
			prepared.setString(5, bean.getTeachId());
			
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}

	}// end method update
	
}
