package com.imcs.spring;

import org.hibernate.Session;
import org.hibernate.jpa.HibernateEntityManagerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Component
@Configuration
public class HibernateConfig {
	@Bean
	public Session sessionFactory(HibernateEntityManagerFactory hemf) {
		return hemf.getSessionFactory().openSession();
	}
}
