package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.bean.UserBean;
import com.cs.bru.model.User;
import com.cs.bru.util.ConnectDB;



@Repository
public class UserDAO  {
	
	String a;
	public UserBean userBean() {
		// เก็บ ID USER และแปลงเพื่อใช้งาน เป็น String
		
			UserBean bean = new UserBean();
			bean.setUserbean(a);
			return bean;
		}
	
	
	public User login(String userID ,String userPass) {
		ArrayList<User> u = new ArrayList<>();
		User bean = new User();
		UserBean b =new UserBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		
		try {
			sql.append("SELECT * FROM tb_user WHERE userID = ? AND userPass = ? ");
			
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,userID);
			prepared.setString(2,userPass);
			/*prepared.setString(3, roleId);*/
//set
//get = รับ
			ResultSet rs = prepared.executeQuery();
	while (rs.next()) {
			
				bean.setUserId(rs.getString("userId"));
				bean.setUserPass(rs.getString("userPass"));
				bean.setUserFname(rs.getString("userFname"));
				bean.setUserLname(rs.getString("userLname"));
				bean.setPositionTeach(rs.getString("positionTeach"));
				bean.setFaculty(rs.getString("faculty"));
				
				a = bean.getUserId();
			
				System.out.println(a);
				
				
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return bean;
	}
	
	public void insertUser(User bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_user (userID,userPass,userFname,userLname,positionTeach,faculty,mojor,baseHour,baseKrm) VALUES(?,?,?,?,?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getUserId());
			prepared.setString(2, bean.getUserPass());
			prepared.setString(3, bean.getUserFname());
			prepared.setString(4, bean.getUserLname());
			prepared.setString(5, bean.getPositionTeach());
			prepared.setString(6, bean.getFaculty());
			prepared.setString(7, bean.getMojor());
			prepared.setInt(8, bean.getBaseHour());
			prepared.setInt(9, bean.getBaseKrm());
			

			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public List<User> findAll() {
		List<User> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_user");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				User user = new User();
				
				user.setUserId(rs.getString("userId"));
				user.setUserFname(rs.getString("userFname"));
				user.setUserLname(rs.getString("userLname"));
				user.setPositionTeach(rs.getString("positionTeach"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setBaseHour(rs.getInt("baseHour"));
				user.setBaseKrm(rs.getInt("baseKrm"));
				
				
				list.add(user);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	public List<User> findOne(String userId) {

		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		User user = new User();
		List<User> list = new ArrayList<User>();

		try {
			sql.append(" SELECT * FROM tb_user WHERE userID = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
	
			prepared.setString(1,userId);
	
			ResultSet rs = prepared.executeQuery();
		
			while (rs.next()) {
				user.setUserId(rs.getString("userId"));
				user.setUserFname(rs.getString("userFname"));
				user.setUserLname(rs.getString("userLname"));
				user.setPositionTeach(rs.getString("positionTeach"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setBaseHour(rs.getInt("baseHour"));
				user.setBaseKrm(rs.getInt("baseKrm"));
				list.add(user);
				/*System.out.println(Subject);*/
			}
			System.out.println(list);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	
	public User findById(String id)  {
		User bean = new User();
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM tb_user WHERE userID = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1, id);
			ResultSet rs = preperd.executeQuery();
			while (rs.next()) {
				bean.setUserId(rs.getString("userId"));
				bean.setUserFname(rs.getString("userFname"));
				bean.setUserLname(rs.getString("userLname"));
				bean.setPositionTeach(rs.getString("positionTeach"));
				bean.setFaculty(rs.getString("faculty"));
				bean.setMojor(rs.getString("mojor"));
				bean.setBaseHour(rs.getInt("baseHour"));
				bean.setBaseKrm(rs.getInt("baseKrm"));
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if (con != null) {
			
			}
		}

		return bean;
	}
	// update
		public void update(User bean) {
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			try {
				sql.append(" UPDATE tb_user SET  userFname = ? , userLname = ?,faculty = ?, mojor=? WHERE userID = ? ");
				prepared = con.openConnect().prepareStatement(sql.toString());
				prepared.setString(1, bean.getUserFname());
				prepared.setString(2, bean.getUserLname());
				prepared.setString(3, bean.getFaculty());
				prepared.setString(4, bean.getMojor());
				prepared.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}

		}// end method update
		
}
