package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.DegreeStuden;
import com.cs.bru.model.TableTeaching;
import com.cs.bru.model.TechingRepost;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;
@Repository
public class TechingRepostDAO {
	
	public List<TechingRepost> findAll() {
		List<TechingRepost> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_teach_report");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				TechingRepost techingRepost = new TechingRepost();
				
				techingRepost.setTeachReportId(rs.getString("teach_report_id"));
				techingRepost.setResumPst(rs.getInt("resum_pst"));
				techingRepost.setResumTsd(rs.getInt("resum_tsd"));
				techingRepost.setRepostSum(rs.getInt("repost_sum"));
				techingRepost.setUserepRortFK(rs.getString("user_report_fk"));
				techingRepost.setDateteachFK(rs.getString("dateteach_fk"));
				techingRepost.setTeachingFk(rs.getString("teaching_fk"));

				
				
				list.add(techingRepost);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public TechingRepost findOne(String userId) {

		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		//List<TechingRepost> list =new ArrayList<>();
		  TechingRepost techingRepost = new TechingRepost();

		try {
			sql.append(" SELECT * FROM tb_teach_report WHERE user_report_fk = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
	
			prepared.setString(1,userId);
	
			ResultSet rs = prepared.executeQuery();
		
			while (rs.next()) {
             
				
				techingRepost.setTeachReportId(rs.getString("teach_report_id"));
				techingRepost.setResumPst(rs.getInt("resum_pst"));
				techingRepost.setResumTsd(rs.getInt("resum_tsd"));
				techingRepost.setRepostSum(rs.getInt("repost_sum"));
				techingRepost.setUserepRortFK(rs.getString("user_report_fk"));
				techingRepost.setDateteachFK(rs.getString("dateteach_fk"));
				techingRepost.setTeachingFk(rs.getString("teaching_fk"));

				
				
				//list.add(techingRepost);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return techingRepost;
	}
	//listId
	public List<TechingRepost> findlistId(String userId) {

		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		List<TechingRepost> list =new ArrayList<>();
		  

		try {
			sql.append(" SELECT * FROM tb_teach_report WHERE user_report_fk = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
	
			prepared.setString(1,userId);
	
			ResultSet rs = prepared.executeQuery();
		
			while (rs.next()) {
				TechingRepost techingRepost = new TechingRepost();
				
				techingRepost.setTeachReportId(rs.getString("teach_report_id"));
				techingRepost.setResumPst(rs.getInt("resum_pst"));
				techingRepost.setResumTsd(rs.getInt("resum_tsd"));
				techingRepost.setRepostSum(rs.getInt("repost_sum"));
				techingRepost.setUserepRortFK(rs.getString("user_report_fk"));
				techingRepost.setDateteachFK(rs.getString("dateteach_fk"));
				techingRepost.setTeachingFk(rs.getString("teaching_fk"));
				techingRepost.setReportThaibaht(rs.getString("report_thaibaht"));
				techingRepost.setStatusRepost(rs.getInt("status_repost"));
				techingRepost.setRepostMoney(rs.getInt("repost_money"));
				
				list.add(techingRepost);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	// update
			public void update(TechingRepost bean) {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append("UPDATE tb_teach_report SET resum_pst =? , resum_tsd =?,repost_sum=?,user_report_fk=?,dateteach_fk=?,teaching_fk=? WHERE teach_report_id=?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setString(1, bean.getTeachReportId());
					prepared.setInt(2, bean.getResumPst());
					prepared.setInt(3, bean.getResumTsd());
					prepared.setInt(4, bean.getRepostSum());
					prepared.setString(5, bean.getUserepRortFK());
					prepared.setString(6, bean.getDateteachFK());
					prepared.setString(7, bean.getTeachingFk());
					prepared.executeUpdate();
					
			
				
				} catch (Exception e) {
					// TODO: handle exception
				}

			}// end method update
		//insert
			public void insertTechingRepost(TechingRepost bean) throws Exception {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append(
							"INSERT INTO tb_teach_report (teach_report_id,resum_pst,resum_tsd,repost_sum,user_report_fk,dateteach_fk,teaching_fk) VALUES(?,?,?,?,?,?,?)");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setString(1, bean.getTeachReportId());
					prepared.setInt(2, bean.getResumPst());
					prepared.setInt(3, bean.getResumTsd());
					prepared.setInt(4, bean.getRepostSum());
					prepared.setString(5, bean.getUserepRortFK());
					prepared.setString(6, bean.getDateteachFK());
					prepared.setString(7, bean.getTeachingFk());
					

					prepared.executeUpdate();
					/* System.out.println("sssssssss"); */
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
			//insert
			public void insertTechingRepostSalary(TechingRepost bean) throws Exception {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append(
							"INSERT INTO tb_teach_report (teach_report_id,resum_pst,resum_tsd,repost_sum,user_report_fk,dateteach_fk,teaching_fk,report_thaibaht,status_repost,repost_money) VALUES(?,?,?,?,?,?,?,?,?,?)");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setString(1, bean.getTeachReportId());
					prepared.setInt(2, bean.getResumPst());
					prepared.setInt(3, bean.getResumTsd());
					prepared.setInt(4, bean.getRepostSum());
					prepared.setString(5, bean.getUserepRortFK());
					prepared.setString(6, bean.getDateteachFK());
					prepared.setString(7, bean.getTeachingFk());
					prepared.setString(8, bean.getReportThaibaht());
					prepared.setInt(9, bean.getStatusRepost());
					prepared.setInt(10, bean.getRepostMoney());
					prepared.executeUpdate();
					/* System.out.println("sssssssss"); */
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
			//listId
			public TechingRepost findBean(String userId) {

				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				List<TechingRepost> list =new ArrayList<>();
				TechingRepost techingRepost = new TechingRepost();

				try {
					sql.append(" SELECT * FROM tb_teach_report WHERE teaching_fk = ?");
					prepared = con.openConnect().prepareStatement(sql.toString());
			
					prepared.setString(1,userId);
			
					ResultSet rs = prepared.executeQuery();
				
					while (rs.next()) {
						
						
						techingRepost.setTeachReportId(rs.getString("teach_report_id"));
						techingRepost.setResumPst(rs.getInt("resum_pst"));
						techingRepost.setResumTsd(rs.getInt("resum_tsd"));
						techingRepost.setRepostSum(rs.getInt("repost_sum"));
						techingRepost.setUserepRortFK(rs.getString("user_report_fk"));
						techingRepost.setDateteachFK(rs.getString("dateteach_fk"));
						techingRepost.setTeachingFk(rs.getString("teaching_fk"));
						techingRepost.setReportThaibaht(rs.getString("report_thaibaht"));
						techingRepost.setStatusRepost(rs.getInt("status_repost"));
						
						
						
					}
					
					
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}

				return techingRepost;
			}
			//listId
			public List<TechingRepost> historyfindRepost(String userId) {

				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				List<TechingRepost> list =new ArrayList<>();
				  

				try {
					sql.append("SELECT tb_teach_report.*,tb_teaching.*,tb_user.*,tb_table_teaching.*,tb_degree.* "
							+ "FROM tb_teach_report INNER JOIN tb_teaching on tb_teach_report.teaching_fk = tb_teaching.teach_id INNER JOIN tb_table_teaching on tb_teaching.tableteach_fk = tb_table_teaching.teble_teach_id INNER JOIN tb_user on tb_teaching.user_fk=tb_user.user_id INNER JOIN tb_degree on tb_table_teaching.degree_studen=tb_degree.id_degree "
							+ "WHERE user_report_fk =?");
					prepared = con.openConnect().prepareStatement(sql.toString());
			
					prepared.setString(1,userId);
			
					ResultSet rs = prepared.executeQuery();
				
					while (rs.next()) {
						TechingRepost techingRepost = new TechingRepost();
						TableTeaching  tableTeaching =new TableTeaching();
						User user =new User();
						DegreeStuden degree =new DegreeStuden();
						techingRepost.setTeachReportId(rs.getString("teach_report_id"));
						techingRepost.setResumPst(rs.getInt("resum_pst"));
						techingRepost.setResumTsd(rs.getInt("resum_tsd"));
						techingRepost.setRepostSum(rs.getInt("repost_sum"));
						techingRepost.setUserepRortFK(rs.getString("user_report_fk"));
						techingRepost.setDateteachFK(rs.getString("dateteach_fk"));
						techingRepost.setTeachingFk(rs.getString("teaching_fk"));
						techingRepost.setReportThaibaht(rs.getString("report_thaibaht"));
						techingRepost.setStatusRepost(rs.getInt("status_repost"));
						techingRepost.setRepostMoney(rs.getInt("repost_money"));
						
						tableTeaching.setTebleTeachId(rs.getString("teble_teach_id"));
						tableTeaching.setDegreeStuden(rs.getString("degree_studen"));
						tableTeaching.setTeachTerm(rs.getString("teach_term"));
						tableTeaching.setTermYear(rs.getString("term_year"));
						tableTeaching.setTeachWeek(rs.getString("teach_week"));
						tableTeaching.setStudenNumber(rs.getInt("studen_number"));
						tableTeaching.setStartMonth(rs.getString("start_month"));
						tableTeaching.setStopMonth(rs.getString("stop_month"));
						tableTeaching.setTeachYear(rs.getString("teach_year"));
						tableTeaching.setStartMonthString(rs.getString("start_month_string"));
						tableTeaching.setStopMonthString(rs.getString("stop_month_string"));
						
						user.setUserId(rs.getString("user_id"));
						user.setUserFname(rs.getString("user_name"));
						user.setUserLname(rs.getString("user_lastname"));
						user.setPrefixName(rs.getString("prefix_name"));
						user.setPositionTeach(rs.getString("position_teach"));
						user.setFaculty(rs.getString("faculty"));
						user.setMojor(rs.getString("mojor"));
						user.setUserbaseHour(rs.getInt("baseHour"));
						user.setUserbaseKrm(rs.getInt("baseKrm"));
						
						degree.setIdDegree(rs.getInt("id_degree"));
						degree.setNameDegree(rs.getString("name_degree"));
						
						techingRepost.setTableTeaching(tableTeaching);
						techingRepost.setUser(user);
						techingRepost.setDegreeStuden(degree);
						list.add(techingRepost);
					}
					
					
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}

				return list;
			}
}
