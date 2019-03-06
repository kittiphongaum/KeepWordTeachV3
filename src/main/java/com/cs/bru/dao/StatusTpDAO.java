package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DegreeStuden;
import com.cs.bru.model.StatusSubject;
import com.cs.bru.model.StatusTP;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class StatusTpDAO {

	public void insertStsubject(StatusTP bean) throws Exception{
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_setstatus_subject(setstatus_subject_id,setstatus_subject_hour,setstatus_subject_base,setstatus_subject_money,status_subject,setject_userid,teching_setject_id,setstatus_subid)VALUES (?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getSetstatusSubjectId());
			prepared.setInt(2, bean.getSetstatusSubjectHour());
			prepared.setInt(3, bean.getSetstatusSubjectBase());
			prepared.setInt(4, bean.getSetstatusSubjectMoney());
			prepared.setInt(5, bean.getStatusSubject());
			prepared.setString(6, bean.getSetjectUserid());
			prepared.setString(7, bean.getTechingSetjectId());
			prepared.setString(8, bean.getSetstatusSubId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<StatusTP>  listSunjectTP(String id)throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();
		List<StatusTP>  tp =new ArrayList<>();
		try {
			sql.append(" SELECT * FROM tb_setstatus_subject WHERE setstatus_subject_id = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1, id);
			ResultSet rs = preperd.executeQuery();
			while(rs.next()) {
				StatusTP stp = new StatusTP();
				stp.setSetstatusSubjectId(rs.getString("setstatus_subject_id"));
				stp.setSetstatusSubjectHour(rs.getInt("setstatus_subject_hour"));
				stp.setSetstatusSubjectBase(rs.getInt("setstatus_subject_base"));
				stp.setSetstatusSubjectMoney(rs.getInt("setstatus_subject_money"));
				stp.setStatusSubject(rs.getInt("status_subject"));
				stp.setSetjectUserid(rs.getString("setject_userid"));
				stp.setTechingSetjectId(rs.getString("teching_setject_id"));
				stp.setSetstatusSubId(rs.getString("setstatus_subid"));
				tp.add(stp);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return tp;
	} 
	public StatusTP SunjectTPbean(String id)throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();
		List<StatusTP>  tp =new ArrayList<>();
		StatusTP stp = new StatusTP();
		try {
			sql.append(" SELECT * FROM tb_setstatus_subject WHERE setstatus_subject_id = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1, id);
			ResultSet rs = preperd.executeQuery();
			while(rs.next()) {
				
				stp.setSetstatusSubjectId(rs.getString("setstatus_subject_id"));
				stp.setSetstatusSubjectHour(rs.getInt("setstatus_subject_hour"));
				stp.setSetstatusSubjectBase(rs.getInt("setstatus_subject_base"));
				stp.setSetstatusSubjectMoney(rs.getInt("setstatus_subject_money"));
				stp.setStatusSubject(rs.getInt("status_subject"));
				stp.setSetjectUserid(rs.getString("setject_userid"));
				stp.setTechingSetjectId(rs.getString("teching_setject_id"));
				stp.setSetstatusSubId(rs.getString("setstatus_subid"));
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return stp;
	} 
public List<StatusTP> SunjectTPFileBylist(String userid,String term,String year,String degree){
		
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();
		List<StatusTP>  tp =new ArrayList<StatusTP>();
		try {
			sql.append(" SELECT tb_setstatus_subject.*,tb_teaching.*,tb_user.*,tb_table_teaching.*,tb_status_subject.* FROM tb_setstatus_subject "
					+ "INNER JOIN tb_teaching on tb_setstatus_subject.teching_setject_id = tb_teaching.teach_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_user on tb_teaching.user_fk=tb_user.user_id INNER JOIN tb_status_subject on tb_setstatus_subject.status_subject=tb_status_subject.status_subject_id "
					+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term =? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=?");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1,userid);
			preperd.setString(2,term);
			preperd.setString(3,year);
			preperd.setString(4,degree);
			ResultSet rs = preperd.executeQuery();
			while(rs.next()) {
				StatusTP stp = new StatusTP();
				Teach teach =new Teach();
				TableTeaching tableTeaching = new TableTeaching();
				StatusSubject status =new StatusSubject(); 
				User user =new User();
				stp.setSetstatusSubjectId(rs.getString("setstatus_subject_id"));
				stp.setSetstatusSubjectHour(rs.getInt("setstatus_subject_hour"));
				stp.setSetstatusSubjectBase(rs.getInt("setstatus_subject_base"));
				stp.setSetstatusSubjectMoney(rs.getInt("setstatus_subject_money"));
				stp.setStatusSubject(rs.getInt("status_subject"));
				stp.setSetjectUserid(rs.getString("setject_userid"));
				stp.setTechingSetjectId(rs.getString("teching_setject_id"));
				stp.setSetstatusSubId(rs.getString("setstatus_subid"));
				
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
				
				stp.setTeach(teach);
				stp.setTableTeaching(tableTeaching);
				stp.setUser(user);
				stp.setStatusSubjectbean(status);
				tp.add(stp);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return tp;
	} 
//SumSalery
public List<StatusTP> sumjectTPsumSalery(String userid,String term,String year,String degree,int statusSubject)throws SQLException{
	
	ConnectDB con = new ConnectDB();
	PreparedStatement preperd = null;
	StringBuilder sql = new StringBuilder();
	List<StatusTP>  tplist =new ArrayList<>();

	try {
		sql.append("SELECT tb_setstatus_subject.*,tb_teaching.*,tb_user.*,tb_table_teaching.*,tb_status_subject.* FROM tb_setstatus_subject INNER JOIN tb_teaching on tb_setstatus_subject.teching_setject_id = tb_teaching.teach_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_user on tb_teaching.user_fk=tb_user.user_id INNER JOIN tb_status_subject on tb_setstatus_subject.status_subject=tb_status_subject.status_subject_id WHERE tb_user.user_id =? and tb_table_teaching.teach_term =? and tb_table_teaching.teach_year=? and tb_table_teaching.degree_studen=?AND status_subject=?");
		preperd = con.openConnect().prepareStatement(sql.toString());
		preperd.setString(1,userid);
		preperd.setString(2,term);
		preperd.setString(3,year);
		preperd.setString(4,degree);
		preperd.setInt(5,statusSubject);
		ResultSet rs = preperd.executeQuery();
		while(rs.next()) {
			StatusTP stp = new StatusTP();
			TableTeaching table =new TableTeaching(); 
			stp.setSetstatusSubjectId(rs.getString("setstatus_subject_id"));
			stp.setSetstatusSubjectHour(rs.getInt("setstatus_subject_hour"));
			stp.setSetstatusSubjectBase(rs.getInt("setstatus_subject_base"));
			stp.setSetstatusSubjectMoney(rs.getInt("setstatus_subject_money"));
			stp.setStatusSubject(rs.getInt("status_subject"));
			stp.setSetjectUserid(rs.getString("setject_userid"));
			stp.setTechingSetjectId(rs.getString("teching_setject_id"));
			stp.setSetstatusSubId(rs.getString("setstatus_subid"));
			
			//table.setTebleTeachId(rs.getString(""));
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	return tplist;
} 
public List<StatusTP> listAllSumsubject(String userid,String term,String year,String degree,String subject){
	
	ConnectDB con = new ConnectDB();
	PreparedStatement preperd = null;
	StringBuilder sql = new StringBuilder();
	List<StatusTP>  tp =new ArrayList<StatusTP>();
	try {
		sql.append("SELECT tb_setstatus_subject.*,tb_teaching.*,tb_user.*,tb_table_teaching.*,tb_status_subject.*,tb_degree.* FROM tb_setstatus_subject "
				+ "INNER JOIN tb_teaching on tb_setstatus_subject.teching_setject_id = tb_teaching.teach_id "
				+ "INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id "
				+ "INNER JOIN tb_user on tb_teaching.user_fk=tb_user.user_id "
				+ "INNER JOIN tb_status_subject on tb_setstatus_subject.status_subject=tb_status_subject.status_subject_id "
				+ "INNER JOIN tb_degree on tb_table_teaching.degree_studen=tb_degree.id_degree "
				+ "WHERE tb_user.user_id =? AND tb_table_teaching.teach_term =? AND tb_table_teaching.teach_year=? AND tb_table_teaching.degree_studen=? AND tb_table_teaching.degree_studen='1' AND tb_teaching.subject_fk=?");
		preperd = con.openConnect().prepareStatement(sql.toString());
		preperd.setString(1,userid);
		preperd.setString(2,term);
		preperd.setString(3,year);
		preperd.setString(4,degree);
		preperd.setString(5,subject);
	
		ResultSet rs = preperd.executeQuery();
		while(rs.next()) {
			StatusTP stp = new StatusTP();
			Teach teach =new Teach();
			TableTeaching tableteach = new TableTeaching();
			StatusSubject status =new StatusSubject(); 
			User user =new User();
			DegreeStuden degreeStuden =new DegreeStuden();
			
			stp.setSetstatusSubjectId(rs.getString("setstatus_subject_id"));
			stp.setSetstatusSubjectHour(rs.getInt("setstatus_subject_hour"));
			stp.setSetstatusSubjectBase(rs.getInt("setstatus_subject_base"));
			stp.setSetstatusSubjectMoney(rs.getInt("setstatus_subject_money"));
			stp.setStatusSubject(rs.getInt("status_subject"));
			stp.setSetjectUserid(rs.getString("setject_userid"));
			stp.setTechingSetjectId(rs.getString("teching_setject_id"));
			stp.setSetstatusSubId(rs.getString("setstatus_subid"));
			
			teach.setTeachId(rs.getString("teach_id"));
			
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
			tableteach.setStartMonthString(rs.getString("start_month_string"));
			tableteach.setStopMonthString(rs.getString("stop_month_string"));
	
			
			
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
			
			degreeStuden.setIdDegree(rs.getInt("id_degree"));
			degreeStuden.setNameDegree(rs.getString("name_degree"));
			
			stp.setDegreeStuden(degreeStuden);
			stp.setTeach(teach);
			stp.setTableTeaching(tableteach);
			stp.setUser(user);
			stp.setStatusSubjectbean(status);
			tp.add(stp);
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return tp;
} 
}
