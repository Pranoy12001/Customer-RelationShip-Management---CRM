package com.pranoy.springdemo.dao;

import java.util.List;

import com.pranoy.springdemo.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
}
