package com.acc.common;

import java.util.List;

import org.hibernate.SessionFactory;

import com.acc.model.Incident_Details;

public interface ConnectRelationalDB {
	public SessionFactory getSessionFactory() ;
	public boolean checkDbConnection() ;
	public List<Incident_Details> executeMySqlQuery(String sSQLinput);

}
