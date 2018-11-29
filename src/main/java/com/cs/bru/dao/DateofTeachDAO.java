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
public class DateofTeachDAO {
	public void insertDateofTeach(DateofTeach bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_dateofteach(dateofteach_id,weekofyear_dft,dayofyear_dft,monthofyear_dft,yearofteach_dft,tudsadee_dft,prtibad_dft,summyhour_dft,subject_dft,user_dft,holiday_dft,money_dft)VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
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
			prepared.executeUpdate();
			 /*System.out.println(bean);*/ 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<DateofTeach> findById(String userid ,String term,String year) {
		List<DateofTeach> list = new ArrayList<DateofTeach>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT dateofteach_id,weekofyear_dft,dayofyear_dft,monthofyear_dft,yearofteach_dft,tudsadee_dft,prtibad_dft,summyhour_dft,subject_dft,subject_id,subject_name,credit,credit_hour,tudsadee,prtibad,user_dft,user_id,user_name,user_lastname,baseHour,baseKrm "
					+ "FROM tb_dateofteach INNER JOIN tb_subject on tb_dateofteach.subject_dft = tb_subject.subject_id INNER JOIN tb_user on tb_dateofteach.user_dft = tb_user.user_id WHERE tb_user.user_id =? and tb_table_teaching.teach_term =?  and tb_table_teaching.teach_year=?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, userid);
			prepared.setString(2, term);
			prepared.setString(3, year);
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
	// update
		public void update(DateofTeach bean) {
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			try {
				sql.append("UPDATE tb_dateofteach SET  money_dft=? statusbase =?  WHERE dateofteach_id = ?");
				prepared = con.openConnect().prepareStatement(sql.toString());
				prepared.setInt(1, bean.getMoneyDft());
				prepared.setString(2, bean.getStatusBase());
				prepared.setString(3, bean.getDateofteachId());
				prepared.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}

		}// end method update
		
		// update
				public void updateDay(DateofTeach bean) {
					ConnectDB con = new ConnectDB();
					PreparedStatement prepared = null;
					
					
					StringBuilder sql = new StringBuilder();
					try {
						sql.append("UPDATE tb_dateofteach SET  statusbase =?  WHERE subject_dft = ?");
						prepared = con.openConnect().prepareStatement(sql.toString());

						prepared.setString(1, bean.getStatusBase());
						prepared.setString(2, bean.getSubjectDft());
						prepared.executeUpdate();
					} catch (Exception e) {
						// TODO: handle exception
					}

				}// end method update
				
				//ระยะเวลาสอน
				public   List<DateofTeach> fileASCDay(String userid,String term,String year,String degree) {
					List<DateofTeach> list = new ArrayList<>();
					ConnectDB con = new ConnectDB();
					PreparedStatement prepared = null;
					StringBuilder sql = new StringBuilder();

					try {
						sql.append("SELECT tb_dateofteach.*,tb_table_teaching.*,tb_subject.*,tb_user.* FROM tb_dateofteach INNER JOIN tb_user on tb_dateofteach.user_dft = tb_user.user_id INNER JOIN tb_table_teaching on tb_dateofteach.dateofteach_id = tb_table_teaching.teble_teach_id INNER JOIN tb_subject on tb_table_teaching.subject_roleid = tb_subject.subject_id WHERE tb_user.user_id =? and tb_table_teaching.teach_term = ? and tb_table_teaching.teach_year= ? and tb_table_teaching.degree_studen=? and tb_dateofteach.statusbase='1' ORDER BY tb_dateofteach.weekofyear_dft ASC");
						prepared = con.openConnect().prepareStatement(sql.toString());
						prepared.setString(1,userid);
						prepared.setString(2,term);
						prepared.setString(3,year);
						prepared.setString(4,degree);
						ResultSet rs = prepared.executeQuery();

						while (rs.next()) {
							DateofTeach day = new DateofTeach();
							User users =new User();
							TableTeaching table = new TableTeaching();
											 
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
							
							day.setSubjectDft(rs.getString("subject_dft"));
							day.setUserDft(rs.getString("user_dft"));
							
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
							day.setTableTeaching(tableteach);
							day.setUser(user);
							
							list.add(day);
						}

					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
					return list;
				}
}
