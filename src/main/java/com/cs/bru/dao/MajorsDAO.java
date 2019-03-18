package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.Faculty;
import com.cs.bru.model.Majors;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;

@Repository
public class MajorsDAO {
	//insert
	public void insert(Majors bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_majors (majors_id,majors_name,person_majors,row_facltykf,row_degree) VALUES(?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getMajorsId());
			prepared.setString(2, bean.getMajorsName());
			prepared.setString(3, bean.getPersonMajors());
			prepared.setInt(4, bean.getRowFacltyFK());
			
			
			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<Majors> findAll() {
		List<Majors> list = new ArrayList<Majors>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_majors");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Majors majors = new Majors();
				
				majors.setMajorsId(rs.getString("majors_id"));
				majors.setMajorsName(rs.getString("majors_name"));
				majors.setPersonMajors(rs.getString("person_majors"));
				majors.setRowFacltyFK(rs.getInt("row_facltykf"));
				
				list.add(majors);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public Majors findOne(String userId,Integer fuid) {

		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Majors majors = new Majors();

		try {
			sql.append(" SELECT tb_majors.*,tb_faculty.* FROM tb_majors INNER JOIN tb_faculty ON tb_majors.row_facltykf=tb_faculty.majorsid_row WHERE majors_id = ? AND row_facltykf=?");
			prepared = con.openConnect().prepareStatement(sql.toString());
	
			prepared.setString(1,userId);
			prepared.setInt(2,fuid);
			ResultSet rs = prepared.executeQuery();
		
			while (rs.next()) {
				
				majors.setMajorsId(rs.getString("majors_id"));
				majors.setMajorsName(rs.getString("majors_name"));
				majors.setPersonMajors(rs.getString("person_majors"));
				majors.setRowFacltyFK(rs.getInt("row_facltykf"));
				
				Faculty faculty = new Faculty();
				
				faculty.setFacultyId(rs.getString("faculty_id"));
				faculty.setFacultyName(rs.getString("faculty_name"));
				faculty.setPersonFaculty(rs.getString("person_faculty"));
				faculty.setMajorsidRowID(rs.getInt("majorsid_row"));
				/*System.out.println(Subject);*/
				majors.setFaculty(faculty);
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return majors;
	}
	// update
			public void update(Majors bean) {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append("UPDATE tb_majors SET person_majors =? WHERE majors_id =?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					
					prepared.setString(1, bean.getPersonMajors());
					prepared.setString(2, bean.getMajorsId());
					
					prepared.executeUpdate();
					
			
				
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}

			}// end method update
			// delete
			public void delete(String upMajors) {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append("DELETE FROM tb_majors WHERE majors_id = ?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setString(1, upMajors);
					prepared.executeUpdate();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			} // end method delete	
			
}
