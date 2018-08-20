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

	/*@Autowired
	HibernateTemplate template;  
	
	public void setTemplate(HibernateTemplate template) {  
	    this.template = template;  
	}  */

	
	private static SessionFactory sessionFactory ;
	 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
/*	 private static SessionFactory buildSessionFactory()
	   {
	      try
	      {
	         if (sessionFactory == null)
	         {
	            Configuration configuration = new Configuration().configure(HibernateUtil.class.getResource("/hibernate.cfg.xml"));
	            StandardServiceRegistryBuilder serviceRegistryBuilder = new StandardServiceRegistryBuilder();
	            serviceRegistryBuilder.applySettings(configuration.getProperties());
	            ServiceRegistry serviceRegistry = serviceRegistryBuilder.build();
	            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	         }
	         return sessionFactory;
	      } catch (Throwable ex)
	      {
	         System.err.println("Initial SessionFactory creation failed." + ex);
	         throw new ExceptionInInitializerError(ex);
	      }
	   }*/


	
/*
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}*/





	
	@Override
	public List<UserBean> getUserForUserId(UserBean userBean) {

	    try {
	        
	        Configuration configuration = new Configuration();
	        System.out.println("configuration"+configuration);
	    configuration.configure("hbm.cfg.xml");
	    System.out.println("configuration-->"+configuration);
	    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	    
	    System.out.println("serviceRegistry"+serviceRegistry);
	     sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	    
	       // return sessionFactory;
	}
	catch (Throwable ex) {
	   //logger.error("Initial SessionFactory creation failed." + ex);
	    throw new ExceptionInInitializerError(ex);
	}
		StringBuilder queryBuffer = new StringBuilder();
			queryBuffer.append("SELECT user_id as \"userId\",");
			queryBuffer.append(" password as \"password\"");
			queryBuffer.append(" FROM USER_INFO");
			queryBuffer.append(" WHERE user_id=:userId");
			System.out.println(queryBuffer.toString());
			//sessionFactory = new Configuration().configure().buildSessionFactory();
System.out.println("sF"+sessionFactory);
			Session session = sessionFactory.openSession();
		/*	UserInfo userInfo = (UserInfo) session.get(UserInfo.class,userBean.getUserId());*/
			Query qr = session.createSQLQuery(queryBuffer.toString())
					.addScalar("userId",StandardBasicTypes.STRING)
					.addScalar("password",StandardBasicTypes.STRING)
					.setResultTransformer(new AliasToBeanResultTransformer(UserBean.class)).
					setParameter("userId", userBean.getUserId());
			List<UserBean> resultList = qr.list();
			System.out.println(resultList.size());
		//	System.out.println("result : "+userInfo.getUserId());
			/*List<UserInfo> resultList1 = new ArrayList<UserInfo>();
			List<UserBean> resultList = new ArrayList<UserBean>();
			     
			resultList1=template.loadAll(UserInfo.class);*/  
			  //  return list;  
			//session.close();
			/*for(UserInfo userInfo:resultList1) {
				System.out.println("For each....");
				UserBean userBeans = new UserBean();
				userBeans.setUserId(us	erInfo.getUserId());
				userBeans.setPassword(userInfo.getPassword());
				resultList.add(userBeans);
			}*/
			return resultList;
	}
}
