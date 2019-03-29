package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.Term;
import com.cs.bru.util.ConnectDB;
@Repository
public class TermDAO {
	
	public Term findByID(String id) {
		Term bean = new Term();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_term WHERE term_id=?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean.setTermId(rs.getInt("term_id"));
				bean.setTermDateStart(rs.getString("term_start"));
				bean.setTermDateStop(rs.getString("term_stop"));
				bean.setTermDateYear(rs.getString("term_year"));
				bean.setTermTeachTerm(rs.getString("term_teachyear"));
				bean.setTermTeachYear(rs.getString("term_teachterm"));
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bean;
	}
	public Term findAll() {
		Term bean = new Term();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append("SELECT * FROM tb_term");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
			
				bean.setTermId(rs.getInt("term_id"));
				bean.setTermDateStart(rs.getString("term_start"));
				bean.setTermDateStop(rs.getString("term_stop"));
				bean.setTermDateYear(rs.getString("term_year"));
				bean.setTermTeachTerm(rs.getString("term_teachyear"));
				bean.setTermTeachYear(rs.getString("term_teachterm"));
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bean;
	}
	//insert
	public void insertTerm(Term bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					"INSERT INTO tb_term (term_start,term_stop,term_year,term_teachyear,term_teachterm) VALUES(?,?,?,?,?)");
			prepared = con.openConnect().prepareStatement(sql.toString());
			
			prepared.setString(1, bean.getTermDateStart());
			prepared.setString(2, bean.getTermDateStop());
			prepared.setString(3, bean.getTermDateYear());
			prepared.setString(4, bean.getTermDateStop());
			prepared.setString(5, bean.getTermDateYear());
			
			prepared.executeUpdate();
			/* System.out.println("sssssssss"); */
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	// update
				public void update(Term bean) {
					ConnectDB con = new ConnectDB();
					PreparedStatement prepared = null;
					StringBuilder sql = new StringBuilder();
					try {
						sql.append("UPDATE tb_term SET term_start =? , term_stop =?, term_year=?,term_teachyear=?,term_teachterm=? WHERE term_id=?");
						prepared = con.openConnect().prepareStatement(sql.toString());
						prepared.setString(1, bean.getTermDateStart());
						prepared.setString(2, bean.getTermDateStop());
						prepared.setString(3, bean.getTermDateYear());
						prepared.setString(4, bean.getTermTeachTerm());
						prepared.setString(5, bean.getTermTeachYear());
						 prepared.setInt(6, bean.getTermId());
						
						prepared.executeUpdate();
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}

				}// end method update
			// delete
				public void deleteTerm(String id) {
					ConnectDB con = new ConnectDB();
					PreparedStatement prepared = null;
					StringBuilder sql = new StringBuilder();
					try {
						sql.append("DELETE FROM tb_term WHERE term_teachyear = ?");
						prepared = con.openConnect().prepareStatement(sql.toString());
						prepared.setString(1, id);
						prepared.executeUpdate();
					} catch (Exception e) {
						// TODO: handle exception
						
					}
				} // end method delete
}
