package com.acc.dao.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.UserBean;
import com.acc.dao.LoginDao;


@Repository
@Transactional
public class LoginDaoImpl implements LoginDao {

	private static SessionFactory sessionFactory ;
	 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
@SuppressWarnings("unchecked")
@Override
public List<UserBean> getUserForUserId(UserBean userBean) {

	    try {
	        
	        Configuration configuration = new Configuration();
	        System.out.println("configuration"+configuration);
		    configuration.configure("hbm.cfg.xml");
		    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
		    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		       
		}
		catch (Throwable ex) {
		    throw new ExceptionInInitializerError(ex);
		}
			
	    
	    	StringBuilder queryBuffer = new StringBuilder();
			queryBuffer.append("SELECT user_id as \"userId\",");
			queryBuffer.append(" password as \"password\"");
			queryBuffer.append(" FROM USER_INFO");
			queryBuffer.append(" WHERE user_id=:userId");

			Session session = sessionFactory.openSession();
		
			Query qr = session.createSQLQuery(queryBuffer.toString())
					.addScalar("userId",StandardBasicTypes.STRING)
					.addScalar("password",StandardBasicTypes.STRING)
					.setResultTransformer(new AliasToBeanResultTransformer(UserBean.class)).
					setParameter("userId", userBean.getUserId());
			List<UserBean> resultList = qr.list();
			session.close();		
			return resultList;
	}
}
