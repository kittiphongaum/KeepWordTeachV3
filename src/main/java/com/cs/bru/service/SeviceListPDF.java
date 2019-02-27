package com.cs.bru.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


import com.cs.bru.model.Car;

public interface SeviceListPDF extends CrudRepository<Car, Long>{
		List<Car> findByBrand(@Param("brand") String brand);

	    List<Car> findByModel(@Param("model") String model);

	    List<Car> findByFuel(@Param("fuel") String fuel);

	    List<Car> findByColor(@Param("color") String color);

	    List<Car> findByYear(@Param("year") int year);

}
