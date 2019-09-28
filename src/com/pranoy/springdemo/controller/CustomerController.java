package com.pranoy.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pranoy.springdemo.dao.CustomerDAO;
import com.pranoy.springdemo.entity.Customer;
import com.pranoy.springdemo.service.customerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject the customer service
	@Autowired
	private customerService customerService;

	@GetMapping("/list")
	public String listcustomers(Model model) {

		// get the customers from the service
		List<Customer> customers = customerService.getCustomerList();

		// add the customers to the model
		model.addAttribute("customers", customers);

		return "list-customer";
	}
}
