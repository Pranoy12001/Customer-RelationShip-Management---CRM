package com.pranoy.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pranoy.springdemo.dao.CustomerDAO;
import com.pranoy.springdemo.entity.Customer;

@Service
public class CustomerServiceImpl implements customerService {
	//need to inject customer dao
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomerList() {
		return customerDAO.getCustomers();
	}

}
