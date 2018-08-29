package com.acc.common.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;

import com.acc.model.Incident_Details;
import com.acc.common.ConnectRelationalDB;

public class ConnectMySQL implements ConnectRelationalDB {

	public ConnectMySQL() {
		buildDBObject();
	}

	private static SessionFactory sessionFactory;

	private static void buildDBObject() {
		Configuration configuration = new Configuration();
		System.out.println("configuration" + configuration);
		configuration.configure("hbm.cfg.xml");
		System.out.println("configuration-->" + configuration);
		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties())
				.buildServiceRegistry();
		System.out.println("serviceRegistry" + serviceRegistry);
		sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	}

	@Override
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public boolean checkDbConnection() {
		Boolean bDBconnection = false;

		StringBuilder queryBuffer = new StringBuilder();
		queryBuffer.append("show status like 'Conn%' as \"connectionval\"");
		System.out.println(queryBuffer.toString());

		System.out.println("sF" + sessionFactory);
		Session session = sessionFactory.openSession();
		Query qr = session.createSQLQuery(queryBuffer.toString()).addScalar("connectionval", StandardBasicTypes.STRING);

		if (qr.list().size() > 0)
			bDBconnection = true;

		return bDBconnection;
	}

	@Override
	public List<Incident_Details> executeMySqlQuery(String sSQLinput) {
		System.out.println("passed string:" + sSQLinput);

		Session session = sessionFactory.openSession();
		// StringBuilder queryBuffer = new StringBuilder(sSQLinput);

		Query qr = session
				.createSQLQuery(
						"SELECT incident_details_id  as incidentDetailsId,incident_desc as incidentDesc,impacted_app from aicop.incident_details ORDER BY impacted_app")
				.setResultTransformer(new AliasToBeanResultTransformer(Incident_Details.class));

		List<Incident_Details> ltest = qr.list();
		return ltest;

	}
}
