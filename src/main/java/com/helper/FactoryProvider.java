package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.*;

public class FactoryProvider {
	
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if(factory == null) {
			try{
			    factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			} catch (Exception e) {
			    e.printStackTrace();
		}
		return factory;
	}
	
	public void closeFactory() {
		if(factory.isOpen()) {
			factory.close();
		}
	}
}
