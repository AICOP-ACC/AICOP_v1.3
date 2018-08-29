package com.acc.dao.impl;



import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.SuggestedActionBean;
import com.acc.dao.TriageActionsDao;

@Repository
@Transactional
public class TriageActionsDaoImpl implements TriageActionsDao{
	
	final static Logger logger = Logger.getLogger(TriageActionsDaoImpl.class);
	
	private static SessionFactory sessionFactory ;
 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
@SuppressWarnings("unchecked")
@Override
public List<SuggestedActionBean> getSuggestedActions() {
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
	    	queryBuffer.append("SELECT action_id as \"actionId\",");
	    	queryBuffer.append(" action_desc as \"actionDesc\",");
	    	queryBuffer.append(" app_owner as \"appOwner\",");
	    	queryBuffer.append(" dependency as \"dependency\",");
	    	queryBuffer.append(" occurrences as \"occurrences\",");
	    	queryBuffer.append(" success_percentage as \"successPercentage\",");
	    	queryBuffer.append(" expected_duration as \"expectedDuration\",");
	    	queryBuffer.append(" lasted_updated_dt as \"lastedUpdatedDt\"");
	    	queryBuffer.append(" FROM auto_suggested_actions");
	    	queryBuffer.append(" ORDER BY action_id");
	    	//TODO - retrieval logic based on incident category
	    	//queryBuffer.append(" WHERE INCIDENT_CATEGORY = :incidentCategory");
	    	
	    	Session session = sessionFactory.openSession();
			
			Query qr = session.createSQLQuery(queryBuffer.toString())
					.addScalar("actionId",StandardBasicTypes.STRING)
					.addScalar("actionDesc",StandardBasicTypes.STRING)
					.addScalar("appOwner",StandardBasicTypes.STRING)
					.addScalar("dependency",StandardBasicTypes.STRING)
					.addScalar("occurrences",StandardBasicTypes.STRING)
					.addScalar("successPercentage",StandardBasicTypes.STRING)
					.addScalar("expectedDuration",StandardBasicTypes.STRING)
					.addScalar("lastedUpdatedDt",StandardBasicTypes.STRING)
					.setResultTransformer(new AliasToBeanResultTransformer(SuggestedActionBean.class));
			List<SuggestedActionBean> resultList = qr.list();
			logger.debug("List size -->"+resultList.size());
			session.close();
		 
		return resultList;
	}

@SuppressWarnings("unchecked")
@Override
public List<SuggestedActionBean> getActionDetailsForId(String actionId) {
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
    	queryBuffer.append("SELECT action_id as \"actionId\",");
    	queryBuffer.append(" action_desc as \"actionDesc\",");
    	queryBuffer.append(" app_owner as \"appOwner\",");
    	queryBuffer.append(" dependency as \"dependency\",");
    	queryBuffer.append(" occurrences as \"occurrences\",");
    	queryBuffer.append(" success_percentage as \"successPercentage\",");
    	queryBuffer.append(" expected_duration as \"expectedDuration\",");
    	queryBuffer.append(" lasted_updated_dt as \"lastedUpdatedDt\"");
    	queryBuffer.append(" FROM auto_suggested_actions");
    	queryBuffer.append(" WHERE action_id = :actionId");
    	
    	Session session = sessionFactory.openSession();
		
		Query qr = session.createSQLQuery(queryBuffer.toString())
				.addScalar("actionId",StandardBasicTypes.STRING)
				.addScalar("actionDesc",StandardBasicTypes.STRING)
				.addScalar("appOwner",StandardBasicTypes.STRING)
				.addScalar("dependency",StandardBasicTypes.STRING)
				.addScalar("occurrences",StandardBasicTypes.STRING)
				.addScalar("successPercentage",StandardBasicTypes.STRING)
				.addScalar("expectedDuration",StandardBasicTypes.STRING)
				.addScalar("lastedUpdatedDt",StandardBasicTypes.STRING)
				.setParameter("actionId", actionId)
				.setResultTransformer(new AliasToBeanResultTransformer(SuggestedActionBean.class));
		List<SuggestedActionBean> resultList = qr.list();
		logger.debug("List size for actionID-->"+resultList.size());
		session.close();
	return resultList;
}



@SuppressWarnings("unchecked")
private List<SuggestedActionBean> getManualActionDetailsForId(String actionId) {
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
    	queryBuffer.append("SELECT action_id as \"actionId\",");
    	queryBuffer.append(" action_desc as \"actionDesc\",");
    	queryBuffer.append(" app_owner as \"appOwner\",");
    	queryBuffer.append(" dependency as \"dependency\"");
    	queryBuffer.append(" FROM manual_actions");
    	queryBuffer.append(" WHERE action_id = :actionId");
    	
    	Session session = sessionFactory.openSession();
		
		Query qr = session.createSQLQuery(queryBuffer.toString())
				.addScalar("actionId",StandardBasicTypes.STRING)
				.addScalar("actionDesc",StandardBasicTypes.STRING)
				.addScalar("appOwner",StandardBasicTypes.STRING)
				.addScalar("dependency",StandardBasicTypes.STRING)
				.setParameter("actionId", actionId)
				.setResultTransformer(new AliasToBeanResultTransformer(SuggestedActionBean.class));
		List<SuggestedActionBean> resultList = qr.list();
		logger.debug("List size for actionID-->"+resultList.size());
		session.close();
	return resultList;
}


@Override
public boolean saveAction(ManualActionsBean manualActionsBean) {
	List<SuggestedActionBean> resultList  = getManualActionDetailsForId(manualActionsBean.getActionId());
	System.out.println("resultList Size -->"+resultList.size()+"--Action No: "+manualActionsBean.getActionId());
	
	
	if(resultList.size()==0) {
		try {
	        
	        Configuration configuration = new Configuration();
		    configuration.configure("hbm.cfg.xml");
		    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
		    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		       
		}
		catch (Throwable ex) {
		    throw new ExceptionInInitializerError(ex);
		}
			
	    
	    	StringBuilder queryBuffer = new StringBuilder();
	    	
	    	queryBuffer.append("insert into manual_actions");
	    	queryBuffer.append(" values(:incidentId,:actionNo,:actionDesc,:appOwner,:dependency,:expectedDuration,:actionStatus,:startTime,:endTime,:actualDuration,:actionOutcome)");
	    	Session session = sessionFactory.openSession();
			
	    	
	    	

	    	Transaction tx = session.beginTransaction();
	    	
	    	
	    	
	    	
	    	
			Query qr = session.createSQLQuery(queryBuffer.toString())
					//TODO map with dynamic incident ID
					//.setParameter("incidentId", manualActionsBean.getIncidentId())
					.setParameter("incidentId", "1801040252")
					.setParameter("actionNo", manualActionsBean.getActionId())
					.setParameter("actionDesc", manualActionsBean.getActionDesc())
					.setParameter("appOwner", manualActionsBean.getAppOwner())
					.setParameter("dependency", manualActionsBean.getDependency())
					.setParameter("expectedDuration", manualActionsBean.getExpectedDuration())
					.setParameter("actionStatus", manualActionsBean.getStatus())
					.setParameter("startTime", manualActionsBean.getStartTime())
					.setParameter("endTime", manualActionsBean.getEndTime())
					.setParameter("actualDuration", manualActionsBean.getActualDuration())
					.setParameter("actionOutcome", manualActionsBean.getOutcome());
			
			int rowInserted = qr.executeUpdate();
			tx.commit();
			session.close();
	    	if(rowInserted>0) {
	    		return true;
	    	}
	}
	return false;
}

@SuppressWarnings("unchecked")
@Override
public List<ManualActionsBean> getManualActions() {
try {
        
        Configuration configuration = new Configuration();
       
	    configuration.configure("hbm.cfg.xml");
	    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	       
	}
	catch (Throwable ex) {
	    throw new ExceptionInInitializerError(ex);
	}
		
    
    	StringBuilder queryBuffer = new StringBuilder();
    	queryBuffer.append("SELECT action_id as \"actionId\",");
    	queryBuffer.append(" action_desc as \"actionDesc\",");
    	queryBuffer.append(" app_owner as \"appOwner\",");
    	queryBuffer.append(" dependency as \"dependency\",");
    	queryBuffer.append(" expected_duration as \"expectedDuration\",");
    	queryBuffer.append(" action_status as \"status\",");
    	queryBuffer.append(" start_time as \"startTime\",");
    	queryBuffer.append(" end_time as \"endTime\",");
    	queryBuffer.append(" actual_duration as \"actualDuration\",");
    	queryBuffer.append(" action_outcome as \"outcome\",");
    	queryBuffer.append(" incident_id as \"incidentId\"");
    	
    	queryBuffer.append(" FROM manual_actions");
    	//TODO - To include where condition for incident_id
    	
    	Session session = sessionFactory.openSession();
		
		Query qr = session.createSQLQuery(queryBuffer.toString())
				.addScalar("actionId",StandardBasicTypes.STRING)
				.addScalar("actionDesc",StandardBasicTypes.STRING)
				.addScalar("appOwner",StandardBasicTypes.STRING)
				.addScalar("dependency",StandardBasicTypes.STRING)
				.addScalar("expectedDuration",StandardBasicTypes.STRING)
				.addScalar("status",StandardBasicTypes.STRING)
				.addScalar("startTime",StandardBasicTypes.STRING)
				.addScalar("endTime",StandardBasicTypes.STRING)
				.addScalar("actualDuration",StandardBasicTypes.STRING)
				.addScalar("outcome",StandardBasicTypes.STRING)
				.addScalar("incidentId",StandardBasicTypes.STRING)
				.setResultTransformer(new AliasToBeanResultTransformer(ManualActionsBean.class));
		List<ManualActionsBean> resultList = qr.list();
		
		session.close();
	return resultList;
	
}

@Override
public boolean removeAction(String actionId) {
	try {
        
        Configuration configuration = new Configuration();
	    configuration.configure("hbm.cfg.xml");
	    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	       
		}
	catch (Throwable ex) {
	    throw new ExceptionInInitializerError(ex);
		}
		
    
    	StringBuilder queryBuffer = new StringBuilder();
    	queryBuffer.append("delete from manual_actions");
    	queryBuffer.append(" where action_id = :actionID");
    	
    	Session session = sessionFactory.openSession();
	    Transaction tx = session.beginTransaction();
    	Query qr = session.createSQLQuery(queryBuffer.toString())
    			.setParameter("actionID", actionId);
    	
    	int rowDeleted = qr.executeUpdate();
		tx.commit();
		session.close();
		
		if(rowDeleted>0 && actionId.trim() != "1") {
			int actionIdInt = Integer.parseInt(actionId);
			updateActionIds(actionIdInt);
		}
	return false;
}

private void updateActionIds(int actionId) {
	int maxActionId = getMaxActionId("1801040252");
	logger.debug("maxActionId -->"+maxActionId);
	for(int i=actionId+1;i<=maxActionId;i++) {
		try {
	        
	        Configuration configuration = new Configuration();
		    configuration.configure("hbm.cfg.xml");
		    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
		    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		       
			}
		catch (Throwable ex) {
		    throw new ExceptionInInitializerError(ex);
			}
			
	    	StringBuilder queryBuffer = new StringBuilder();
	    	queryBuffer.append("update manual_actions");
	    	queryBuffer.append(" set action_id=:newActionId");
	    	queryBuffer.append(" where action_id = :actionID");
	    	
	    	Session session = sessionFactory.openSession();
		    Transaction tx = session.beginTransaction();
	    	Query qr = session.createSQLQuery(queryBuffer.toString())
	    			.setParameter("newActionId", i-1)
	    			.setParameter("actionID", i);
	    	
	    	int rowUpdated = qr.executeUpdate();
			tx.commit();
			session.close();
		
	}
}

@SuppressWarnings("rawtypes")
private int getMaxActionId(String incidentId) {
try {
        
        Configuration configuration = new Configuration();
	    configuration.configure("hbm.cfg.xml");
	    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	       
		}
	catch (Throwable ex) {
	    throw new ExceptionInInitializerError(ex);
		}
		
    
    	StringBuilder queryBuffer = new StringBuilder();
    	queryBuffer.append("select max(action_id) from manual_actions");
    	queryBuffer.append(" where incident_id = :incidentId");
    	
    	Session session = sessionFactory.openSession();
    	Query qr = session.createSQLQuery(queryBuffer.toString())
    			.setParameter("incidentId", incidentId);
    	
    	List maxActionIdList = qr.list();
    	session.close();
    	if(maxActionIdList.size()>0) {
    		return Integer.parseInt(maxActionIdList.get(0).toString());
    	}
    	return 0;
}
}
