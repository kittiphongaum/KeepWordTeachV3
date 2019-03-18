package com.cs.bru.dao;

import java.sql.PreparedStatement;

import com.cs.bru.model.TechingRepost;
import com.cs.bru.model.Term;
import com.cs.bru.util.ConnectDB;

public class TermDAO {
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
						sql.append("UPDATE tb_term SET term_start =? , term_stop =? term_year=? term_teachterm=? WHERE term_teachyear=?");
						prepared = con.openConnect().prepareStatement(sql.toString());
						prepared.setString(1, bean.getTermDateStart());
						prepared.setString(2, bean.getTermDateStop());
						prepared.setString(3, bean.getTermDateYear());
						prepared.setString(4, bean.getTermTeachTerm());
						prepared.setString(5, bean.getTermTeachYear());
					
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
