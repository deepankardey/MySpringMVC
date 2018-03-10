package com.imcs.spring.dao;

import java.util.List;

import com.imcs.spring.entity.Customers;

public interface CustomerDaoInterface {
	public boolean addCustomer(Customers customer);
	public Customers loadCustomer(int id);
	public boolean updateCustomer(Customers customer);
	public boolean deleteCustomer(int id);
	public List<Customers> loadAllCustomers();
	public Customers validateCustomer(String usrename,String password);
}
