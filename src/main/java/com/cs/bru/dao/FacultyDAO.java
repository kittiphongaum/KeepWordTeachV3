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
public class FacultyDAO {
	//insert
	public void insert(Faculty bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_faculty (faculty_id,faculty_name,person_faculty,majorsid_row) VALUES(?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getFacultyId());
			prepared.setString(2, bean.getFacultyName());
			prepared.setString(3, bean.getPersonFaculty());
			prepared.setInt(4, bean.getMajorsidRowID());
			
			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<Faculty> findAll() {
		List<Faculty> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_faculty");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				Faculty faculty = new Faculty();
				
				faculty.setFacultyId(rs.getString("faculty_id"));
				faculty.setFacultyName(rs.getString("faculty_name"));
				faculty.setPersonFaculty(rs.getString("person_faculty"));
				faculty.setMajorsidRowID(rs.getInt("majorsid_row"));
				list.add(faculty);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public List<Faculty> listfind(String userId) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
	
		List<Faculty> list = new ArrayList<>();

		try {
			sql.append(" SELECT tb_faculty.*,tb_majors.* FROM tb_faculty INNER JOIN tb_majors ON tb_faculty.majorsid_row=tb_majors.row_facltykf WHERE faculty_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
	
			prepared.setString(1,userId);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				Majors majors = new Majors();
				Faculty faculty = new Faculty();
				
				faculty.setFacultyId(rs.getString("faculty_id"));
				faculty.setFacultyName(rs.getString("faculty_name"));
				faculty.setPersonFaculty(rs.getString("person_faculty"));
				faculty.setMajorsidRowID(rs.getInt("majorsid_row"));
				
				majors.setMajorsId(rs.getString("majors_id"));
				majors.setMajorsName(rs.getString("majors_name"));
				majors.setPersonMajors(rs.getString("person_majors"));
				majors.setRowFacltyFK(rs.getInt("row_facltykf"));
				faculty.setMajors(majors);
				/*System.out.println(Subject);*/
				list.add(faculty);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	public Faculty findOne(String userId) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Faculty faculty = new Faculty();
		List<User> list = new ArrayList<User>();

		try {
			sql.append(" SELECT * FROM tb_faculty WHERE faculty_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
	
			prepared.setString(1,userId);
	
			ResultSet rs = prepared.executeQuery();
		
			while (rs.next()) {
				
				faculty.setFacultyId(rs.getString("faculty_id"));
				faculty.setFacultyName(rs.getString("faculty_name"));
				faculty.setPersonFaculty(rs.getString("person_faculty"));
				faculty.setMajorsidRowID(rs.getInt("majorsid_row"));
				/*System.out.println(Subject);*/
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return faculty;
	}
	// update
			public void update(Faculty bean) {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append("UPDATE tb_faculty SET faculty_name =? , person_faculty =?, majorsid_row WHERE faculty_id =?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					
					prepared.setString(1, bean.getFacultyName());
					prepared.setString(2, bean.getPersonFaculty());
					prepared.setInt(3, bean.getMajorsidRowID());
					prepared.setString(4, bean.getFacultyId());
					prepared.executeUpdate();
					
			
				
				} catch (Exception e) {
					// TODO: handle exception
				}

			}// end method update
			// delete
			public void delete(String id) {
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				try {
					sql.append("DELETE FROM tb_faculty WHERE faculty_id = ?");
					prepared = con.openConnect().prepareStatement(sql.toString());
					prepared.setString(1, id);
					prepared.executeUpdate();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			} // end method delete			

}
