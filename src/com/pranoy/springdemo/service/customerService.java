package com.pranoy.springdemo.service;

import java.util.List;

import com.pranoy.springdemo.entity.Customer;

public interface customerService {
	public List<Customer> getCustomerList();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);
}
