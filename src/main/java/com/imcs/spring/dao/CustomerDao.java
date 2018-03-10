package com.imcs.spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.imcs.spring.entity.Customers;

@Repository
public class CustomerDao implements CustomerDaoInterface {
	@Autowired
	Session session;
	
	public boolean addCustomer(Customers customer){
		boolean added = false;
		Transaction transaction = session.beginTransaction();
		try {
			session.save(customer);
			transaction.commit();
			added = true;
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}finally {
			/*if(session!=null)
				session.close();*/
		}
		return added;
	}

	public Customers loadCustomer(int id){
		Customers customer = null;
		try {
			customer = (Customers)session.get(Customers.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			/*if(session!=null)
				session.close();*/
		}
		return customer;
	}

	public boolean updateCustomer(Customers customer){
		boolean updated = false;
		Transaction transaction = session.beginTransaction();
		try {
			session.update(customer);
			transaction.commit();
			updated = true;
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}finally {
			/*if(session!=null)
				session.close();*/
		}
		return updated;
	}

	public boolean deleteCustomer(int id){
		boolean deleted = false;
		Transaction transaction = session.beginTransaction();
		try {
			Customers customer = (Customers)session.get(Customers.class, id);
			session.delete(customer);
			transaction.commit();
			deleted = true;
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}finally {
			/*if(session!=null)
				session.close();*/
		}
		return deleted;
	}
	

	public List<Customers> loadAllCustomers(){
		Query query = null;
		try {
			query = session.createQuery("FROM Customers");
			query.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
			return query.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			/*if(session!=null)
				session.close();*/
		}
		return query.list();
	}

	public Customers validateCustomer(String username,String password){
		Query query = null;
		try {
			query = session.createQuery("From Customers as customer where customer.firstName =:firstName "
					+ "and customer.lastName =:lastName");
			query.setParameter("firstName", username);
			query.setParameter("lastName", password);
			return (Customers)query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			/*if(session!=null)
				session.close();*/
		}
		return (Customers)query.uniqueResult();
		
	}
}
