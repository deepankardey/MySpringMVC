package com.imcs.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.imcs.spring.entity.Customers;

@Controller
public class WelcomeController {

	@GetMapping("/")	
	public String getLoginPage() {
		return "Login";
	}
	
	@GetMapping("/home")
	public String showHomePage() {
		return "Home";
	}
	
	@PostMapping("/login")
	public String validateCredentials() {
		return "Home";
	}
	
	@GetMapping("/showCustomers")
	public String showCustomerPage(Model model) {
		model.addAttribute("customers", new Customers());
		return "ShowCustomer";
	}
	
	@GetMapping("/addCustomers")
	public String addCustomerPage(Model model) {
		model.addAttribute("customers", new Customers());
		return "AddCustomer";
	}
	
	@GetMapping("/showOrders")
	public String showOrdersPage() {
		return "ShowOrders";
	}
	
	@GetMapping("/placeOrders")
	public String placeOrdersPage() {
		return "PlaceOrder";
	}
}
