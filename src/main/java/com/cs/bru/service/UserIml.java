package com.cs.bru.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cs.bru.model.Car;
import com.cs.bru.model.User;

public interface UserIml extends CrudRepository<Car,Long>{
	
}

