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
	
		User bean = new User();
		UserBean b =new UserBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		
		try {
			sql.append("SELECT * FROM tb_user WHERE user_id= ? AND user_pass = ? ");
			
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,userID);
			prepared.setString(2,userPass);
			/*prepared.setString(3, roleId);*/
//set
//get = รับ
			ResultSet rs = prepared.executeQuery();
	           while (rs.next()) {
			
				bean.setUserId(rs.getString("user_id"));
				bean.setUserPass(rs.getString("user_pass"));
				bean.setUserFname(rs.getString("user_name"));
				bean.setUserLname(rs.getString("user_lastname"));
				bean.setPositionTeach(rs.getString("position_teach"));
				bean.setFaculty(rs.getString("faculty"));
				
				a = bean.getUserId();
			
				/*System.out.println(a);*/
				
				
				
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
					"INSERT INTO tb_user (user_id,user_pass,user_name,user_lastname,position_teach,faculty,mojor,baseHour,baseKrm) VALUES(?,?,?,?,?,?,?,?,?)");
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
				
				user.setUserId(rs.getString("user_id"));
				user.setPrefixName(rs.getString("prefix_name"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				user.setPositionTeach(rs.getString("position_teach"));
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
			sql.append(" SELECT * FROM tb_user WHERE user_id = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
	
			prepared.setString(1,userId);
	
			ResultSet rs = prepared.executeQuery();
		
			while (rs.next()) {
				user.setUserId(rs.getString("user_id"));
				user.setUserFname(rs.getString("user_name"));
				user.setUserLname(rs.getString("user_lastname"));
				user.setPositionTeach(rs.getString("position_teach"));
				user.setFaculty(rs.getString("faculty"));
				user.setMojor(rs.getString("mojor"));
				user.setBaseHour(rs.getInt("baseHour"));
				user.setBaseKrm(rs.getInt("baseKrm"));
				list.add(user);
				/*System.out.println(Subject);*/
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	
	public  User findById(String id)  {
		User bean = new User();
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM tb_user WHERE user_id = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1, id);
			ResultSet rs = preperd.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getInt("id"));
				bean.setUserId(rs.getString("user_id"));
				bean.setPrefixName(rs.getString("prefix_name"));
				bean.setUserFname(rs.getString("user_name"));
				bean.setUserLname(rs.getString("user_lastname"));
				bean.setPositionTeach(rs.getString("position_teach"));
				bean.setFaculty(rs.getString("faculty"));
				bean.setMojor(rs.getString("mojor"));
				bean.setBaseHour(rs.getInt("baseHour"));
				bean.setBaseKrm(rs.getInt("baseKrm"));
				
				/*System.out.println(bean);*/
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
				sql.append("UPDATE tb_user SET prefix_name=? ,user_name =? , user_lastname =? WHERE user_id =?");
				prepared = con.openConnect().prepareStatement(sql.toString());
				prepared.setString(1, bean.getPrefixName());
				prepared.setString(2, bean.getUserFname());
				prepared.setString(3, bean.getUserLname());
				prepared.setString(4, bean.getUserId());
				prepared.executeUpdate();
				
		
			
			} catch (Exception e) {
				// TODO: handle exception
			}

		}// end method update
		// update
		
}
