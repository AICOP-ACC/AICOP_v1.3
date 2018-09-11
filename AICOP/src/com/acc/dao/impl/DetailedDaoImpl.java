package com.acc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.AICOPConfigBean;
import com.acc.bean.AICOPDetailsBean;
import com.acc.bean.RfcDetailsBean;
import com.acc.common.impl.ConnectSplunkServer;
//import com.acc.bean.AICOPDetailsBean;
import com.acc.dao.DetailedDao;

@Repository
@Transactional
public class DetailedDaoImpl implements DetailedDao
{
	
	private static SessionFactory sessionFactory ;
	 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	
	
	@Override
	public List<AICOPConfigBean> getDetailedDaoResult() 
	{
		 List<AICOPConfigBean> list = new ArrayList<AICOPConfigBean>();
		
		
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
			/*queryBuffer.append("select id,code,threshold from aicop_precheck_details");*/
			queryBuffer.append("select * from aicop_precheck_details");
			System.out.println(queryBuffer.toString());
			
			Session session = sessionFactory.openSession();
			Query qr = session.createSQLQuery(queryBuffer.toString())
						.addScalar("id", StandardBasicTypes.INTEGER)
						.addScalar("code", StandardBasicTypes.STRING)
						.addScalar("threshold", StandardBasicTypes.STRING);
			
			AICOPDetailsBean aicopbean  = new AICOPDetailsBean();
			
			List<Object[]> resultList = qr.list();
			for(Object[] obj : resultList)
			{
				aicopbean.setId(Integer.parseInt(obj[0].toString()));
				aicopbean.setCode(obj[1].toString());
				aicopbean.setThreshold(obj[2].toString());
				
				int thresholdval = Integer.parseInt(aicopbean.getThreshold());
				
				System.out.println("aicopbean.getCode() " + aicopbean.getCode());
				System.out.println("thresholdval -- " + thresholdval);
				
				Query qr1 = session.createSQLQuery("select code,min,max,active_ind,icon,description from aicop_precheck_config where code= ?");
				
				List<Object[]> aicopconf = qr1.setString(0, aicopbean.getCode()).list();
				for(Object[] obj1 : aicopconf)
				{
					AICOPConfigBean aicopconfig = new AICOPConfigBean();
					aicopconfig.setCode(obj1[0].toString());
					aicopconfig.setMin(Integer.parseInt(obj1[1].toString()));
					aicopconfig.setMax(Integer.parseInt(obj1[2].toString()));
					aicopconfig.setActiveInd(obj1[3].toString());					
					aicopconfig.setDesc(obj1[5].toString());
					
					if(thresholdval > aicopconfig.getMin() && thresholdval < aicopconfig.getMax())
					{
						aicopconfig.setIcon(obj1[4].toString());
					}
					else
					{
						aicopconfig.setIcon("fa-thumbs-down circle-icon-r icon-prechecks-danger");
					}
					
					list.add(aicopconfig);
				}
				
			}
			
			
		// TODO Auto-generated method stub
		return list;
	}
	
	//Soundariya - Detailed view RFC details ::10Sep18
	@Override
	public List<RfcDetailsBean> getRfcDetails(String applicationName){
		ConnectSplunkServer connectsplunk = new ConnectSplunkServer();
		List<RfcDetailsBean>  rfcDetailsBeanList= new ArrayList<RfcDetailsBean>(connectsplunk.getRfcDetails(applicationName));
		
		return rfcDetailsBeanList;
	}

}
