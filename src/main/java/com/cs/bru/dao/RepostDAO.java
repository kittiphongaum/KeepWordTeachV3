package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.DegreeStuden;
import com.cs.bru.model.Month;
import com.cs.bru.model.Salary;
import com.cs.bru.model.StatusSubject;
import com.cs.bru.model.StatusTP;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class RepostDAO {
	
	public   List<Teach> repostPaper1(String userid,String term,String year,String degree) {
		List<Teach> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.* FROM tb_teaching "
					+ "INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id "
					+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term = ? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=? ORDER BY tb_teaching.teach_basecram ASC;");
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
			
				teach.setBaseHour(rs.getInt("teach_basehour"));
				teach.setBasecram(rs.getInt("teach_basecram"));
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
				user.setPrefixName(rs.getString("prefix_name"));
				user.setUserFname(rs.getString("user_name"));
				
				user.setUserLname(rs.getString("user_lastname"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setPositionTeach(rs.getString("position_teach"));
				user.setUserbaseHour(rs.getInt("baseHour"));
				user.setUserbaseKrm(rs.getInt("baseKrm"));
				user.setPositionUser(rs.getString("position_user"));
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
	public   List<DateofTeach> listrepostpaper3(String userid,String term,String year,String degree) {
		List<DateofTeach> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT tb_dateofteach.*,tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.*,tb_month.*,tb_degree.* FROM tb_dateofteach "
					+ "INNER JOIN tb_teaching on tb_dateofteach.subject_dft=tb_teaching.subject_fk "
					+ "INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id "
					+ "INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id "
					+ "INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id "
					+ "INNER JOIN tb_month on tb_dateofteach.monthofyear_dft=tb_month.month_id "
					+ "INNER JOIN tb_degree on tb_table_teaching.degree_studen=tb_degree.id_degree "
					+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term =? and tb_table_teaching.teach_year=? and tb_table_teaching.degree_studen=? and tb_dateofteach.statusbase='2' and tb_dateofteach.holiday_dft='work' ORDER BY tb_dateofteach.weekofyear_dft ASC");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,userid);
			prepared.setString(2,term);
			prepared.setString(3,year);
			prepared.setString(4,degree);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				DateofTeach day = new DateofTeach();
				Month month =new Month();
				day.setDateofteachId(rs.getString("dateofteach_id"));
				day.setWeekofyearDft(rs.getInt("weekofyear_dft"));
				day.setDayofyearDft(rs.getString("dayofyear_dft"));
				day.setMonthofyearDft(rs.getString("monthofyear_dft"));
				day.setYearofteachDft(rs.getString("yearofteach_dft"));
				day.setTudsadeeDft(rs.getInt("tudsadee_dft"));
				day.setPrtibadDft(rs.getInt("prtibad_dft"));
				day.setSummyhourDft(rs.getInt("summyhour_dft"));
				day.setMoneyDft(rs.getInt("money_dft"));
				day.setHolidayDft(rs.getString("holiday_dft"));
				day.setStatusBase(rs.getString("statusbase"));
				day.setStatusDateofteach(rs.getInt("status_dateofteach"));
				day.setSubjectDft(rs.getString("subject_dft"));
				day.setUserDft(rs.getString("user_dft"));
				//ตรางสอน
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
			
				teach.setBaseHour(rs.getInt("teach_basehour"));
				teach.setBasecram(rs.getInt("teach_basecram"));
				teach.setDateofteachFk(rs.getString("dateofteach_fk"));
				teach.setSubjactFk(rs.getString("subject_fk"));
				teach.setTableteachFk(rs.getString("tableteach_fk"));
				teach.setUserFk(rs.getString("user_fk"));
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
				
				tableteach.setTeachYear(rs.getString("teach_year"));
				tableteach.setSumHour(rs.getString("sum_hour"));
				tableteach.setStandardTeach(rs.getInt("standard_teach"));
				
				tableteach.setStartMonthString(rs.getString("start_month_string"));
				tableteach.setStopMonthString(rs.getString("stop_month_string"));
		
				
				
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
				user.setPrefixName(rs.getString("prefix_name"));
				user.setUserFname(rs.getString("user_name"));
				
				user.setUserLname(rs.getString("user_lastname"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setPositionTeach(rs.getString("position_teach"));
				user.setUserbaseHour(rs.getInt("baseHour"));
				user.setUserbaseKrm(rs.getInt("baseKrm"));
				user.setPositionUser(rs.getString("position_user"));
				

				
				
				month.setMonthId(rs.getString("month_id"));
				month.setMonthName(rs.getString("month_name"));
				month.setMonthLastname(rs.getString("month_lastname"));
	
				DegreeStuden degreeStuden=new DegreeStuden();
				degreeStuden.setIdDegree(rs.getInt("id_degree"));
				degreeStuden.setNameDegree(rs.getString("name_degree"));
				
				
				tableteach.setSubject(subject);
				teach.setTableTeaching(tableteach);
				teach.setUsers(user);
				day.setMonth(month);
				day.setDegreeStuden(degreeStuden);
				day.setTeach(teach);
				
				list.add(day);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
public List<StatusTP> listdayrepostPaper2(String userid,String term,String year,String degree){
		
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
					+ "WHERE tb_user.user_id =? AND tb_table_teaching.teach_term =? AND tb_table_teaching.teach_year=? AND tb_table_teaching.degree_studen=?");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1,userid);
			preperd.setString(2,term);
			preperd.setString(3,year);
			preperd.setString(4,degree);
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
public   List<Salary> listdayrepostPaper4(String userid,String term,String year,String degree) {
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
