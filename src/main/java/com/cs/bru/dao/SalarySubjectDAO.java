package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.Salary;
import com.cs.bru.model.StatusSubject;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class SalarySubjectDAO {
	//insert
	public void insertSalary(Salary bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_salary(salary_id,salary_sum_tudsadee,salary_sum_prtibad,sum_tudsadee_prtibad_hour,salary_status,salary_subject_fk,salary_userfk)VALUES (?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getSalaryId());
			prepared.setInt(2, bean.getSalarySumTudsadee());
			prepared.setInt(3, bean.getSalarySumPrtibad());
			prepared.setInt(4, bean.getSumTudsadeePrtibad());

			prepared.setInt(5, bean.getSalaryStatus());
			prepared.setString(6, bean.getSalarySubjeatFk());
			prepared.setString(7, bean.getSalaryuserFk());
			

			prepared.executeUpdate();
			 /*System.out.println(bean);*/ 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//insert
		public void insertSalarySeve(Salary bean) throws Exception {
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			try {
				sql.append(
						"INSERT INTO tb_salary(salary_id,sum_tudsadee_prtibad_hour,salary_summoney,salary_userfk,salary_setatatus_id,salary_status,salary_tableteahing,salery_thaibaht)VALUES (?,?,?,?,?,?,?,?)");
				prepared = con.openConnect().prepareStatement(sql.toString());
				prepared.setString(1, bean.getSalaryId());
				prepared.setInt(2, bean.getSumTudsadeePrtibadHour());
				prepared.setInt(3, bean.getSalarySummoney());
				prepared.setString(4, bean.getSalaryuserFk());
				
				prepared.setInt(5, bean.getSalarySetatatusId());
				prepared.setInt(6, bean.getSalaryStatus());
				
				prepared.setString(7, bean.getSalaryTableteahing());
				prepared.setString(8, bean.getSaleryTaibaht());

				prepared.executeUpdate();
				 /*System.out.println(bean);*/ 
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	public   List<Salary> salaryListAll() {
		Salary bean = new Salary();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		List<Salary> list = new ArrayList<>();
		try {
			sql.append("SELECT * FROM tb_salary");
			prepared = con.openConnect().prepareStatement(sql.toString());
		
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				
				bean.setSalaryId(rs.getString("salary_id"));
				bean.setSalarySumTudsadee(rs.getInt("salary_sum_tudsadee"));
				bean.setSalarySumPrtibad(rs.getInt("salary_sum_prtibad"));
				bean.setSumTudsadeePrtibad(rs.getInt("sum_tudsadee_prtibad"));
				bean.setSalaryStatus(rs.getInt("salary_status"));
				bean.setSalarySubjeatFk(rs.getString("salary_subject_fk"));
				bean.setSalaryuserFk(rs.getString("salary_userfk"));
				bean.setSalaryDateofteach(rs.getString("salary_dateofteach"));
				list.add(bean);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public   Salary salaryListById(String SalaryId) {
		Salary bean = new Salary();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append("SELECT * FROM tb_salary WHERE salary_id=?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, SalaryId);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				
				bean.setSalaryId(rs.getString("salary_id"));
				bean.setSalarySumTudsadee(rs.getInt("salary_sum_tudsadee"));
				bean.setSalarySumPrtibad(rs.getInt("salary_sum_prtibad"));
				bean.setSumTudsadeePrtibad(rs.getInt("sum_tudsadee_prtibad"));
				bean.setSalaryStatus(rs.getInt("salary_status"));
				bean.setSalarySubjeatFk(rs.getString("salary_subject_fk"));
				bean.setSalaryuserFk(rs.getString("salary_userfk"));
				bean.setSalaryDateofteach(rs.getString("salary_dateofteach"));
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bean;
	}
	public   List<Salary> salaryListByIdUser(String UserId) {
		List<Salary> list =new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append("SELECT * FROM tb_salary WHERE salary_userfk=? AND salary_status='2'");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, UserId);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Salary bean = new Salary();
				bean.setSalaryId(rs.getString("salary_id"));
				bean.setSalarySumTudsadee(rs.getInt("salary_sum_tudsadee"));
				bean.setSalarySumPrtibad(rs.getInt("salary_sum_prtibad"));
				bean.setSumTudsadeePrtibad(rs.getInt("sum_tudsadee_prtibad"));
				bean.setSalaryStatus(rs.getInt("salary_status"));
				bean.setSalarySubjeatFk(rs.getString("salary_subject_fk"));
				bean.setSalaryuserFk(rs.getString("salary_userfk"));
				bean.setSalaryDateofteach(rs.getString("salary_dateofteach"));
				
				list.add(bean);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	//ปิด
	public List<TableTeaching> fileSumTudsadee(String subjectId,String userId) {
		List<TableTeaching> list = new ArrayList<TableTeaching>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT *,tb_dateofteach.*,tb_user.* FROM tb_table_teaching INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id INNER JOIN tb_user on tb_table_teaching.user_roleid = tb_user.user_id WHERE user_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, subjectId);
			prepared.setString(1, userId);
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
	// update
			public void updateSalary(Salary bean) {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append("UPDATE tb_user SET salary_sum_tudsadee=? ,salary_sum_prtibad =? , sum_tudsadee_prtibad =? WHERE salary_subject_fk =?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setInt(1, bean.getSalarySumTudsadee());
					prepared.setInt(2, bean.getSalarySumPrtibad());
					prepared.setInt(3, bean.getSumTudsadeePrtibad());
					prepared.setString(4, bean.getSalarySubjeatFk());
					prepared.executeUpdate();
					
			
				
				} catch (Exception e) {
					// TODO: handle exception
				}

			}// end method update
			public   List<Salary> salaryListByIdMoney(String userid,String term,String year,String degree) {
				List<Salary> list =new ArrayList<>();
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				
				try {
					sql.append("SELECT tb_salary.*,tb_teaching.*,tb_user.*,tb_table_teaching.*,tb_status_subject.* FROM tb_salary "
							+ "INNER JOIN tb_teaching on tb_salary.salary_tableteahing = tb_teaching.teach_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_user on tb_teaching.user_fk=tb_user.user_id INNER JOIN tb_status_subject on tb_salary.salary_setatatus_id=tb_status_subject.status_subject_id "
							+ "WHERE tb_user.user_id =? AND tb_table_teaching.teach_term =? AND tb_table_teaching.teach_year=? AND tb_table_teaching.degree_studen=?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setString(1,userid);
					prepared.setString(2,term);
					prepared.setString(3,year);
					prepared.setString(4,degree);
					ResultSet rs = prepared.executeQuery();

					while (rs.next()) {
						Salary bean = new Salary();
						Teach teach =new Teach();
						TableTeaching tableTeaching = new TableTeaching();
						StatusSubject status =new StatusSubject(); 
						User user =new User();
						bean.setSalaryId(rs.getString("salary_id"));
					
						bean.setSumTudsadeePrtibadHour(rs.getInt("sum_tudsadee_prtibad_hour"));
						bean.setSalaryStatus(rs.getInt("salary_status"));
						bean.setSalarySummoney(rs.getInt("salary_summoney"));
						bean.setSaleryTaibaht(rs.getString("salery_thaibaht"));
						bean.setSalaryuserFk(rs.getString("salary_userfk"));
					
						
						teach.setTeachId(rs.getString("teach_id"));
						
						tableTeaching.setTeachTerm(rs.getString("teach_term"));
						tableTeaching.setTeachYear(rs.getString("term_year"));
						tableTeaching.setDegreeStuden(rs.getString("degree_studen"));
						
						status.setStatusSubjectId(rs.getInt("status_subject_id"));
						status.setStatusSubjectName(rs.getString("status_subject_name"));
						
						user.setUserId(rs.getString("user_id"));
						user.setPrefixName(rs.getString("prefix_name"));
						user.setUserFname(rs.getString("user_name"));
						user.setUserLname(rs.getString("user_lastname"));
						user.setPositionTeach(rs.getString("position_teach"));
						user.setFaculty(rs.getString("faculty"));
						user.setMojor(rs.getString("mojor"));
						user.setUserbaseHour(rs.getInt("baseHour"));
						user.setUserbaseKrm(rs.getInt("baseKrm"));
						
						
						bean.setTableTeaching(tableTeaching);
						bean.setUser(user);
						bean.setStatusSubject(status);
						list.add(bean);
					
					}

				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				return list;
			}
}
