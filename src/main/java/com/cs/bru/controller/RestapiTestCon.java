package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.UserDAO;
import com.cs.bru.model.Address;
import com.cs.bru.model.Customer;
import com.cs.bru.model.User;

@RestController
@RequestMapping("/api/customer")
public class RestapiTestCon {

	@Autowired
	UserDAO userDAO;
	
Map<Long, User> custStores = new HashMap<Long, User>();
	
	@PostConstruct
    public void initIt() throws Exception {
      /*  custStores.put(Long.valueOf(1), new Customer(new Long(1), "Jack", 25, new Address("NANTERRE-CT", "77471")));
        custStores.put(Long.valueOf(2), new Customer(new Long(2), "Mary", 37, new Address("W-NORMA-ST", "77009")));
        custStores.put(Long.valueOf(3), new Customer(new Long(3), "Peter", 18, new Address("S-NUGENT-AVE", "77571")));
        custStores.put(Long.valueOf(4), new Customer(new Long(4), "Amos", 23, new Address("E-NAVAHO-TRL", "77449")));
        custStores.put(Long.valueOf(5), new Customer(new Long(5), "Craig", 45, new Address("AVE-N", "77587")));*/
    }
	 
	@GetMapping(value = "/all")
	public List<User> getResource() {
		
		List<User> custList = new ArrayList<>();
		        
		       
				custList=userDAO.findAll();
		return custList;
	}
 
	@PutMapping(value = "/update/{id}")
	public User postCustomer(@PathVariable String id, @RequestBody User customer) {
		userDAO.findById(id);
		try {
			userDAO.update(customer);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return customer;
	}
}
