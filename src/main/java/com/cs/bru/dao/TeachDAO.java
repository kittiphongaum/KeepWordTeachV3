package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

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

	
	public List<Teach> teschASCfileAll(String userid,String term,String year,String degree) {
		List<Teach> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT tb_teaching.*,tb_user.*,tb_table_teaching.* FROM tb_teaching INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id WHERE tb_user.user_id =? and tb_table_teaching.teach_term = ? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=? ORDER BY tb_teaching.salary_sum ASC;");
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

	public List<Teach> findOne(String id) {
		List<Teach>list =new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
	

		try {
			sql.append(" SELECT * FROM tb_teaching WHERE teach_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
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
}
