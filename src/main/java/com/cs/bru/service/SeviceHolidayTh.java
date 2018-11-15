package com.cs.bru.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.bru.dao.HolidayDAO;
import com.cs.bru.model.HolidayTh;

@Service
public class SeviceHolidayTh {
	@Autowired
	HolidayDAO holidayDAO;

}
