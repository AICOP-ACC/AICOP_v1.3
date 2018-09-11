package com.acc.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.acc.bean.RouterInfoBean;
import com.acc.dao.NotificationDao;
import com.acc.model.Incident_Details;
import com.acc.common.impl.ConnectMySQL;
import com.acc.common.impl.ConnectSplunkServer;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class NotificationDaoImpl implements NotificationDao {

	private static SessionFactory sessionFactory ;
 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/*public void setSessionFactory(SessionFactory sessionFactory) {
		sessionFactory = sessionFactory;
	}*/
	
	@Override
	public List<Incident_Details> getNotificationData() {
		
		ConnectMySQL connectSQL = new ConnectMySQL() ;
		//String sQueryString = "SELECT incident_id,incident_desc,Impacted_app from aicop.incident_details " ;
		String sQueryString = "SELECT * from aicop.incident_details " ;
		
			List<Incident_Details> lObjs = connectSQL.executeMySqlQuery(sQueryString);
			
			/*List<String> resultList = new ArrayList() ;
			for (Object obj : lObjs)
			{
				System.out.println(obj[0].toString());
				resultList.add(obj.toString());
			}*/
			return lObjs;
	}

	@Override
	public List<Incident_Details> getAlertDataFromDB() {
		ConnectMySQL connectSQL = new ConnectMySQL() ;
		String sQueryString = "SELECT incidentDetailsId,incidentDesc,impacted_app from aicop.incident_details " ;
			
			List<Incident_Details> lObjs = connectSQL.executeMySqlQuery(sQueryString);
			
			/*List<String> resultList = new ArrayList() ;
			for (Object[] obj : lObjs)
			{
				System.out.println(obj[0].toString());
				resultList.add(obj.toString());
			}*/
			return lObjs;
	}

	@Override
	public List<Incident_Details> getGraphdata() {
		ConnectMySQL connectSQL = new ConnectMySQL() ;
		String sQueryString = " SELECT application,variation_type,count_of_incidents from incident_classifier " ;

			List<Incident_Details> lObjs  = connectSQL.executeMySqlQuery(sQueryString);
			/*List<String> resultList = new ArrayList() ;
			for (Object[] obj : lObjs)
			{
				System.out.println(obj[0].toString() + obj[1].toString() + obj[2].toString());
				resultList.add(obj.toString());
			}*/
			return lObjs;
	}

	@Override
	public List<Incident_Details> getNotificationDatafromSplunk() {
		ConnectSplunkServer connectsplunk = new ConnectSplunkServer();
		System.out.println(connectsplunk.getusername()) ;
		return connectsplunk.getSplunkNotificationData();
	}

	
	
	@Override
	public String getRouterInfo(String viewField) {
		 Configuration configuration = null;
		 ServiceRegistry serviceRegistry = null;
		 StringBuilder queryBuffer = null;
		 Map<String,String> routerMap = null;
		 String source = null;
	    try {
	        
	    	configuration = new Configuration();
	        System.out.println("configuration"+configuration);
	    configuration.configure("hbm.cfg.xml");
	    System.out.println("configuration-->"+configuration);
	     serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	    
	    System.out.println("serviceRegistry"+serviceRegistry);
	     sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	      queryBuffer = new StringBuilder();
			queryBuffer.append("SELECT source_name as \"dataSource\",view_field_name as \"viewFiledName\"");
			queryBuffer.append(" FROM ROUTER");
			queryBuffer.append(" WHERE view_field_name=:viewFiledName");
			System.out.println(queryBuffer.toString());
			Session session = sessionFactory.openSession();
		/*	UserInfo userInfo = (UserInfo) session.get(UserInfo.class,userBean.getUserId());*/
			Query qr = session.createSQLQuery(queryBuffer.toString())
					.addScalar("dataSource",StandardBasicTypes.STRING)
					.addScalar("viewFiledName",StandardBasicTypes.STRING)
					.setResultTransformer(new AliasToBeanResultTransformer(RouterInfoBean.class))
					.setParameter("viewFiledName", viewField);;
			
			List<RouterInfoBean> resultList = qr.list();
			routerMap = new HashMap<String,String>();
		
		for(RouterInfoBean routerInfoBean : resultList) {
			routerMap.put(routerInfoBean.getViewFiledName(), routerInfoBean.getDataSource());
			if(viewField.equals(routerInfoBean.getViewFiledName())) {
				source = routerInfoBean.getDataSource();
			}
		}
	       // return sessionFactory;
	}
	catch (Throwable ex) {
	   //logger.error("Initial SessionFactory creation failed." + ex);
	    throw new ExceptionInInitializerError(ex);
	}
		
			return source;
	}

	@Override
	public Map<String,String> getMajorTrendSplunk() {
		ConnectSplunkServer connectsplunk = new ConnectSplunkServer();
		System.out.println(connectsplunk.getusername()) ;
		return connectsplunk.getSplunkMajorIncidentData();
	}

	@Override
	public String getApps() {
		 Configuration configuration = null;
		 ServiceRegistry serviceRegistry = null;
		 StringBuilder queryBuffer = null;
		 Map<String,String> routerMap = null;
		 String source = null;
	    try {
	        
	    	configuration = new Configuration();
	        System.out.println("configuration"+configuration);
	    configuration.configure("hbm.cfg.xml");
	    System.out.println("configuration-->"+configuration);
	     serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	    
	    System.out.println("serviceRegistry"+serviceRegistry);
	     sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	      queryBuffer = new StringBuilder();
			queryBuffer.append("Select * from aicop_apps");
			
			System.out.println(queryBuffer.toString());
			Session session = sessionFactory.openSession();
		/*	UserInfo userInfo = (UserInfo) session.get(UserInfo.class,userBean.getUserId());*/
			Query qr = session.createSQLQuery(queryBuffer.toString());
					
			
			String resultList = qr.list().toString();
			System.out.println("result set "+resultList);
			routerMap = new HashMap<String,String>();
	/*	
		for(RouterInfoBean routerInfoBean : resultList) {
			routerMap.put(routerInfoBean.getViewFiledName(), routerInfoBean.getDataSource());
			if(viewField.equals(routerInfoBean.getViewFiledName())) {
				source = routerInfoBean.getDataSource();
			}
		}*/
			session.close();
			return resultList;
	}
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    	return null;
	    	
	    }
}
// kvp code	
	@Override
	public List<HashMap<String,String>> getDetailBtnDao(String inputDetail) {
		ConnectSplunkServer connectsplunk = new ConnectSplunkServer();
		System.out.println(connectsplunk.getusername());
		return connectsplunk.getSplunkDetailButtonsList(inputDetail);
	}
	
	@Override
	public List<HashMap<String,String>> getAlertsBtnDao(String name, String pattern) {
		ConnectSplunkServer connectsplunk = new ConnectSplunkServer();
		System.out.println(connectsplunk.getusername());
		return connectsplunk.getAlertsDetailList(name, pattern);
	}

	@Override
	public Map<String, String> getAppHealthDet() {
		ConnectSplunkServer connectsplunk = new ConnectSplunkServer();
		System.out.println(connectsplunk.getusername()) ;
		return connectsplunk.getSplunkAppHealth();
	}
}