package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.analysis.function.Add;
import org.springframework.stereotype.Repository;

import com.cs.bru.model.DateofTeach;
import com.cs.bru.model.Month;
import com.cs.bru.model.Specialteaching;
import com.cs.bru.model.Subject;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.Teach;
import com.cs.bru.model.Term;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class SpecialteachingDAO {
	//ระยะเวลาสอนพิเศษ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	public   List<DateofTeach> SpecialteachinfildCDayAddsubject(String userid,String term,String year,String degree,String subjeactId) {
		List<DateofTeach> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT tb_dateofteach.*,tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.*,tb_month.* FROM tb_dateofteach "
					+ "INNER JOIN tb_teaching on tb_dateofteach.subject_dft=tb_teaching.subject_fk INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id INNER JOIN tb_month on tb_dateofteach.monthofyear_dft=tb_month.month_id "
					+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term = ? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=? and tb_dateofteach.statusbase='2' and tb_dateofteach.holiday_dft='work' AND tb_dateofteach.subject_dft=? ORDER BY tb_dateofteach.weekofyear_dft ASC");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,userid);
			prepared.setString(2,term);
			prepared.setString(3,year);
			prepared.setString(4,degree);
			prepared.setString(5, subjeactId);
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
				day.setSpecialteachingStartdateday(rs.getString("specialteaching_startdateday"));
				day.setSpecialteachingStopdateday(rs.getString("specialteaching_stopdateday"));
				day.setSpecialteachingStarttimeday(rs.getString("specialteaching_starttimeday"));
				day.setSpecialteachingStoptimeday(rs.getString("specialteaching_stoptimeday"));
				day.setSpecial(rs.getString("special"));
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
				user.setUserbaseHour(rs.getInt("baseHour"));
				user.setUserbaseKrm(rs.getInt("baseKrm"));
				

				
				
				month.setMonthId(rs.getString("month_id"));
				month.setMonthName(rs.getString("month_name"));
				month.setMonthLastname(rs.getString("month_lastname"));
	
				
		
				tableteach.setSubject(subject);
				teach.setTableTeaching(tableteach);
				teach.setUsers(user);
				day.setMonth(month);
				
				day.setTeach(teach);
				
				list.add(day);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public void insertSpecialTeaching(Specialteaching bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_specialteaching(specialteaching_id,specialteaching_startdate,specialteaching_stopdate,specialteaching_starttime,specialteaching_stoptime,specialteaching_subject,specialteaching_dateofteach,specialteaching_status)VALUES (?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getSpecialteachingId());
			prepared.setString(2, bean.getSpecialteachingStartdate());
			prepared.setString(3, bean.getSpecialteachingStopdate());
			prepared.setString(4, bean.getSpecialteachingStarttime());
			prepared.setString(5, bean.getSpecialteachingStoptime());
			prepared.setString(6, bean.getSpecialteachingSubject());
			prepared.setString(7, bean.getSpecialteachingDateofteach());
			prepared.setString(8, bean.getSpecialteachingStatus());

			prepared.executeUpdate();
			 /*System.out.println(bean);*/ 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<Specialteaching> findOne(String userid ) {
		List<Specialteaching> list =new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("SELECT * FROM tb_specialteaching WHERE specialteaching_dateofteach=?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, userid);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				Specialteaching special = new Specialteaching();
				
				special.setSpecialteachingId(rs.getString("specialteaching_id"));
				special.setSpecialteachingStartdate(rs.getString("specialteaching_startdate"));
				special.setSpecialteachingStopdate(rs.getString("specialteaching_stopdate"));
				special.setSpecialteachingStarttime(rs.getString("specialteaching_starttime"));
				special.setSpecialteachingStoptime(rs.getString("specialteaching_stoptime"));
				special.setSpecialteachingSubject(rs.getString("specialteaching_subject"));
				special.setSpecialteachingDateofteach(rs.getString("specialteaching_dateofteach"));
				special.setSpecialteachingStatus(rs.getString("specialteaching_status"));
				list.add(special);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	// update
	public void update(Specialteaching bean) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("UPDATE tb_term SET term_start =? , term_stop =?, term_year=?,term_teachyear=?,term_teachterm=? WHERE term_id=?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getSpecialteachingId());
			prepared.setString(2, bean.getSpecialteachingStartdate());
			prepared.setString(3, bean.getSpecialteachingStopdate());
			prepared.setString(4, bean.getSpecialteachingStarttime());   
			prepared.setString(5, bean.getSpecialteachingStoptime());
			prepared.setString(6, bean.getSpecialteachingSubject());
			prepared.setString(7, bean.getSpecialteachingDateofteach());
			prepared.setString(8, bean.getSpecialteachingStatus());
			
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}// end method update
// delete
	public void deleteSpecial(String id) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("DELETE FROM tb_specialteaching WHERE specialteaching_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			
		}
	} // end method delete
	//ระยะเ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			public   DateofTeach cackSpecialteachinfildCDayAddsubject(String userid,String term,String year,String degree,String subjeactId,int d,int m ,int y) {
//				List<DateofTeach> list = new ArrayList<>();
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				DateofTeach day = new DateofTeach();
				try {
					sql.append("SELECT tb_dateofteach.*,tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.*,tb_month.* FROM tb_dateofteach  "
							+ "INNER JOIN tb_teaching on tb_dateofteach.subject_dft=tb_teaching.subject_fk "
							+ "INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id "
							+ "INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id "
							+ "INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id "
							+ "INNER JOIN tb_month on tb_dateofteach.monthofyear_dft=tb_month.month_id  "
							+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term =? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=? and tb_dateofteach.statusbase='2' and tb_dateofteach.holiday_dft='work' AND tb_dateofteach.subject_dft=? AND dayofyear_dft =? AND monthofyear_dft=? and yearofteach_dft=?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setString(1,userid);
					prepared.setString(2,term);
					prepared.setString(3,year);
					prepared.setString(4,degree);
				
					prepared.setString(5,subjeactId);
					prepared.setInt(6,d);
					prepared.setInt(7,m);
					prepared.setInt(8,y);
					ResultSet rs = prepared.executeQuery();

					while (rs.next()) {
						
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
						day.setSpecialteachingStartdateday(rs.getString("specialteaching_startdateday"));
						day.setSpecialteachingStopdateday(rs.getString("specialteaching_stopdateday"));
						day.setSpecialteachingStarttimeday(rs.getString("specialteaching_starttimeday"));
						day.setSpecialteachingStoptimeday(rs.getString("specialteaching_stoptimeday"));
						day.setSpecial(rs.getString("special"));
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
						user.setUserbaseHour(rs.getInt("baseHour"));
						user.setUserbaseKrm(rs.getInt("baseKrm"));
						

						
						
						month.setMonthId(rs.getString("month_id"));
						month.setMonthName(rs.getString("month_name"));
						month.setMonthLastname(rs.getString("month_lastname"));
			
						
				
						tableteach.setSubject(subject);
						teach.setTableTeaching(tableteach);
						teach.setUsers(user);
						day.setMonth(month);
						
						day.setTeach(teach);
						
						//list.add(day);
					}

				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				return day;
			}
	//ระยะเวลาสอนพิเศษ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		public   List<DateofTeach> tableSpecialteachinfildCDayAddsubject(String userid,String term,String year,String degree,String subjeactId) {
			List<DateofTeach> list = new ArrayList<>();
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();

			try {
				sql.append("SELECT tb_dateofteach.*,tb_teaching.*,tb_table_teaching.*,tb_subject.*,tb_user.*,tb_month.* FROM tb_dateofteach "
						+ "INNER JOIN tb_teaching on tb_dateofteach.subject_dft=tb_teaching.subject_fk INNER JOIN tb_user on tb_teaching.user_fk = tb_user.user_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id INNER JOIN tb_month on tb_dateofteach.monthofyear_dft=tb_month.month_id "
						+ "WHERE tb_user.user_id =? and tb_table_teaching.teach_term = ? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=? and tb_dateofteach.statusbase='2' and tb_dateofteach.holiday_dft='work' AND tb_dateofteach.subject_dft=? AND tb_dateofteach.special='ชดเชย' ORDER BY tb_dateofteach.weekofyear_dft ASC");
				prepared = con.openConnect().prepareStatement(sql.toString());
				prepared.setString(1,userid);
				prepared.setString(2,term);
				prepared.setString(3,year);
				prepared.setString(4,degree);
				prepared.setString(5, subjeactId);
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
					day.setSpecialteachingStartdateday(rs.getString("specialteaching_startdateday"));
					day.setSpecialteachingStopdateday(rs.getString("specialteaching_stopdateday"));
					day.setSpecialteachingStarttimeday(rs.getString("specialteaching_starttimeday"));
					day.setSpecialteachingStoptimeday(rs.getString("specialteaching_stoptimeday"));
					day.setSpecial(rs.getString("special"));
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
					user.setUserbaseHour(rs.getInt("baseHour"));
					user.setUserbaseKrm(rs.getInt("baseKrm"));
					

					
					
					month.setMonthId(rs.getString("month_id"));
					month.setMonthName(rs.getString("month_name"));
					month.setMonthLastname(rs.getString("month_lastname"));
		
					
			
					tableteach.setSubject(subject);
					teach.setTableTeaching(tableteach);
					teach.setUsers(user);
					day.setMonth(month);
					
					day.setTeach(teach);
					
					list.add(day);
				}

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return list;
		}
		// update
		public void updateSpecal(DateofTeach bean) {
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			try {
				sql.append("UPDATE tb_dateofteach SET specialteaching_startdateday=?,specialteaching_stopdateday=?,specialteaching_starttimeday=?,specialteaching_stoptimeday=?,special=? "
						+ "WHERE dayofyear_dft =? AND monthofyear_dft=? and yearofteach_dft=? AND dateofteach_id=? and subject_dft=? AND user_dft=?");
				prepared = con.openConnect().prepareStatement(sql.toString());
				prepared.setString(1, bean.getSpecialteachingStartdateday());
				prepared.setString(2, bean.getSpecialteachingStopdateday());
				prepared.setString(3, bean.getSpecialteachingStarttimeday());
				prepared.setString(4, bean.getSpecialteachingStoptimeday());
				prepared.setString(5, bean.getSpecial());
				prepared.setString(6, bean.getDayofyearDft());
				prepared.setString(7, bean.getMonthofyearDft());
				prepared.setString(8, bean.getDayofyearDft());
				prepared.setString(9, bean.getDateofteachId());
				prepared.setString(10, bean.getSubjectDft());
				prepared.setString(11, bean.getUserDft());
				prepared.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

		}// end method update
		public void insertDateofTeach(DateofTeach bean) throws Exception {
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			try {
				sql.append(
						"INSERT INTO tb_dateofteach(dateofteach_id,weekofyear_dft,dayofyear_dft,monthofyear_dft,yearofteach_dft,tudsadee_dft,prtibad_dft,summyhour_dft,subject_dft,user_dft,holiday_dft,money_dft,specialteaching_startdateday,specialteaching_stopdateday,"
						+ "specialteaching_starttimeday,specialteaching_stoptimeday,special,statusbase,status_dateofteach)VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
				prepared.setString(11, bean.getHolidayDft());
				prepared.setInt(12, bean.getMoneyDft());
				prepared.setString(13, bean.getSpecialteachingStartdateday());
				prepared.setString(14, bean.getSpecialteachingStopdateday());
				prepared.setString(15, bean.getSpecialteachingStarttimeday());
				prepared.setString(16, bean.getSpecialteachingStoptimeday());
				prepared.setString(17, bean.getSpecial());
				prepared.setString(18, bean.getStatusBase());
				prepared.setInt(19, bean.getStatusDateofteach());
				
				prepared.executeUpdate();
				 /*System.out.println(bean);*/ 
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
}
