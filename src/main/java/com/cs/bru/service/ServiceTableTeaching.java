package com.cs.bru.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.bru.dao.TableTeachingDAO;
import com.cs.bru.model.TableTeaching;


@Service
public class ServiceTableTeaching {
	@Autowired
	TableTeachingDAO tableTeachingDAO;

		public List<TableTeaching> getById(String id) {
		
		return tableTeachingDAO.findById(id);		
	}
}
