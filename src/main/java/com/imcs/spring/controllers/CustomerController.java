package com.imcs.spring.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.imcs.spring.dao.CustomerDao;
import com.imcs.spring.entity.Customers;

@Controller
public class CustomerController {
	@Autowired
	CustomerDao customerDao;
	
	@PostMapping("/addCustomer")
	public String addCustomer(@ModelAttribute(value="customers") @Valid Customers customer, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			System.out.println(bindingResult.getNestedPath());
			return "AddCustomer";
		} else {
			model.addAttribute("customer", new Customers());
			customerDao.addCustomer(customer);
			model.addAttribute("message", "Customer added Successfully");
			return "Success";
		}
	}
	
	@GetMapping("/getCustomer")
	public String getCustomers(@ModelAttribute(value="customers") @Valid Customers customer,Model model) {
		List<Customers> list = null;
		if(customer.getId()!=null) {
			list = new ArrayList<Customers>();
			customer = customerDao.loadCustomer(customer.getId());
			list.add(customer);
		}
		else
			list = customerDao.loadAllCustomers();
		model.addAttribute("customerList", list);
		return "ShowCustomer";
	}
	
	@GetMapping(value = "/updateCustomer/{id}")
	public String updateCustomers(@PathVariable("id") int id,Model model) {
		Customers customer = customerDao.loadCustomer(id);
		List<Customers> list = new ArrayList<Customers>();
		list.add(customer);
		model.addAttribute("customerList", list);
		return "UpdateCustomer";
	}
}
