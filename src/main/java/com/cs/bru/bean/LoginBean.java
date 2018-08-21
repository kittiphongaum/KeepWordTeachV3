package com.cs.bru.bean;

import com.cs.bru.model.Admin;
import com.cs.bru.model.User;

public class LoginBean {
	  private User userBean;
	  private Admin adminBean;
	public User getUserBean() {
		return userBean;
	}
	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}
	public Admin getAdminBean() {
		return adminBean;
	}
	public void setAdminBean(Admin adminBean) {
		this.adminBean = adminBean;
	}
	

}
