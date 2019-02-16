package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.TechingRepost;
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
}
